<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="es" lang="es" dir="ltr">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="icon" href="./favicon.ico" type="image/x-icon" />
    <link rel="shortcut icon" href="./favicon.ico" type="image/x-icon" />
    <title>phpMyAdmin</title>
    <link rel="stylesheet" type="text/css" href="phpmyadmin.css.php?server=1&amp;token=bc373aa9f42e17ec113238434e95eb37&amp;js_frame=right&amp;nocache=5280574014" />
    <link rel="stylesheet" type="text/css" href="print.css" media="print" />
    <link rel="stylesheet" type="text/css" href="./themes/pmahomme/jquery/jquery-ui-1.8.custom.css" />
    <meta name="robots" content="noindex,nofollow" />
<script src="./js/cross_framing_protection.js?ts=1316000894" type="text/javascript"></script>
<script src="./js/jquery/jquery-1.4.4.js?ts=1316000894" type="text/javascript"></script>
<script src="./js/update-location.js?ts=1316000894" type="text/javascript"></script>
<script src="./js/functions.js?ts=1316000894" type="text/javascript"></script>
<script src="./js/jquery/jquery.qtip-1.0.0.min.js?ts=1316000894" type="text/javascript"></script>
<script src="./js/messages.php?lang=es&amp;db=rendimiento&amp;token=bc373aa9f42e17ec113238434e95eb37" type="text/javascript"></script>
<script type="text/javascript">
// <![CDATA[
// Updates the title of the frameset if possible (ns4 does not allow this)
if (typeof(parent.document) != 'undefined' && typeof(parent.document) != 'unknown'
    && typeof(parent.document.title) == 'string') {
    parent.document.title = 'localhost / localhost / rendimiento | phpMyAdmin 3.4.5';
}

// ]]>
</script>
        <meta name="OBGZip" content="true" />
                <!--[if IE 6]>
        <style type="text/css">
        /* <![CDATA[ */
        html {
            overflow-y: scroll;
        }
        /* ]]> */
        </style>
        <![endif]-->
    </head>

    <body>
        <div id="serverinfo">
<a href="main.php?token=bc373aa9f42e17ec113238434e95eb37" class="item">        <img class="icon" src="./themes/pmahomme/img/s_host.png" width="16" height="16" alt="" /> 
localhost</a>
        <span class="separator"><img class="icon" src="./themes/pmahomme/img/item_ltr.png" width="5" height="9" alt="-" /></span>
<a href="db_structure.php?db=rendimiento&amp;token=bc373aa9f42e17ec113238434e95eb37" class="item">        <img class="icon" src="./themes/pmahomme/img/s_db.png" width="16" height="16" alt="" /> 
rendimiento</a>
</div>
<!-- PMA-SQL-ERROR -->
    <div class="error"><h1>Error</h1>
    <p><strong>consulta SQL:</strong>
<a href="db_sql.php??sql_query=SET+time_zone+%3D+%22%2B00%3A00%22&amp;show_query=1&amp;db=rendimiento&amp;token=bc373aa9f42e17ec113238434e95eb37"><span class="nowrap"><img src="./themes/pmahomme/img/b_edit.png" title="Editar" alt="Editar" class="icon" width="16" height="16" /> Editar</span></a>    </p>
    <p>
        <span class="syntax"><span class="inner_sql"><a href="./url.php?url=http%3A%2F%2Fdev.mysql.com%2Fdoc%2Frefman%2F5.5%2Fen%2Fset.html&amp;token=bc373aa9f42e17ec113238434e95eb37" target="mysql_doc"><span class="syntax_alpha syntax_alpha_reservedWord">SET</span></a> <span class="syntax_alpha syntax_alpha_identifier">time_zone</span> <span class="syntax_punct">=</span>  <span class="syntax_quote syntax_quote_double">&quot;+00:00&quot;</span></span></span>
    </p>
<p>
    <strong>MySQL ha dicho: </strong><a href="./url.php?url=http%3A%2F%2Fdev.mysql.com%2Fdoc%2Frefman%2F5.5%2Fen%2Ferror-messages-server.html&amp;token=bc373aa9f42e17ec113238434e95eb37" target="mysql_doc"><img class="icon" src="./themes/pmahomme/img/b_help.png" width="11" height="11" alt="Documentación" title="Documentación" /></a>
</p>
<code>
#1298 - Unknown or incorrect time zone: '+00:00'
</code><br />
</div><script type="text/javascript">
//<![CDATA[
$(document).ready(function(){
// updates current settings
if (window.parent.setAll) {
    window.parent.setAll('es', 'utf32_spanish_ci', '1', 'rendimiento', '', 'bc373aa9f42e17ec113238434e95eb37');
}
    // set current db, table and sql query in the querywindow
if (window.parent.reload_querywindow) {
    window.parent.reload_querywindow(
        'rendimiento',
        '',
        '');
}
    
if (window.parent.frame_content) {
    // reset content frame name, as querywindow needs to set a unique name
    // before submitting form data, and navigation frame needs the original name
    if (typeof(window.parent.frame_content.name) != 'undefined'
     && window.parent.frame_content.name != 'frame_content') {
        window.parent.frame_content.name = 'frame_content';
    }
    if (typeof(window.parent.frame_content.id) != 'undefined'
     && window.parent.frame_content.id != 'frame_content') {
        window.parent.frame_content.id = 'frame_content';
    }
    //window.parent.frame_content.setAttribute('name', 'frame_content');
    //window.parent.frame_content.setAttribute('id', 'frame_content');
}
});

//]]>
</script>
</body>
</html>
