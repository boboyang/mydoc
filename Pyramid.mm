<map version="0.9.0">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node COLOR="#000000" CREATED="1322875986124" ID="ID_1998931582" MODIFIED="1322963266847" STYLE="fork" TEXT="Pyramid">
<font NAME="&#x5fae;&#x8f6f;&#x96c5;&#x9ed1;" SIZE="20"/>
<hook NAME="accessories/plugins/AutomaticLayout.properties"/>
<node COLOR="#0033ff" CREATED="1322879265621" ID="ID_993267739" MODIFIED="1322880347841" POSITION="left" TEXT="install Pyramid">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<font NAME="&#x5fae;&#x8f6f;&#x96c5;&#x9ed1;" SIZE="18"/>
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
<font NAME="&#x5fae;&#x8f6f;&#x96c5;&#x9ed1;" SIZE="16"/>
</node>
</node>
<node COLOR="#0033ff" CREATED="1322880584400" ID="ID_809994820" MODIFIED="1322880590842" POSITION="left" TEXT="helloworld">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<font NAME="&#x5fae;&#x8f6f;&#x96c5;&#x9ed1;" SIZE="18"/>
<node COLOR="#00b439" CREATED="1322880601327" ID="ID_52415370" MODIFIED="1322880601968" TEXT="View Callable Declarations">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="&#x5fae;&#x8f6f;&#x96c5;&#x9ed1;" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1322880602351" ID="ID_1501915883" MODIFIED="1322881335519" TEXT="Application Configuration">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="&#x5fae;&#x8f6f;&#x96c5;&#x9ed1;" SIZE="16"/>
<node COLOR="#ff66cc" CREATED="1322881338571" ID="ID_63112426" MODIFIED="1322881343126" TEXT="imperative">
<font NAME="&#x5fae;&#x8f6f;&#x96c5;&#x9ed1;" SIZE="14"/>
<node COLOR="#111111" CREATED="1322880735668" ID="ID_248423830" MODIFIED="1322881358812" TEXT="config = Configurator()">
<font NAME="&#x5fae;&#x8f6f;&#x96c5;&#x9ed1;" SIZE="12"/>
</node>
<node COLOR="#111111" CREATED="1322880628785" ID="ID_744344126" MODIFIED="1322881360100" TEXT="add_route">
<font NAME="&#x5fae;&#x8f6f;&#x96c5;&#x9ed1;" SIZE="12"/>
</node>
<node COLOR="#111111" CREATED="1322880629888" ID="ID_1447650222" MODIFIED="1322881361272" TEXT="add_view">
<font NAME="&#x5fae;&#x8f6f;&#x96c5;&#x9ed1;" SIZE="12"/>
</node>
</node>
<node COLOR="#ff66cc" CREATED="1322881344567" ID="ID_611751805" MODIFIED="1322881352470" TEXT="declarative">
<font NAME="&#x5fae;&#x8f6f;&#x96c5;&#x9ed1;" SIZE="14"/>
<node COLOR="#111111" CREATED="1322881403113" ID="ID_697720129" MODIFIED="1322881403775" TEXT="@view_config">
<font NAME="&#x5fae;&#x8f6f;&#x96c5;&#x9ed1;" SIZE="12"/>
</node>
</node>
</node>
<node COLOR="#00b439" CREATED="1322880612688" ID="ID_856808747" MODIFIED="1322880665086" TEXT="WSGI Application Creation">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="&#x5fae;&#x8f6f;&#x96c5;&#x9ed1;" SIZE="16"/>
<node COLOR="#ff66cc" CREATED="1322880725859" ID="ID_1055550877" MODIFIED="1322880726466" TEXT="app = config.make_wsgi_app()">
<font NAME="&#x5fae;&#x8f6f;&#x96c5;&#x9ed1;" SIZE="14"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1322880673314" ID="ID_586740916" MODIFIED="1322880674023" TEXT="WSGI Application Serving">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="&#x5fae;&#x8f6f;&#x96c5;&#x9ed1;" SIZE="16"/>
<node COLOR="#ff66cc" CREATED="1322880709715" ID="ID_550304534" MODIFIED="1322880710547" TEXT="serve(app, host=&apos;0.0.0.0&apos;)">
<font NAME="&#x5fae;&#x8f6f;&#x96c5;&#x9ed1;" SIZE="14"/>
</node>
</node>
</node>
<node COLOR="#0033ff" CREATED="1322879296870" ID="ID_836576627" MODIFIED="1322882812733" POSITION="left" TEXT="create app">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<font NAME="&#x5fae;&#x8f6f;&#x96c5;&#x9ed1;" SIZE="18"/>
<node COLOR="#00b439" CREATED="1322876463853" ID="ID_699661538" MODIFIED="1322880347863" TEXT="create using Scaffolds">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="&#x5fae;&#x8f6f;&#x96c5;&#x9ed1;" SIZE="16"/>
<node COLOR="#ff66cc" CREATED="1322876350265" ID="ID_1853218400" MODIFIED="1322880347866" TEXT="bin/paster create -t pyramid_starter">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="&#x5fae;&#x8f6f;&#x96c5;&#x9ed1;" SIZE="14"/>
</node>
<node COLOR="#ff66cc" CREATED="1322878081632" ID="ID_158229779" MODIFIED="1322880347870" TEXT="bin/paster create -t pyramid_routesalchemy">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="&#x5fae;&#x8f6f;&#x96c5;&#x9ed1;" SIZE="14"/>
<node COLOR="#111111" CREATED="1322878181755" ID="ID_23182141" MODIFIED="1322880347872" TEXT="csp">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="&#x5fae;&#x8f6f;&#x96c5;&#x9ed1;" SIZE="12"/>
</node>
</node>
<node COLOR="#ff66cc" CREATED="1322879308167" ID="ID_901932932" MODIFIED="1322880347875" TEXT="...">
<font NAME="&#x5fae;&#x8f6f;&#x96c5;&#x9ed1;" SIZE="14"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1322878797414" ID="ID_762850829" MODIFIED="1322880347891" TEXT="install">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="&#x5fae;&#x8f6f;&#x96c5;&#x9ed1;" SIZE="16"/>
<node COLOR="#ff66cc" CREATED="1322878208004" ID="ID_65840655" MODIFIED="1322880347894" TEXT="cd csp&#xa;../bin/python setup.py develop">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="&#x5fae;&#x8f6f;&#x96c5;&#x9ed1;" SIZE="14"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1322878806072" ID="ID_1702886754" MODIFIED="1322880347900" TEXT="run test">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="&#x5fae;&#x8f6f;&#x96c5;&#x9ed1;" SIZE="16"/>
<node COLOR="#ff66cc" CREATED="1322878744469" ID="ID_830287633" MODIFIED="1322880347906" TEXT="../bin/python setup.py test -q">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="&#x5fae;&#x8f6f;&#x96c5;&#x9ed1;" SIZE="14"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1322878834376" ID="ID_1399755132" MODIFIED="1322880347908" TEXT="run app">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="&#x5fae;&#x8f6f;&#x96c5;&#x9ed1;" SIZE="16"/>
<node COLOR="#ff66cc" CREATED="1322878837880" ID="ID_1975922248" MODIFIED="1322880347910" TEXT="../bin/paster serve development.ini">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="&#x5fae;&#x8f6f;&#x96c5;&#x9ed1;" SIZE="14"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1322879036627" ID="ID_729289135" MODIFIED="1322880347918" TEXT="The Debug Toolbar">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="&#x5fae;&#x8f6f;&#x96c5;&#x9ed1;" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1322879086816" FOLDED="true" ID="ID_1524814856" MODIFIED="1322963282571" TEXT="The Project Structure">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="&#x5fae;&#x8f6f;&#x96c5;&#x9ed1;" SIZE="16"/>
<node COLOR="#ff66cc" CREATED="1322879131681" ID="ID_345474556" MODIFIED="1322880347923" TEXT="development.ini">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="&#x5fae;&#x8f6f;&#x96c5;&#x9ed1;" SIZE="14"/>
<node COLOR="#111111" CREATED="1322879596736" ID="ID_1974284822" MODIFIED="1322880347925" TEXT="db">
<font NAME="&#x5fae;&#x8f6f;&#x96c5;&#x9ed1;" SIZE="12"/>
<node COLOR="#111111" CREATED="1322879820412" ID="ID_100155416" MODIFIED="1322880347930" TEXT="mysql">
<font NAME="&#x5fae;&#x8f6f;&#x96c5;&#x9ed1;" SIZE="12"/>
<node COLOR="#111111" CREATED="1322879592004" ID="ID_1970574107" MODIFIED="1322880347932" TEXT="sqlalchemy.localdb.url">
<font NAME="&#x5fae;&#x8f6f;&#x96c5;&#x9ed1;" SIZE="12"/>
<node COLOR="#111111" CREATED="1322879756926" ID="ID_1357595849" MODIFIED="1322880347935" TEXT="mysql://root@127.0.0.1/csp_development">
<font NAME="&#x5fae;&#x8f6f;&#x96c5;&#x9ed1;" SIZE="12"/>
</node>
</node>
<node COLOR="#111111" CREATED="1322879742360" ID="ID_118530462" MODIFIED="1322880347938" TEXT="sqlalchemy.globaldb.url">
<font NAME="&#x5fae;&#x8f6f;&#x96c5;&#x9ed1;" SIZE="12"/>
</node>
</node>
<node COLOR="#111111" CREATED="1322879824535" ID="ID_1012877226" MODIFIED="1322880347939" TEXT="sqlite">
<font NAME="&#x5fae;&#x8f6f;&#x96c5;&#x9ed1;" SIZE="12"/>
</node>
</node>
<node COLOR="#111111" CREATED="1322879850927" ID="ID_1540596907" MODIFIED="1322880347940" TEXT="redis">
<font NAME="&#x5fae;&#x8f6f;&#x96c5;&#x9ed1;" SIZE="12"/>
</node>
<node COLOR="#111111" CREATED="1322879852456" ID="ID_1459687644" MODIFIED="1322880347952" TEXT="cspservice">
<font NAME="&#x5fae;&#x8f6f;&#x96c5;&#x9ed1;" SIZE="12"/>
<node COLOR="#111111" CREATED="1322879886781" ID="ID_1622379869" MODIFIED="1322880347953" TEXT="host">
<font NAME="&#x5fae;&#x8f6f;&#x96c5;&#x9ed1;" SIZE="12"/>
</node>
<node COLOR="#111111" CREATED="1322879888793" ID="ID_971691626" MODIFIED="1322880347955" TEXT="port">
<font NAME="&#x5fae;&#x8f6f;&#x96c5;&#x9ed1;" SIZE="12"/>
</node>
</node>
<node COLOR="#111111" CREATED="1322879862392" ID="ID_1964795106" MODIFIED="1322880347956" TEXT="jinja2">
<font NAME="&#x5fae;&#x8f6f;&#x96c5;&#x9ed1;" SIZE="12"/>
</node>
</node>
<node COLOR="#ff66cc" CREATED="1322879133634" ID="ID_1357015410" MODIFIED="1322880347958" TEXT="product.ini">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="&#x5fae;&#x8f6f;&#x96c5;&#x9ed1;" SIZE="14"/>
</node>
<node COLOR="#ff66cc" CREATED="1322879105680" ID="ID_1683606021" MODIFIED="1322882815552" TEXT="setup.py">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="&#x5fae;&#x8f6f;&#x96c5;&#x9ed1;" SIZE="14"/>
<node COLOR="#111111" CREATED="1322879922623" ID="ID_727095111" MODIFIED="1322880347961" TEXT="requires">
<font NAME="&#x5fae;&#x8f6f;&#x96c5;&#x9ed1;" SIZE="12"/>
<node COLOR="#111111" CREATED="1322879949291" ID="ID_1851072004" MODIFIED="1322880347962" TEXT="     &apos;redis&apos;,&#xa;    &apos;pyramid_mailer&apos;,&#xa;    &apos;coverage&apos;,&#xa;    &apos;MySQL-python&apos;,&#xa;    &apos;thrift&apos;,&#xa;    &apos;pyramid_jinja2&apos;,">
<font NAME="&#x5fae;&#x8f6f;&#x96c5;&#x9ed1;" SIZE="12"/>
</node>
</node>
</node>
<node COLOR="#ff66cc" CREATED="1322879104800" ID="ID_933281758" MODIFIED="1322880347992" TEXT="setup.cfg">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="&#x5fae;&#x8f6f;&#x96c5;&#x9ed1;" SIZE="14"/>
</node>
<node COLOR="#ff66cc" CREATED="1322879155218" ID="ID_1467760149" MODIFIED="1322880347994" TEXT="project package">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="&#x5fae;&#x8f6f;&#x96c5;&#x9ed1;" SIZE="14"/>
</node>
</node>
</node>
<node COLOR="#0033ff" CREATED="1322882443370" ID="ID_1721617353" MODIFIED="1322882444569" POSITION="right" TEXT="URL Dispatch">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<font NAME="&#x5fae;&#x8f6f;&#x96c5;&#x9ed1;" SIZE="18"/>
<node COLOR="#00b439" CREATED="1322886139682" ID="ID_913706982" MODIFIED="1322886160382" TEXT="config.">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="&#x5fae;&#x8f6f;&#x96c5;&#x9ed1;" SIZE="16"/>
<node COLOR="#ff66cc" CREATED="1322886141182" ID="ID_1688985538" MODIFIED="1322886143661" TEXT="add_route">
<font NAME="&#x5fae;&#x8f6f;&#x96c5;&#x9ed1;" SIZE="14"/>
</node>
<node COLOR="#ff66cc" CREATED="1322886144014" ID="ID_882430719" MODIFIED="1322886146542" TEXT="add_view">
<font NAME="&#x5fae;&#x8f6f;&#x96c5;&#x9ed1;" SIZE="14"/>
</node>
<node COLOR="#ff66cc" CREATED="1322886148511" ID="ID_1521178242" MODIFIED="1322886150846" TEXT="scan">
<font NAME="&#x5fae;&#x8f6f;&#x96c5;&#x9ed1;" SIZE="14"/>
</node>
</node>
</node>
<node COLOR="#0033ff" CREATED="1322882448138" ID="ID_1767880717" MODIFIED="1322882452953" POSITION="right" TEXT="Views">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<font NAME="&#x5fae;&#x8f6f;&#x96c5;&#x9ed1;" SIZE="18"/>
</node>
<node COLOR="#0033ff" CREATED="1322882453610" ID="ID_247035930" MODIFIED="1322882461112" POSITION="right" TEXT="Renderers">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<font NAME="&#x5fae;&#x8f6f;&#x96c5;&#x9ed1;" SIZE="18"/>
</node>
<node COLOR="#0033ff" CREATED="1322882464730" ID="ID_368236607" MODIFIED="1322882466665" POSITION="right" TEXT="Templates">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<font NAME="&#x5fae;&#x8f6f;&#x96c5;&#x9ed1;" SIZE="18"/>
<node COLOR="#00b439" CREATED="1322963468818" ID="ID_1506208029" LINK="Jinja2.mm" MODIFIED="1322963468831" TEXT="Jinja2">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="&#x5fae;&#x8f6f;&#x96c5;&#x9ed1;" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1322965611858" ID="ID_355461712" MODIFIED="1322968227798" TEXT="pyramid_jinja2">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="&#x5fae;&#x8f6f;&#x96c5;&#x9ed1;" SIZE="16"/>
<node COLOR="#ff66cc" CREATED="1322964699093" ID="ID_718170453" MODIFIED="1322964700375" TEXT="sudo easy_install pyramid_jinja2">
<font NAME="&#x5fae;&#x8f6f;&#x96c5;&#x9ed1;" SIZE="14"/>
</node>
<node COLOR="#ff66cc" CREATED="1322965617074" ID="ID_1725411703" MODIFIED="1322965785931" TEXT="setup">
<font NAME="&#x5fae;&#x8f6f;&#x96c5;&#x9ed1;" SIZE="14"/>
<node COLOR="#111111" CREATED="1322965633154" ID="ID_151215789" MODIFIED="1322965636530" TEXT="development.ini">
<font NAME="&#x5fae;&#x8f6f;&#x96c5;&#x9ed1;" SIZE="12"/>
<node COLOR="#111111" CREATED="1322965637330" ID="ID_241017089" MODIFIED="1322965638178" TEXT="config.include(&apos;pyramid_jinja2&apos;)">
<font NAME="&#x5fae;&#x8f6f;&#x96c5;&#x9ed1;" SIZE="12"/>
</node>
<node COLOR="#111111" CREATED="1322965684277" ID="ID_1950435961" MODIFIED="1322965685215" TEXT="jinja2.directories = yourapp:templates">
<font NAME="&#x5fae;&#x8f6f;&#x96c5;&#x9ed1;" SIZE="12"/>
</node>
</node>
</node>
<node COLOR="#ff66cc" CREATED="1322965785936" ID="ID_385569467" MODIFIED="1322965789098" TEXT="Usage">
<font NAME="&#x5fae;&#x8f6f;&#x96c5;&#x9ed1;" SIZE="14"/>
<node COLOR="#111111" CREATED="1322966064078" ID="ID_1810758988" MODIFIED="1322966065251" TEXT="Template Lookups">
<font NAME="&#x5fae;&#x8f6f;&#x96c5;&#x9ed1;" SIZE="12"/>
<node COLOR="#111111" CREATED="1322967437704" ID="ID_1016129280" MODIFIED="1322967438523" TEXT="Template Inheritance">
<font NAME="&#x5fae;&#x8f6f;&#x96c5;&#x9ed1;" SIZE="12"/>
</node>
</node>
</node>
<node COLOR="#ff66cc" CREATED="1322968229905" ID="ID_1928243791" MODIFIED="1322968234580" TEXT="Settings">
<font NAME="&#x5fae;&#x8f6f;&#x96c5;&#x9ed1;" SIZE="14"/>
</node>
<node COLOR="#ff66cc" CREATED="1322968246389" ID="ID_1100184591" MODIFIED="1322968248787" TEXT="Filters">
<font NAME="&#x5fae;&#x8f6f;&#x96c5;&#x9ed1;" SIZE="14"/>
</node>
<node COLOR="#ff66cc" CREATED="1322968251429" ID="ID_494610817" MODIFIED="1322968259860" TEXT="create a project">
<font NAME="&#x5fae;&#x8f6f;&#x96c5;&#x9ed1;" SIZE="14"/>
<node COLOR="#111111" CREATED="1322969786522" ID="ID_1018638522" MODIFIED="1322969787429" TEXT="paster create -t pyramid_jinja2_starter">
<font NAME="&#x5fae;&#x8f6f;&#x96c5;&#x9ed1;" SIZE="12"/>
</node>
</node>
<node COLOR="#ff66cc" CREATED="1322968264789" ID="ID_773959945" MODIFIED="1322968267700" TEXT="more info">
<font NAME="&#x5fae;&#x8f6f;&#x96c5;&#x9ed1;" SIZE="14"/>
</node>
</node>
</node>
<node COLOR="#0033ff" CREATED="1322882473323" ID="ID_1642574548" MODIFIED="1322882475152" POSITION="right" TEXT="View Configuration">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<font NAME="&#x5fae;&#x8f6f;&#x96c5;&#x9ed1;" SIZE="18"/>
</node>
<node COLOR="#0033ff" CREATED="1322882507852" ID="ID_1446914574" MODIFIED="1322882508443" POSITION="right" TEXT="Static Assets">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<font NAME="&#x5fae;&#x8f6f;&#x96c5;&#x9ed1;" SIZE="18"/>
</node>
<node COLOR="#0033ff" CREATED="1322882515196" ID="ID_1717098631" MODIFIED="1322882516539" POSITION="right" TEXT="Request and Response Objects">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<font NAME="&#x5fae;&#x8f6f;&#x96c5;&#x9ed1;" SIZE="18"/>
</node>
<node COLOR="#0033ff" CREATED="1322882517180" ID="ID_1331660312" MODIFIED="1322882522459" POSITION="right" TEXT="Sessions">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<font NAME="&#x5fae;&#x8f6f;&#x96c5;&#x9ed1;" SIZE="18"/>
</node>
<node COLOR="#0033ff" CREATED="1322882528476" ID="ID_709859064" MODIFIED="1322882529051" POSITION="right" TEXT="Using Events">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<font NAME="&#x5fae;&#x8f6f;&#x96c5;&#x9ed1;" SIZE="18"/>
</node>
<node COLOR="#0033ff" CREATED="1322882539725" ID="ID_1254027529" MODIFIED="1322882540203" POSITION="right" TEXT="Logging">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<font NAME="&#x5fae;&#x8f6f;&#x96c5;&#x9ed1;" SIZE="18"/>
</node>
<node COLOR="#0033ff" CREATED="1322882540525" ID="ID_1910449712" MODIFIED="1322882549501" POSITION="right" TEXT="Paste">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<font NAME="&#x5fae;&#x8f6f;&#x96c5;&#x9ed1;" SIZE="18"/>
<node COLOR="#00b439" CREATED="1322882550221" ID="ID_1766752243" MODIFIED="1322882554268" TEXT="PasteDeploy">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="&#x5fae;&#x8f6f;&#x96c5;&#x9ed1;" SIZE="16"/>
</node>
</node>
<node COLOR="#0033ff" CREATED="1322882562061" ID="ID_1698147801" MODIFIED="1322882562620" POSITION="right" TEXT="Command-Line Pyramid">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<font NAME="&#x5fae;&#x8f6f;&#x96c5;&#x9ed1;" SIZE="18"/>
</node>
<node COLOR="#0033ff" CREATED="1322882572510" ID="ID_1590439883" MODIFIED="1322882573100" POSITION="right" TEXT="Internationalization and Localization">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<font NAME="&#x5fae;&#x8f6f;&#x96c5;&#x9ed1;" SIZE="18"/>
</node>
<node COLOR="#0033ff" CREATED="1322882577598" ID="ID_274194239" MODIFIED="1322882578601" POSITION="right" TEXT="Virtual Hosting">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<font NAME="&#x5fae;&#x8f6f;&#x96c5;&#x9ed1;" SIZE="18"/>
</node>
<node COLOR="#0033ff" CREATED="1322882588126" ID="ID_1773652199" MODIFIED="1322882598110" POSITION="right" TEXT="UT">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<font NAME="&#x5fae;&#x8f6f;&#x96c5;&#x9ed1;" SIZE="18"/>
</node>
<node COLOR="#0033ff" CREATED="1322882607791" ID="ID_1945236148" MODIFIED="1322882608349" POSITION="right" TEXT="Resources">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<font NAME="&#x5fae;&#x8f6f;&#x96c5;&#x9ed1;" SIZE="18"/>
</node>
<node COLOR="#0033ff" CREATED="1322882614479" ID="ID_1715196321" MODIFIED="1322882615022" POSITION="right" TEXT="Traversal">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<font NAME="&#x5fae;&#x8f6f;&#x96c5;&#x9ed1;" SIZE="18"/>
</node>
<node COLOR="#0033ff" CREATED="1322882615407" ID="ID_897205693" MODIFIED="1322882620247" POSITION="right" TEXT="Security">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<font NAME="&#x5fae;&#x8f6f;&#x96c5;&#x9ed1;" SIZE="18"/>
</node>
<node COLOR="#0033ff" CREATED="1322882629023" ID="ID_580109259" MODIFIED="1322882629582" POSITION="right" TEXT="Using Hooks">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<font NAME="&#x5fae;&#x8f6f;&#x96c5;&#x9ed1;" SIZE="18"/>
</node>
<node COLOR="#0033ff" CREATED="1322882639792" ID="ID_960774708" MODIFIED="1322882640730" POSITION="right" TEXT="Thread Locals">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<font NAME="&#x5fae;&#x8f6f;&#x96c5;&#x9ed1;" SIZE="18"/>
</node>
</node>
</map>
