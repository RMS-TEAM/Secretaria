/*
  returns the perc of the values in a distribution 

  input parameters:
  data (real)
  number of decimals in result (int, optional)

  output:
  perc value of the distribution (real)

  registering the function:
  CREATE AGGREGATE FUNCTION perc RETURNS REAL SONAME 'udf_perc.so';

  getting rid of the function:
  DROP FUNCTION perc;

  04/15/2009 
       - added percentile, an optional third parameter perc function
       - default percentile is 50 (for the standard perc)
*/


#ifdef STANDARD
#include <stdio.h>
#include <string.h>
#ifdef __WIN__
typedef unsigned __int64 ulonglong;	
typedef __int64 longlong;
#else
typedef unsigned long long ulonglong;
typedef long long longlong;
#endif /*__WIN__*/
#else
#include <my_global.h>
#include <my_sys.h>
#endif
#include <mysql.h>
#include <m_ctype.h>
#include <m_string.h>		

/*#ifdef HAVE_DLOPEN*/


#define BUFFERSIZE 1024	



extern "C" {
my_bool perc_init( UDF_INIT* initid, UDF_ARGS* args, char* message );
void perc_deinit( UDF_INIT* initid );
void perc_reset( UDF_INIT* initid, UDF_ARGS* args, char* is_null, char *error );
void perc_clear( UDF_INIT* initid, char* is_null, char *error );
void perc_add( UDF_INIT* initid, UDF_ARGS* args, char* is_null, char *error );
double perc( UDF_INIT* initid, UDF_ARGS* args, char* is_null, char *error );
}


struct perc_data
{
  unsigned long count;
  unsigned long abscount;
  unsigned long pages;
  unsigned long percentile;
  double *values;
};


my_bool perc_init( UDF_INIT* initid, UDF_ARGS* args, char* message )
{
  if (args->arg_count < 1 || args->arg_count>3)
  {
    strcpy(message,"wrong number of arguments: perc() requires one or two arguments");
    return 1;
  }

  if (args->arg_type[0]!=REAL_RESULT)
  {
    /* strcpy(message,"perc() requires a real as parameter 1");
       return 1; */
    args->arg_type[0] = REAL_RESULT;
  }

  if (args->arg_count>1 && (args->arg_type[1]!=INT_RESULT))
  {
    strcpy(message,"perc() requires an int as parameter 2");
    return 1;
  }

  initid->decimals=2;
  if (args->arg_count==2 && (*((ulong*)args->args[1])<=16))
  {
    initid->decimals=*((ulong*)args->args[1]);
  }

  /* Default perc percentage is 50% */
  unsigned long percentile=50;
  if (args->arg_count==3 && (*((ulong*)args->args[2])>=0) && (*((ulong*)args->args[2])<=100))
  {
    percentile=*((ulong*)args->args[2]);
  }


  perc_data *buffer = new perc_data;
  buffer->count = 0;
  buffer->abscount=0;
  buffer->pages = 1;
  buffer->values = NULL;
  buffer->percentile=percentile;

  initid->maybe_null	= 1;
  initid->max_length	= 32;
  initid->ptr = (char*)buffer;

  return 0;
}


void perc_deinit( UDF_INIT* initid )
{
  perc_data *buffer = (perc_data*)initid->ptr;

  if (buffer->values != NULL)
  {
    free(buffer->values);
    buffer->values=NULL;
  }
  delete initid->ptr;
}



void perc_reset( UDF_INIT* initid, UDF_ARGS* args, char* is_null, char* is_error )
{
  perc_clear(initid, is_null, is_error);
  perc_add( initid, args, is_null, is_error );
}

void perc_clear( UDF_INIT* initid, char* is_null, char* is_error )
{
  perc_data *buffer = (perc_data*)initid->ptr;
  buffer->count = 0;
  buffer->abscount=0;
  buffer->pages = 1;
  *is_null = 0;
  *is_error = 0;

  if (buffer->values != NULL)
  {
    free(buffer->values);
    buffer->values=NULL;
  }

  buffer->values=(double *) malloc(BUFFERSIZE*sizeof(double));

}

void perc_add( UDF_INIT* initid, UDF_ARGS* args, char* is_null, char* is_error )
{
  if (args->args[0]!=NULL)
  {
    perc_data *buffer = (perc_data*)initid->ptr;
    if (buffer->count>=BUFFERSIZE)
    {
      buffer->pages++;
      buffer->count=0;
      buffer->values=(double *) realloc(buffer->values,BUFFERSIZE*buffer->pages*sizeof(double));
    }
    buffer->values[buffer->abscount++] = *((double*)args->args[0]);
    buffer->count++;
  }
}



int
compare_doubles (const void *a, const void *b)
{
  const double *da = (const double *) a;
  const double *db = (const double *) b;

  return (*da > *db) - (*da < *db);
}


double perc( UDF_INIT* initid, UDF_ARGS* args, char* is_null, char* is_error )
{
  perc_data* buffer = (perc_data*)initid->ptr;

  if (buffer->abscount==0 || *is_error!=0)
  {
    *is_null = 1;
    return 0.0;
  }

  *is_null=0;
  if (buffer->abscount==1)
  {
    return buffer->values[0];
  }

  qsort(buffer->values,buffer->abscount,sizeof(double),compare_doubles);

  unsigned long bufindex = (ulong) ((((double)buffer->abscount - 1.0) * (double)buffer->percentile) / 100.0);
  return buffer->values[bufindex];
}

/* #endif */

