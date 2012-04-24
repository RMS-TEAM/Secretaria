enum states {
GET_NEXTARG,
GET_MAXERRORS,
GET_FORMATFILE,
GET_ERRORFILE,
GET_FIRSTROW,
GET_LASTROW,
GET_BATCHSIZE,
GET_FIELDTERM,
GET_ROWTERM,
GET_USER,
GET_PASS,
GET_INTERFACESFILE,
GET_SERVER,
GET_DISPLAYCHARSET,
GET_DATAFILECHARSET,
GET_LANGUAGE,
GET_PACKETSIZE,
GET_CLIENTCHARSET,
GET_TESTSIZE,
GET_SYBASEDIR,
GET_FROMLABEL,
GET_TOLABEL
};

typedef struct pd {
char *dbobject;
char  dbdirection[4];
char  hostfilename  [FILENAME_MAX + 1];
char  formatfile    [FILENAME_MAX + 1];
char  errorfile     [FILENAME_MAX + 1];
char  interfacesfile[FILENAME_MAX + 1];
int   firstrow    ;
int   lastrow     ;
int   batchsize   ;
int   maxerrors   ;
char *fieldterm;
char *rowterm;
char *user;
char *pass;
char *server;
int   mflag;
int   fflag;
int   eflag;
int   Fflag;
int   Lflag;
int   bflag;
int   nflag;
int   cflag;
int   tflag;
int   rflag;
int   Uflag;
int   Iflag;
int   Sflag;
int   Pflag;
} PARAMDATA;

