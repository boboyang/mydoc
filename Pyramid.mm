<map version="0.9.0">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node COLOR="#000000" CREATED="1322875986124" ID="ID_1998931582" MODIFIED="1322963266847" STYLE="fork" TEXT="Pyramid">
<font NAME="Dialog" SIZE="20"/>
<hook NAME="accessories/plugins/AutomaticLayout.properties"/>
<node COLOR="#0033ff" CREATED="1324573777561" ID="ID_989984349" MODIFIED="1324607551569" POSITION="right" TEXT="URL Dispatch route">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<font NAME="Dialog" SIZE="18"/>
<node COLOR="#00b439" CREATED="1322886139682" ID="ID_913706982" MODIFIED="1324576153549" TEXT="config.">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Dialog" SIZE="16"/>
<node COLOR="#990000" CREATED="1324575988381" ID="ID_446029751" MODIFIED="1324605005265" TEXT="root_factory">
<font NAME="Dialog" SIZE="14"/>
<node COLOR="#111111" CREATED="1324575771980" ID="ID_934270246" MODIFIED="1324576026899" TEXT="__acl__">
<font NAME="Dialog" SIZE="12"/>
<node COLOR="#111111" CREATED="1324575767925" ID="ID_923020976" MODIFIED="1324575806753" TEXT="resource object">
<font NAME="Dialog" SIZE="12"/>
</node>
<node COLOR="#111111" CREATED="1324575793548" ID="ID_1577558381" MODIFIED="1324575807911" TEXT="for Security">
<font NAME="Dialog" SIZE="12"/>
</node>
</node>
</node>
<node COLOR="#990000" CREATED="1322886141182" ID="ID_1688985538" MODIFIED="1324605005268" TEXT="add_route">
<font NAME="Dialog" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1324576068590" ID="ID_797534905" MODIFIED="1324605005269" TEXT=".include">
<font NAME="Dialog" SIZE="14"/>
<node COLOR="#111111" CREATED="1324576063806" ID="ID_270877437" MODIFIED="1324576068157" TEXT="route_prefix">
<font NAME="Dialog" SIZE="12"/>
</node>
</node>
<node COLOR="#990000" CREATED="1322886148511" ID="ID_1521178242" MODIFIED="1324605005270" TEXT="scan">
<font NAME="Dialog" SIZE="14"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1324573782270" ID="ID_1928969169" MODIFIED="1324576153615" TEXT="syntax">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Dialog" SIZE="16"/>
<node COLOR="#990000" CREATED="1324573786142" ID="ID_615370784" MODIFIED="1324605005273" TEXT="replacement marker {}">
<font NAME="Dialog" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1324573917791" ID="ID_120213820" MODIFIED="1324605005274" TEXT="matchdict ">
<font NAME="Dialog" SIZE="14"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1324574370194" ID="ID_262088207" MODIFIED="1324607562571" TEXT="append_slash_notfound_view">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Dialog" SIZE="16"/>
<node COLOR="#990000" CREATED="1324574380914" ID="ID_257662356" MODIFIED="1324605005277" TEXT="config.add_view">
<font NAME="Dialog" SIZE="14"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1324574622724" ID="ID_1013538706" MODIFIED="1324607833617" TEXT="debug_routematch">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Dialog" SIZE="16"/>
<node COLOR="#990000" CREATED="1324574638996" ID="ID_579542346" MODIFIED="1324605005279" TEXT=".ini">
<font NAME="Dialog" SIZE="14"/>
</node>
</node>
</node>
<node COLOR="#0033ff" CREATED="1322879265621" FOLDED="true" ID="ID_993267739" MODIFIED="1324232410805" POSITION="left" TEXT="install Pyramid">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<font NAME="Dialog" SIZE="18"/>
<node COLOR="#00b439" CREATED="1322876292084" ID="ID_339158593" MODIFIED="1322880347848">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      sudo easy_install virtualenv<br />virtualenv --no-site-packages env<br />cd env<br />bin/easy_install pyramid<br />
    </p>
  </body>
