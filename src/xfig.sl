$1 = 0; $2 = 1; $3 = 1;
variable _xfig_version = $1*10000 + $2*100 + $3;
variable _xfig_version_string = "$1.$2.$3"$;

()=evalfile ("xfig/core");
()=evalfile ("xfig/polyline");
()=evalfile ("xfig/ellipse");
()=evalfile ("xfig/text");
()=evalfile ("xfig/latex.sl");
()=evalfile ("xfig/objects");
()=evalfile ("xfig/png.sl");
()=evalfile ("xfig/clip.sl");
()=evalfile ("xfig/plot.sl");
$1 = getenv ("HOME");
if ($1 != NULL)
{
   $1 = path_concat ($1, ".slxfigrc");
   if (NULL != stat_file ($1))
     {
	() = evalfile ($1);
     }
}

$1 = path_concat (path_concat (path_dirname (__FILE__), "help"), "slxfig.hlp");
if (NULL != stat_file ($1))
    add_doc_file ($1);

provide ("xfig");