</html></richcontent>
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Dialog" SIZE="16"/>
</node>
</node>
<node COLOR="#0033ff" CREATED="1322880584400" FOLDED="true" ID="ID_809994820" MODIFIED="1324232411902" POSITION="left" TEXT="helloworld">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<font NAME="Dialog" SIZE="18"/>
<node COLOR="#00b439" CREATED="1322880601327" ID="ID_52415370" MODIFIED="1322880601968" TEXT="View Callable Declarations">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Dialog" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1322880602351" ID="ID_1501915883" MODIFIED="1322881335519" TEXT="Application Configuration">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Dialog" SIZE="16"/>
<node COLOR="#990000" CREATED="1322881338571" ID="ID_63112426" MODIFIED="1324605005286" TEXT="imperative">
<font NAME="Dialog" SIZE="14"/>
<node COLOR="#111111" CREATED="1322880735668" ID="ID_248423830" MODIFIED="1322881358812" TEXT="config = Configurator()">
<font NAME="Dialog" SIZE="12"/>
</node>
<node COLOR="#111111" CREATED="1322880628785" ID="ID_744344126" MODIFIED="1322881360100" TEXT="add_route">
<font NAME="Dialog" SIZE="12"/>
</node>
<node COLOR="#111111" CREATED="1322880629888" ID="ID_1447650222" MODIFIED="1322881361272" TEXT="add_view">
<font NAME="Dialog" SIZE="12"/>
</node>
</node>
<node COLOR="#990000" CREATED="1322881344567" ID="ID_611751805" MODIFIED="1324605005289" TEXT="declarative">
<font NAME="Dialog" SIZE="14"/>
<node COLOR="#111111" CREATED="1322881403113" ID="ID_697720129" MODIFIED="1322881403775" TEXT="@view_config">
<font NAME="Dialog" SIZE="12"/>
</node>
</node>
</node>
<node COLOR="#00b439" CREATED="1322880612688" ID="ID_856808747" MODIFIED="1322880665086" TEXT="WSGI Application Creation">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Dialog" SIZE="16"/>
<node COLOR="#990000" CREATED="1322880725859" ID="ID_1055550877" MODIFIED="1324605005291" TEXT="app = config.make_wsgi_app()">
<font NAME="Dialog" SIZE="14"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1322880673314" ID="ID_586740916" MODIFIED="1322880674023" TEXT="WSGI Application Serving">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Dialog" SIZE="16"/>
<node COLOR="#990000" CREATED="1322880709715" ID="ID_550304534" MODIFIED="1324605005292" TEXT="serve(app, host=&apos;0.0.0.0&apos;)">
<font NAME="Dialog" SIZE="14"/>
</node>
</node>
</node>
<node COLOR="#0033ff" CREATED="1322879296870" FOLDED="true" ID="ID_836576627" MODIFIED="1324232412614" POSITION="left" TEXT="create app">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<font NAME="Dialog" SIZE="18"/>
<node COLOR="#00b439" CREATED="1322876463853" ID="ID_699661538" MODIFIED="1322880347863" TEXT="create using Scaffolds">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Dialog" SIZE="16"/>
<node COLOR="#990000" CREATED="1322876350265" ID="ID_1853218400" MODIFIED="1324605005295" TEXT="bin/paster create -t pyramid_starter">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Dialog" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1322878081632" ID="ID_158229779" MODIFIED="1324605005296" TEXT="bin/paster create -t pyramid_routesalchemy">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Dialog" SIZE="14"/>
<node COLOR="#111111" CREATED="1322878181755" ID="ID_23182141" MODIFIED="1322880347872" TEXT="csp">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Dialog" SIZE="12"/>
</node>
</node>
<node COLOR="#990000" CREATED="1322879308167" ID="ID_901932932" MODIFIED="1324605005297" TEXT="...">
<font NAME="Dialog" SIZE="14"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1322878797414" ID="ID_762850829" MODIFIED="1322880347891" TEXT="install">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Dialog" SIZE="16"/>
<node COLOR="#990000" CREATED="1322878208004" ID="ID_65840655" MODIFIED="1324605005299" TEXT="cd csp&#xa;../bin/python setup.py develop">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Dialog" SIZE="14"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1322878806072" ID="ID_1702886754" MODIFIED="1322880347900" TEXT="run test">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Dialog" SIZE="16"/>
<node COLOR="#990000" CREATED="1322878744469" ID="ID_830287633" MODIFIED="1324605005300" TEXT="../bin/python setup.py test -q">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Dialog" SIZE="14"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1322878834376" ID="ID_1399755132" MODIFIED="1322880347908" TEXT="run app">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Dialog" SIZE="16"/>
<node COLOR="#990000" CREATED="1322878837880" ID="ID_1975922248" MODIFIED="1324605005302" TEXT="../bin/paster serve development.ini">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Dialog" SIZE="14"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1322879036627" ID="ID_729289135" MODIFIED="1322880347918" TEXT="The Debug Toolbar">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Dialog" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1322879086816" FOLDED="true" ID="ID_1524814856" MODIFIED="1324232387630" TEXT="The Project Structure">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Dialog" SIZE="16"/>
<node COLOR="#990000" CREATED="1322879131681" ID="ID_345474556" MODIFIED="1324605005305" TEXT="development.ini">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Dialog" SIZE="14"/>
<node COLOR="#111111" CREATED="1322879596736" ID="ID_1974284822" MODIFIED="1322880347925" TEXT="db">
<font NAME="Dialog" SIZE="12"/>
<node COLOR="#111111" CREATED="1322879820412" ID="ID_100155416" MODIFIED="1322880347930" TEXT="mysql">
<font NAME="Dialog" SIZE="12"/>
<node COLOR="#111111" CREATED="1322879592004" ID="ID_1970574107" MODIFIED="1322880347932" TEXT="sqlalchemy.localdb.url">
<font NAME="Dialog" SIZE="12"/>
<node COLOR="#111111" CREATED="1322879756926" ID="ID_1357595849" MODIFIED="1322880347935" TEXT="mysql://root@127.0.0.1/csp_development">
<font NAME="Dialog" SIZE="12"/>
</node>
</node>
<node COLOR="#111111" CREATED="1322879742360" ID="ID_118530462" MODIFIED="1322880347938" TEXT="sqlalchemy.globaldb.url">
<font NAME="Dialog" SIZE="12"/>
</node>
</node>
<node COLOR="#111111" CREATED="1322879824535" ID="ID_1012877226" MODIFIED="1322880347939" TEXT="sqlite">
<font NAME="Dialog" SIZE="12"/>
</node>
</node>
<node COLOR="#111111" CREATED="1322879850927" ID="ID_1540596907" MODIFIED="1322880347940" TEXT="redis">
<font NAME="Dialog" SIZE="12"/>
</node>
<node COLOR="#111111" CREATED="1322879852456" ID="ID_1459687644" MODIFIED="1322880347952" TEXT="cspservice">
<font NAME="Dialog" SIZE="12"/>
<node COLOR="#111111" CREATED="1322879886781" ID="ID_1622379869" MODIFIED="1322880347953" TEXT="host">
<font NAME="Dialog" SIZE="12"/>
</node>
<node COLOR="#111111" CREATED="1322879888793" ID="ID_971691626" MODIFIED="1322880347955" TEXT="port">
<font NAME="Dialog" SIZE="12"/>
</node>
</node>
<node COLOR="#111111" CREATED="1322879862392" ID="ID_1964795106" MODIFIED="1322880347956" TEXT="jinja2">
<font NAME="Dialog" SIZE="12"/>
</node>
</node>
<node COLOR="#990000" CREATED="1322879133634" ID="ID_1357015410" MODIFIED="1324605005314" TEXT="product.ini">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Dialog" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1322879105680" ID="ID_1683606021" MODIFIED="1324605005315" TEXT="setup.py">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Dialog" SIZE="14"/>
<node COLOR="#111111" CREATED="1322879922623" ID="ID_727095111" MODIFIED="1322880347961" TEXT="requires">
<font NAME="Dialog" SIZE="12"/>
<node COLOR="#111111" CREATED="1322879949291" ID="ID_1851072004" MODIFIED="1322880347962" TEXT="     &apos;redis&apos;,&#xa;    &apos;pyramid_mailer&apos;,&#xa;    &apos;coverage&apos;,&#xa;    &apos;MySQL-python&apos;,&#xa;    &apos;thrift&apos;,&#xa;    &apos;pyramid_jinja2&apos;,">
<font NAME="Dialog" SIZE="12"/>
</node>
</node>
</node>
<node COLOR="#990000" CREATED="1322879104800" ID="ID_933281758" MODIFIED="1324605005316" TEXT="setup.cfg">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Dialog" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1322879155218" ID="ID_1467760149" MODIFIED="1324605005317" TEXT="project package">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Dialog" SIZE="14"/>
</node>
</node>
</node>
<node COLOR="#0033ff" CREATED="1322882448138" ID="ID_1767880717" MODIFIED="1322882452953" POSITION="right" TEXT="Views">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<font NAME="Dialog" SIZE="18"/>
<node COLOR="#00b439" CREATED="1324576215471" ID="ID_907091158" MODIFIED="1324576218560" TEXT="callable">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Dialog" SIZE="16"/>
<node COLOR="#990000" CREATED="1324576219343" ID="ID_573515187" MODIFIED="1324605005320" TEXT="function">
<font NAME="Dialog" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1324576222543" ID="ID_360257064" MODIFIED="1324605005321" TEXT="class">
<font NAME="Dialog" SIZE="14"/>
<node COLOR="#111111" CREATED="1324576236223" ID="ID_1325727219" MODIFIED="1324576236831" TEXT="__init__ ">
<font NAME="Dialog" SIZE="12"/>
</node>
<node COLOR="#111111" CREATED="1324576237295" ID="ID_377073307" MODIFIED="1324576242462" TEXT="__call__">
<font NAME="Dialog" SIZE="12"/>
</node>
</node>
</node>
<node COLOR="#00b439" CREATED="1324576295951" ID="ID_580994012" MODIFIED="1324576301344" TEXT="response">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Dialog" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1324576305599" ID="ID_1163410329" MODIFIED="1324576309214" TEXT="exception">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Dialog" SIZE="16"/>
<node COLOR="#990000" CREATED="1324576319567" ID="ID_38312694" MODIFIED="1324605005324" TEXT="raise">
<font NAME="Dialog" SIZE="14"/>
<node COLOR="#111111" CREATED="1324576336384" ID="ID_734046664" MODIFIED="1324576336976" TEXT="pyramid.httpexceptions ">
<font NAME="Dialog" SIZE="12"/>
</node>
</node>
</node>
<node COLOR="#00b439" CREATED="1324576385200" ID="ID_1743993982" MODIFIED="1324576388031" TEXT="redirect">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Dialog" SIZE="16"/>
<node COLOR="#990000" CREATED="1324576417536" ID="ID_1809014701" MODIFIED="1324605005327" TEXT="raise HTTPFound(location= &apos;XXX&apos;)">
<font NAME="Dialog" SIZE="14"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1324576469184" ID="ID_1685474483" MODIFIED="1324576480352" TEXT="request.params[&apos;XXX&apos;] ">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Dialog" SIZE="16"/>
</node>
</node>
<node COLOR="#0033ff" CREATED="1322882453610" ID="ID_247035930" MODIFIED="1322882461112" POSITION="right" TEXT="Renderers">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<font NAME="Dialog" SIZE="18"/>
<node COLOR="#00b439" CREATED="1324576551809" ID="ID_1270427757" MODIFIED="1324576555472" TEXT="built-in">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Dialog" SIZE="16"/>
<node COLOR="#990000" CREATED="1324576556401" ID="ID_563205573" MODIFIED="1324605005330" TEXT="string">
<font NAME="Dialog" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1324576557809" ID="ID_1585205441" MODIFIED="1324605005331" TEXT="json">
<font NAME="Dialog" SIZE="14"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1324576707346" ID="ID_23950680" MODIFIED="1324576708066" TEXT="request.response ">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Dialog" SIZE="16"/>
</node>
</node>
<node COLOR="#0033ff" CREATED="1322882464730" FOLDED="true" ID="ID_368236607" MODIFIED="1324577193670" POSITION="right" TEXT="Templates">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<font NAME="Dialog" SIZE="18"/>
<node COLOR="#00b439" CREATED="1324576879427" ID="ID_1645551216" MODIFIED="1324576883081" TEXT="render_to_response ">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Dialog" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1322963468818" ID="ID_1506208029" LINK="Jinja2.mm" MODIFIED="1322963468831" TEXT="Jinja2">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Dialog" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1322965611858" ID="ID_355461712" MODIFIED="1322968227798" TEXT="pyramid_jinja2">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Dialog" SIZE="16"/>
<node COLOR="#990000" CREATED="1322964699093" ID="ID_718170453" MODIFIED="1324605005337" TEXT="sudo easy_install pyramid_jinja2">
<font NAME="Dialog" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1322965617074" ID="ID_1725411703" MODIFIED="1324605005337" TEXT="setup">
<font NAME="Dialog" SIZE="14"/>
<node COLOR="#111111" CREATED="1322965633154" ID="ID_151215789" MODIFIED="1322965636530" TEXT="development.ini">
<font NAME="Dialog" SIZE="12"/>
<node COLOR="#111111" CREATED="1322965637330" ID="ID_241017089" MODIFIED="1322965638178" TEXT="config.include(&apos;pyramid_jinja2&apos;)">
<font NAME="Dialog" SIZE="12"/>
</node>
<node COLOR="#111111" CREATED="1322965684277" ID="ID_1950435961" MODIFIED="1322965685215" TEXT="jinja2.directories = yourapp:templates">
<font NAME="Dialog" SIZE="12"/>
</node>
</node>
</node>
<node COLOR="#990000" CREATED="1322965785936" ID="ID_385569467" MODIFIED="1324605005340" TEXT="Usage">
<font NAME="Dialog" SIZE="14"/>
<node COLOR="#111111" CREATED="1322966064078" ID="ID_1810758988" MODIFIED="1322966065251" TEXT="Template Lookups">
<font NAME="Dialog" SIZE="12"/>
<node COLOR="#111111" CREATED="1322967437704" ID="ID_1016129280" MODIFIED="1322967438523" TEXT="Template Inheritance">
<font NAME="Dialog" SIZE="12"/>
</node>
</node>
</node>
<node COLOR="#990000" CREATED="1322968229905" ID="ID_1928243791" MODIFIED="1324605005342" TEXT="Settings">
<font NAME="Dialog" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1322968246389" ID="ID_1100184591" MODIFIED="1324605005342" TEXT="Filters">
<font NAME="Dialog" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1322968251429" ID="ID_494610817" MODIFIED="1324605005343" TEXT="create a project">
<font NAME="Dialog" SIZE="14"/>
<node COLOR="#111111" CREATED="1322969786522" ID="ID_1018638522" MODIFIED="1322969787429" TEXT="paster create -t pyramid_jinja2_starter">
<font NAME="Dialog" SIZE="12"/>
</node>
</node>
<node COLOR="#990000" CREATED="1322968264789" ID="ID_773959945" MODIFIED="1324605005344" TEXT="more info">
<font NAME="Dialog" SIZE="14"/>
</node>
</node>
</node>
<node COLOR="#0033ff" CREATED="1322882473323" ID="ID_1642574548" MODIFIED="1322882475152" POSITION="right" TEXT="View Configuration">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<font NAME="Dialog" SIZE="18"/>
<node COLOR="#00b439" CREATED="1324577218005" ID="ID_1111051907" MODIFIED="1324577235925" TEXT="running a scan">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Dialog" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1324605069226" ID="ID_263378178" MODIFIED="1324605075360" TEXT="parameters">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<node COLOR="#990000" CREATED="1324605418273" ID="ID_848150968" MODIFIED="1324609617232" TEXT="renderer ">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1324605419890" ID="ID_1219008816" MODIFIED="1324609618860" TEXT="http_cache">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1324605729797" ID="ID_408542588" MODIFIED="1324609620262" TEXT="route_name">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1324605745890" ID="ID_162989267" MODIFIED="1324609621778" TEXT="request_method">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1324605794208" ID="ID_890646111" MODIFIED="1324609623152" TEXT="request_param">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1324608848842" ID="ID_746434344" MODIFIED="1324609623155" TEXT="=&quot;foo=123&quot;">
<font NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node COLOR="#990000" CREATED="1324609627198" ID="ID_669274208" MODIFIED="1324609631459" TEXT="match_param">
<font NAME="SansSerif" SIZE="14"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1324609641367" ID="ID_1262558082" MODIFIED="1324609660045" TEXT="multiple view_config on one func">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1324609956573" ID="ID_643133376" MODIFIED="1324609959310" TEXT="security">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
</node>
</node>
<node COLOR="#0033ff" CREATED="1322882507852" ID="ID_1446914574" MODIFIED="1322882508443" POSITION="right" TEXT="Static Assets">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<font NAME="Dialog" SIZE="18"/>
<node COLOR="#00b439" CREATED="1324610432771" ID="ID_1259495136" MODIFIED="1324610441481" TEXT="config.add_static_view">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
</node>
</node>
<node COLOR="#0033ff" CREATED="1322882515196" ID="ID_1717098631" MODIFIED="1322882516539" POSITION="right" TEXT="Request and Response Objects">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<font NAME="Dialog" SIZE="18"/>
<node COLOR="#00b439" CREATED="1324610596597" ID="ID_782443582" MODIFIED="1324610601565" TEXT="use WebOb package ">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1324610617869" ID="ID_927102673" MODIFIED="1324610618760" TEXT="Request ">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<node COLOR="#990000" CREATED="1324615418594" ID="ID_619688379" MODIFIED="1324615421415" TEXT="params">
<font NAME="SansSerif" SIZE="14"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1324615411193" ID="ID_419390311" MODIFIED="1324615414355" TEXT="Response">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
</node>
</node>
<node COLOR="#0033ff" CREATED="1322882517180" ID="ID_1331660312" MODIFIED="1322882522459" POSITION="right" TEXT="Sessions">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<font NAME="Dialog" SIZE="18"/>
<node COLOR="#00b439" CREATED="1324621144291" ID="ID_925841145" MODIFIED="1324621146465" TEXT="factory">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<node COLOR="#990000" CREATED="1324621147458" ID="ID_1025631938" MODIFIED="1324621147891" TEXT="UnencryptedCookieSessionFactoryConfig ">
<font NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1324621129848" ID="ID_1808601201" MODIFIED="1324621150100" TEXT="pyramid_beaker ">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="14"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1324621409931" ID="ID_742838976" MODIFIED="1324621420294" TEXT="using session obj">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<node COLOR="#990000" CREATED="1324621421785" ID="ID_1617832779" MODIFIED="1324621427516" TEXT="dict method">
<font NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1324621427865" ID="ID_676230010" MODIFIED="1324621431743" TEXT="new()">
<font NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1324621448346" ID="ID_831737150" MODIFIED="1324621452446" TEXT="created()">
<font NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1324621456153" ID="ID_106199263" MODIFIED="1324621462049" TEXT="changed()">
<font NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1324621432290" ID="ID_665282257" MODIFIED="1324621434841" TEXT="invalidate()">
<font NAME="SansSerif" SIZE="14"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1324621359228" ID="ID_650131897" MODIFIED="1324621384597" TEXT="session.flash(&apos;message&apos;)">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1324621349540" ID="ID_424217390" MODIFIED="1324621599615" TEXT="session.csrf_token ">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<node COLOR="#990000" CREATED="1324621618333" ID="ID_1099664467" MODIFIED="1324621625435" TEXT="get_csrf_token()">
<font NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1324621626540" ID="ID_90338912" MODIFIED="1324621641233" TEXT="new_csrf_token()">
<font NAME="SansSerif" SIZE="14"/>
</node>
</node>
</node>
<node COLOR="#0033ff" CREATED="1322882528476" ID="ID_709859064" MODIFIED="1322882529051" POSITION="right" TEXT="Using Events">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<font NAME="Dialog" SIZE="18"/>
<node COLOR="#00b439" CREATED="1324626924278" ID="ID_1254344338" MODIFIED="1324626926281" TEXT="subscriber">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
</node>
</node>
<node COLOR="#0033ff" CREATED="1322882539725" ID="ID_1254027529" MODIFIED="1322882540203" POSITION="right" TEXT="Logging">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<font NAME="Dialog" SIZE="18"/>
<node COLOR="#00b439" CREATED="1324632207892" ID="ID_666658549" MODIFIED="1324632210522" TEXT=".ini">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<node COLOR="#990000" CREATED="1324632205493" ID="ID_962816935" MODIFIED="1324632223056" TEXT="[loggers]">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1324632224060" ID="ID_101237737" MODIFIED="1324632225807" TEXT="[logger_root]"/>
<node COLOR="#111111" CREATED="1324632226157" ID="ID_529291802" MODIFIED="1324632231276" TEXT="[logger_mydlink_v3]"/>
</node>
<node COLOR="#990000" CREATED="1324632256691" ID="ID_1269328414" MODIFIED="1324632262186" TEXT="level = INFO">
<font NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1324632262660" ID="ID_19186274" MODIFIED="1324632263714" TEXT=" handlers = console">
<font NAME="SansSerif" SIZE="14"/>
</node>
</node>
</node>
<node COLOR="#0033ff" CREATED="1322882540525" ID="ID_1910449712" MODIFIED="1324632425017" POSITION="right" TEXT="PasteDeploy">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<font NAME="Dialog" SIZE="18"/>
<node COLOR="#00b439" CREATED="1322882550221" ID="ID_1766752243" MODIFIED="1324632428675" TEXT="WSGI">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Dialog" SIZE="16"/>
</node>
</node>
<node COLOR="#0033ff" CREATED="1322882562061" ID="ID_1698147801" MODIFIED="1322882562620" POSITION="right" TEXT="Command-Line Pyramid">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<font NAME="Dialog" SIZE="18"/>
<node COLOR="#00b439" CREATED="1324633049729" ID="ID_383120869" MODIFIED="1324633054798" TEXT="../bin/pviews development.ini#main /test_csrf ">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1324633421574" ID="ID_1486696896" MODIFIED="1324633422633" TEXT="../bin/pshell development.ini#main">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1324633652105" ID="ID_785230791" MODIFIED="1324633655028" TEXT="../bin/proutes development.ini">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
</node>
</node>
<node COLOR="#0033ff" CREATED="1322882572510" ID="ID_1590439883" MODIFIED="1322882573100" POSITION="right" TEXT="Internationalization and Localization">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<font NAME="Dialog" SIZE="18"/>
</node>
<node COLOR="#0033ff" CREATED="1322882577598" ID="ID_274194239" MODIFIED="1322882578601" POSITION="right" TEXT="Virtual Hosting">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<font NAME="Dialog" SIZE="18"/>
</node>
<node COLOR="#0033ff" CREATED="1322882588126" ID="ID_1773652199" MODIFIED="1322882598110" POSITION="right" TEXT="UT">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<font NAME="Dialog" SIZE="18"/>
</node>
<node COLOR="#0033ff" CREATED="1322882607791" ID="ID_1945236148" MODIFIED="1322882608349" POSITION="right" TEXT="Resources">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<font NAME="Dialog" SIZE="18"/>
</node>
<node COLOR="#0033ff" CREATED="1322882614479" ID="ID_1715196321" MODIFIED="1322882615022" POSITION="right" TEXT="Traversal">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<font NAME="Dialog" SIZE="18"/>
</node>
<node COLOR="#0033ff" CREATED="1322882615407" ID="ID_897205693" MODIFIED="1322882620247" POSITION="right" TEXT="Security">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<font NAME="Dialog" SIZE="18"/>
</node>
<node COLOR="#0033ff" CREATED="1322882629023" ID="ID_580109259" MODIFIED="1322882629582" POSITION="right" TEXT="Using Hooks">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<font NAME="Dialog" SIZE="18"/>
</node>
<node COLOR="#0033ff" CREATED="1322882639792" ID="ID_960774708" MODIFIED="1322882640730" POSITION="right" TEXT="Thread Locals">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<font NAME="Dialog" SIZE="18"/>
</node>
</node>
</map>
