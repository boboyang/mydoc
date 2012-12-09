<map version="0.9.0">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node COLOR="#000000" CREATED="1318256515937" ID="ID_1056084995" MODIFIED="1318327367163" TEXT="Muduo">
<edge STYLE="bezier" WIDTH="4"/>
<font NAME="SansSerif" SIZE="20"/>
<hook NAME="accessories/plugins/AutomaticLayout.properties"/>
<node COLOR="#0033ff" CREATED="1318268532734" ID="ID_665849441" MODIFIED="1318297903589" POSITION="left" TEXT="model">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<font NAME="SansSerif" SIZE="18"/>
<node COLOR="#00b439" CREATED="1318268553484" ID="ID_228765367" MODIFIED="1318268861828" TEXT="one loop per thread ">
<edge STYLE="bezier" WIDTH="thin"/>
<font BOLD="true" NAME="SansSerif" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1318268737531" ID="ID_206386383" MODIFIED="1318268861828" TEXT="nonblocking ">
<edge STYLE="bezier" WIDTH="thin"/>
<font BOLD="true" NAME="SansSerif" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1318268739031" ID="ID_1683947078" MODIFIED="1318268861828" TEXT="IO-multiplex">
<edge STYLE="bezier" WIDTH="thin"/>
<font BOLD="true" NAME="SansSerif" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1318263021359" ID="ID_1075188750" LINK="../../../../D:/workspace/python/myWebApp/Twisted.mm" MODIFIED="1318268861828" TEXT="Twisted framework">
<edge STYLE="bezier" WIDTH="thin"/>
<font BOLD="true" NAME="SansSerif" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1318297943604" ID="ID_1790910141" MODIFIED="1318298043212" TEXT="&#x76ee;&#x524d;server&#x914d;&#x7f6e;">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<node COLOR="#ff00ff" CREATED="1318297953979" ID="ID_782959899" MODIFIED="1318297958479" TEXT="multi core"/>
<node COLOR="#ff00ff" CREATED="1318297958838" ID="ID_1194728261" MODIFIED="1318297980604" TEXT="&gt;10GB&#x5185;&#x5b58;"/>
<node COLOR="#ff00ff" CREATED="1318297991494" ID="ID_1822067181" MODIFIED="1318298000650" TEXT="100/1000M&#x5e26;&#x5bbd;">
<node COLOR="#111111" CREATED="1318298010666" ID="ID_1761646067" MODIFIED="1318298016275" TEXT="&#x72ec;&#x5360;">
<font NAME="SansSerif" SIZE="12"/>
</node>
</node>
</node>
</node>
<node COLOR="#0033ff" CREATED="1318256799562" ID="ID_1917682936" LINK="muduo.gif" MODIFIED="1318299199432" POSITION="right" TEXT="element">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<font NAME="SansSerif" SIZE="18"/>
<node COLOR="#00b439" CREATED="1318256804968" ID="ID_783887219" MODIFIED="1318256806906" TEXT="client">
<edge STYLE="bezier" WIDTH="thin"/>
<font BOLD="true" NAME="SansSerif" SIZE="16"/>
<node COLOR="#ff00ff" CREATED="1318257253031" ID="ID_468247886" MODIFIED="1318297903589" TEXT="connector">
<font BOLD="true" NAME="SansSerif" SIZE="14"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1318256807593" ID="ID_233275987" MODIFIED="1318256809671" TEXT="server">
<edge STYLE="bezier" WIDTH="thin"/>
<font BOLD="true" NAME="SansSerif" SIZE="16"/>
<node COLOR="#ff00ff" CREATED="1318256864859" ID="ID_1216549978" MODIFIED="1318297903589" TEXT="acceptor">
<edge STYLE="bezier" WIDTH="thin"/>
<font BOLD="true" NAME="SansSerif" SIZE="14"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1318256881140" ID="ID_707669500" MODIFIED="1318256884015" TEXT="eventloop">
<edge STYLE="bezier" WIDTH="thin"/>
<font BOLD="true" NAME="SansSerif" SIZE="16"/>
<node COLOR="#ff00ff" CREATED="1318256810000" ID="ID_1502408602" MODIFIED="1318297903589" TEXT="thread pool">
<edge STYLE="bezier" WIDTH="thin"/>
<font BOLD="true" NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1318256902500" ID="ID_1859475031" MODIFIED="1318257293718" TEXT="connection">
<edge STYLE="bezier" WIDTH="thin"/>
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node COLOR="#111111" CREATED="1318257314265" FOLDED="true" ID="ID_1629116621" MODIFIED="1318385797512" TEXT="socket (RAII)">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node COLOR="#111111" CREATED="1318257419703" ID="ID_1263055407" MODIFIED="1318297903589" TEXT="resource: fd">
<font NAME="SansSerif" SIZE="12"/>
</node>
<node COLOR="#111111" CREATED="1318257146812" ID="ID_809333314" MODIFIED="1318265068593" TEXT="socketops">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node COLOR="#111111" CREATED="1318256907687" ID="ID_871153753" MODIFIED="1318257331546" TEXT="channel">
<edge STYLE="bezier" WIDTH="thin"/>
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
<node COLOR="#111111" CREATED="1318261295921" ID="ID_668162180" MODIFIED="1318268861828" TEXT="Buffer">
<edge STYLE="bezier" WIDTH="thin"/>
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
</node>
</node>
<node COLOR="#ff00ff" CREATED="1318256861625" ID="ID_1646065281" MODIFIED="1318297903589" TEXT="pooler">
<edge STYLE="bezier" WIDTH="thin"/>
<font BOLD="true" NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1318257340812" ID="ID_149250365" MODIFIED="1318257391890" TEXT="poll">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
<node COLOR="#111111" CREATED="1318257343500" ID="ID_708245481" MODIFIED="1318257391890" TEXT="epoll">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
</node>
</node>
<node COLOR="#00b439" CREATED="1318256954468" ID="ID_1976255772" MODIFIED="1318257347531" TEXT="timer queue">
<edge STYLE="bezier" WIDTH="thin"/>
<font BOLD="true" NAME="SansSerif" SIZE="16"/>
<node COLOR="#ff00ff" CREATED="1318256939484" ID="ID_1217854557" MODIFIED="1318297903589" TEXT="callback">
<edge STYLE="bezier" WIDTH="thin"/>
<font BOLD="true" NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#ff00ff" CREATED="1318256947328" ID="ID_617392226" MODIFIED="1318297903589" TEXT="timer">
<edge STYLE="bezier" WIDTH="thin"/>
<font BOLD="true" NAME="SansSerif" SIZE="14"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1318257060937" ID="ID_925873381" MODIFIED="1318257065890" TEXT="httpserver">
<edge STYLE="bezier" WIDTH="thin"/>
<font BOLD="true" NAME="SansSerif" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1318257066562" ID="ID_373988917" MODIFIED="1318257072390" TEXT="inspector">
<edge STYLE="bezier" WIDTH="thin"/>
<font BOLD="true" NAME="SansSerif" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1318268282031" ID="ID_1332873347" MODIFIED="1318268861843" TEXT="Dispatcher">
<edge STYLE="bezier" WIDTH="thin"/>
<font BOLD="true" NAME="SansSerif" SIZE="16"/>
</node>
</node>
<node COLOR="#0033ff" CREATED="1318258021968" ID="ID_412368130" MODIFIED="1318297903589" POSITION="left" TEXT="&#x8bc4;&#x6d4b;">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<font NAME="SansSerif" SIZE="18"/>
<node COLOR="#00b439" CREATED="1318261003484" ID="ID_895777324" MODIFIED="1318261006203" TEXT="&#x5de5;&#x5177;">
<edge STYLE="bezier" WIDTH="thin"/>
<font BOLD="true" NAME="SansSerif" SIZE="16"/>
<node COLOR="#ff00ff" CREATED="1318256654781" ID="ID_1248016239" MODIFIED="1318297903589" TEXT="&#x865a;&#x62df;&#x8def;&#x7531;&#x5668;">
<edge STYLE="bezier" WIDTH="thin"/>
<font BOLD="true" NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1318256676953" ID="ID_1451232963" MODIFIED="1318261008109" TEXT="TUN/TAP">
<edge STYLE="bezier" WIDTH="thin"/>
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
</node>
</node>
<node COLOR="#00b439" CREATED="1318261013468" ID="ID_653291721" MODIFIED="1318261016234" TEXT="&#x6307;&#x6807;">
<edge STYLE="bezier" WIDTH="thin"/>
<font BOLD="true" NAME="SansSerif" SIZE="16"/>
<node COLOR="#ff00ff" CREATED="1318258029562" ID="ID_1567375735" MODIFIED="1318297903589" TEXT="&#x541e;&#x5410;&#x91cf;">
<edge STYLE="bezier" WIDTH="thin"/>
<font BOLD="true" NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1318258035171" ID="ID_1417963011" MODIFIED="1318261024687" TEXT="ping pong &#x534f;&#x8bae;">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node COLOR="#111111" CREATED="1318258057921" ID="ID_1344436981" MODIFIED="1318297903589" TEXT="echo on server&amp;client">
<font NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node COLOR="#111111" CREATED="1318258339843" ID="ID_307148736" MODIFIED="1318261024687" TEXT="compare">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node COLOR="#111111" CREATED="1318258342125" ID="ID_1270759503" MODIFIED="1318297903589" TEXT="asio">
<font NAME="SansSerif" SIZE="12"/>
</node>
</node>
</node>
<node COLOR="#ff00ff" CREATED="1318258293593" ID="ID_1328881067" MODIFIED="1318297903589" TEXT="&#x4e8b;&#x4ef6;&#x5904;&#x7406;&#x6548;&#x7387;">
<edge STYLE="bezier" WIDTH="thin"/>
<font BOLD="true" NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1318258301718" ID="ID_562407480" LINK="http://blog.csdn.net/solstice/article/details/5869801" MODIFIED="1318261021640" TEXT="&#x51fb;&#x9f13;&#x4f20;&#x82b1;">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
<node COLOR="#111111" CREATED="1318258318671" ID="ID_430009513" MODIFIED="1318261021640" TEXT="compare">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node COLOR="#111111" CREATED="1318258321296" ID="ID_1280637874" MODIFIED="1318297903589" TEXT="libevent">
<font NAME="SansSerif" SIZE="12"/>
</node>
</node>
</node>
</node>
</node>
<node COLOR="#0033ff" CREATED="1318258690296" ID="ID_624676707" LINK="http://blog.csdn.net/solstice/article/details/6171831" MODIFIED="1318297903589" POSITION="left" TEXT="TCP&#x7f16;&#x7a0b;&#x672c;&#x8d28;">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<font BOLD="true" NAME="SansSerif" SIZE="18"/>
<node COLOR="#00b439" CREATED="1318258708578" ID="ID_131107307" MODIFIED="1318259028859" TEXT="&#x8fde;&#x63a5;&#x5efa;&#x7acb;">
<edge STYLE="bezier" WIDTH="thin"/>
<font BOLD="true" NAME="SansSerif" SIZE="16"/>
<node COLOR="#ff00ff" CREATED="1318258722937" ID="ID_1864675643" MODIFIED="1318297903589" TEXT="client&#xff1a;connect">
<font BOLD="true" NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1318259146859" ID="ID_1394107206" MODIFIED="1318297903589" TEXT="&#x5982;&#x679c;&#x5bf9;&#x65b9;&#x4e3b;&#x52a8;&#x62d2;&#x7edd;&#xff0c;&#x5982;&#x4f55;&#x5b9a;&#x671f; (&#x5e26; back-off) &#x91cd;&#x8bd5;&#xff1f;">
<font NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node COLOR="#ff00ff" CREATED="1318258725390" ID="ID_187959536" MODIFIED="1318297903589" TEXT="server&#xff1a;accept">
<font BOLD="true" NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#ff00ff" CREATED="1318260518968" ID="ID_147414661" MODIFIED="1318297903589" TEXT="&#x8fde;&#x63a5;&#x7c7b;&#x578b;">
<font BOLD="true" NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1318260526093" ID="ID_1284128066" MODIFIED="1318297903589" TEXT="&#x77ed;&#x8fde;&#x63a5;">
<font NAME="SansSerif" SIZE="12"/>
</node>
<node COLOR="#111111" CREATED="1318260533203" ID="ID_631691330" MODIFIED="1318297903589" TEXT="&#x957f;&#x8fde;&#x63a5;">
<font NAME="SansSerif" SIZE="12"/>
<node COLOR="#111111" CREATED="1318260544203" ID="ID_1917787976" LINK="http://blog.csdn.net/solstice/article/details/6172391" MODIFIED="1318297903589" TEXT="&#x5e94;&#x7528;&#x5c42;&#x5206;&#x5305;">
<font NAME="SansSerif" SIZE="12"/>
<node COLOR="#111111" CREATED="1318260605125" ID="ID_1366663036" MODIFIED="1318297903589" TEXT="&#x901a;&#x8fc7;&#x4e00;&#x5b9a;&#x7684;&#x5904;&#x7406;&#xff0c;&#x8ba9;&#x63a5;&#x6536;&#x65b9;&#x80fd;&#x4ece;TCP&#x5b57;&#x8282;&#x6d41;&#x4e2d;&#x8bc6;&#x522b;&#x5e76;&#x622a;&#x53d6;&#xff08;&#x8fd8;&#x539f;&#xff09;&#x51fa;&#x4e00;&#x4e2a;&#x4e2a;&#x6d88;&#x606f;">
<font NAME="SansSerif" SIZE="12"/>
</node>
<node COLOR="#111111" CREATED="1318260631375" ID="ID_390823276" MODIFIED="1318297903589" TEXT="&#x65b9;&#x6cd5;">
<font NAME="SansSerif" SIZE="12"/>
<node COLOR="#111111" CREATED="1318260668515" ID="ID_794231709" MODIFIED="1318297903589" TEXT="&#x6d88;&#x606f;&#x957f;&#x5ea6;&#x56fa;&#x5b9a;">
<font NAME="SansSerif" SIZE="12"/>
</node>
<node COLOR="#111111" CREATED="1318260726515" ID="ID_1504185160" MODIFIED="1318297903589" TEXT="&#x5206;&#x5272;&#x7b26;&#x53f7;&#xff0c;&#x5982;&quot;/r/n&quot; ">
<font NAME="SansSerif" SIZE="12"/>
</node>
<node COLOR="#111111" CREATED="1318260758390" ID="ID_1854421117" MODIFIED="1318297903589" TEXT="&#x957f;&#x5ea6;&#x5b57;&#x6bb5;&#x653e;&#x5728;&#x5f00;&#x5934;">
<font NAME="SansSerif" SIZE="12"/>
</node>
<node COLOR="#111111" CREATED="1318260801281" ID="ID_94112488" MODIFIED="1318297903589" TEXT="&#x5229;&#x7528;&#x6d88;&#x606f;&#x672c;&#x8eab;&#x7684;&#x683c;&#x5f0f;&#x6765;&#x5206;&#x5305;&#xff0c;&#x5982;{}&#x5339;&#x914d;">
<font NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node COLOR="#111111" CREATED="1318268131812" ID="ID_30618060" MODIFIED="1318297903589" TEXT="&#x5b9e;&#x73b0;">
<font NAME="SansSerif" SIZE="12"/>
<node COLOR="#111111" CREATED="1318268181359" ID="ID_250807501" MODIFIED="1318297903589" TEXT="Codec">
<font NAME="SansSerif" SIZE="12"/>
</node>
</node>
</node>
</node>
</node>
<node COLOR="#ff00ff" CREATED="1318314555563" FOLDED="true" ID="ID_612363496" MODIFIED="1318314591438" TEXT="&#x6d41;&#x7a0b;">
<node COLOR="#111111" CREATED="1318314522267" ID="ID_527757264" MODIFIED="1318314536626">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <img src="TCP-3wayhandsh.png" />
  </body>
</html></richcontent>
<font NAME="SansSerif" SIZE="12"/>
</node>
</node>
</node>
<node COLOR="#00b439" CREATED="1318258737875" ID="ID_884380994" LINK="http://blog.csdn.net/solstice/article/details/6208634" MODIFIED="1318265342234" TEXT="&#x65ad;&#x5f00;">
<edge STYLE="bezier" WIDTH="thin"/>
<font BOLD="true" NAME="SansSerif" SIZE="16"/>
<node COLOR="#ff00ff" CREATED="1318258761281" ID="ID_42665164" MODIFIED="1318297903589" TEXT="&#x4e3b;&#x52a8;(FIN)">
<font BOLD="true" NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1318258747250" ID="ID_257277913" MODIFIED="1318297903589" TEXT="shutdown write">
<font NAME="SansSerif" SIZE="12"/>
<node COLOR="#111111" CREATED="1318265208171" ID="ID_1389920828" MODIFIED="1318297903589" TEXT="half-close">
<font NAME="SansSerif" SIZE="12"/>
</node>
<node COLOR="#111111" CREATED="1318265542500" ID="ID_1103065732" MODIFIED="1318297903589" TEXT="&#x8fd9;&#x6837;&#x8fd8;&#x80fd;&#x63a5;&#x53d7;&#x6570;&#x636e;">
<font NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node COLOR="#111111" CREATED="1318259181156" ID="ID_1068425785" MODIFIED="1318297903589" TEXT="&#x5982;&#x4f55;&#x4fdd;&#x8bc1;&#x5bf9;&#x65b9;&#x5df2;&#x7ecf;&#x6536;&#x5230;&#x5168;&#x90e8;&#x6570;&#x636e;&#xff1f;">
<font NAME="SansSerif" SIZE="12"/>
</node>
<node COLOR="#111111" CREATED="1318265238515" ID="ID_940836296" MODIFIED="1318297903589" TEXT="FIN">
<font NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node COLOR="#ff00ff" CREATED="1318258764765" ID="ID_1410215609" MODIFIED="1318297903589" TEXT="&#x88ab;&#x52a8;(ACK)">
<font BOLD="true" NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1318258800328" ID="ID_1102579439" MODIFIED="1318297903589" TEXT="read() &#x8fd4;&#x56de; 0">
<font NAME="SansSerif" SIZE="12"/>
<node COLOR="#111111" CREATED="1318265385562" ID="ID_1053416077" MODIFIED="1318297903589" TEXT="shutdown read">
<font NAME="SansSerif" SIZE="12"/>
</node>
<node COLOR="#111111" CREATED="1318265442296" ID="ID_1450623999" MODIFIED="1318297903589" TEXT="shutdown write">
<font NAME="SansSerif" SIZE="12"/>
</node>
</node>
</node>
<node COLOR="#ff00ff" CREATED="1318259197312" ID="ID_1429662408" MODIFIED="1318297903589" TEXT="&#x5982;&#x679c;&#x5e94;&#x7528;&#x5c42;&#x6709;&#x7f13;&#x51b2;&#xff0c;&#x5982;&#x4f55;&#x4fdd;&#x8bc1;&#x5148;&#x53d1;&#x9001;&#x5b8c;&#x7f13;&#x51b2;&#x533a;&#x4e2d;&#x7684;&#x6570;&#x636e;&#xff0c;&#x7136;&#x540e;&#x518d;&#x65ad;&#x5f00;&#x8fde;&#x63a5;&#xff1f;">
<font BOLD="true" NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#ff00ff" CREATED="1318314643218" FOLDED="true" ID="ID_1183223231" MODIFIED="1318314654281" TEXT="&#x6d41;&#x7a0b;">
<node COLOR="#111111" CREATED="1318265189296" ID="ID_174361494" MODIFIED="1318314652218">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <img src="TCP-FINexch.png" />
  </body>
</html></richcontent>
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
</node>
</node>
<node COLOR="#00b439" CREATED="1318258825234" ID="ID_587393688" MODIFIED="1318260281859" TEXT="&#x6570;&#x636e;&#x5230;&#x8fbe;">
<edge STYLE="bezier" WIDTH="thin"/>
<font BOLD="true" NAME="SansSerif" SIZE="16"/>
<node COLOR="#ff00ff" CREATED="1318258829390" ID="ID_1367482066" MODIFIED="1318297903589" TEXT="fd&#x53ef;&#x7528;">
<font BOLD="true" NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1318264365218" ID="ID_1473187886" MODIFIED="1318297903589" TEXT="&#x5168;&#x53cc;&#x5de5;&#xff0c;&#x8bfb;&#x5199;&#x7528;&#x4e00;&#x4e2a;fd">
<font NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node COLOR="#ff00ff" CREATED="1318258902281" ID="ID_1464741037" MODIFIED="1318297903589" TEXT="&#x5904;&#x7406;&#x65b9;&#x5f0f;">
<font BOLD="true" NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1318258870843" ID="ID_1919092719" MODIFIED="1318297903589" TEXT="block">
<font NAME="SansSerif" SIZE="12"/>
</node>
<node COLOR="#111111" CREATED="1318258873546" ID="ID_1720664667" MODIFIED="1318297903589" TEXT="non-block">
<font NAME="SansSerif" SIZE="12"/>
<node COLOR="#111111" CREATED="1318259568062" ID="ID_438209284" MODIFIED="1318297903589" TEXT="&#x7528;&#x8fb9;&#x6cbf;&#x89e6;&#x53d1;(edge trigger)&#x8fd8;&#x662f;&#x7535;&#x5e73;&#x89e6;&#x53d1;(level trigger)&#xff1f;">
<font NAME="SansSerif" SIZE="12"/>
</node>
<node COLOR="#111111" CREATED="1318259586687" ID="ID_1992017773" MODIFIED="1318297903589" TEXT="&#x5982;&#x679c;&#x662f;&#x7535;&#x5e73;&#x89e6;&#x53d1;&#xff0c;&#x90a3;&#x4e48;&#x4ec0;&#x4e48;&#x65f6;&#x5019;&#x5173;&#x6ce8; EPOLLOUT &#x4e8b;&#x4ef6;&#xff1f;">
<font NAME="SansSerif" SIZE="12"/>
<node COLOR="#111111" CREATED="1318259599265" ID="ID_619588646" MODIFIED="1318297903589" TEXT="&#x4f1a;&#x4e0d;&#x4f1a;&#x9020;&#x6210; busy-loop&#xff1f;">
<font NAME="SansSerif" SIZE="12"/>
</node>
<node COLOR="#111111" CREATED="1318259604531" ID="ID_532341193" MODIFIED="1318297903589" TEXT="epoll &#x4e00;&#x5b9a;&#x6bd4; poll &#x5feb;&#x5417;&#xff1f;">
<font NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node COLOR="#111111" CREATED="1318259611468" ID="ID_1803142031" MODIFIED="1318297903589" TEXT="&#x5982;&#x679c;&#x662f;&#x8fb9;&#x6cbf;&#x89e6;&#x53d1;&#xff0c;&#x5982;&#x4f55;&#x9632;&#x6b62;&#x6f0f;&#x8bfb;&#x9020;&#x6210;&#x7684;&#x9965;&#x997f;&#xff1f;">
<font NAME="SansSerif" SIZE="12"/>
</node>
<node COLOR="#111111" CREATED="1318259354531" ID="ID_716699615" MODIFIED="1318297903589" TEXT="&#x4e3a;&#x4ec0;&#x4e48;&#x8981;&#x4f7f;&#x7528;&#x5e94;&#x7528;&#x5c42;&#x7f13;&#x51b2;&#x533a;&#xff1f;">
<font NAME="SansSerif" SIZE="12"/>
<node COLOR="#111111" CREATED="1318259474375" ID="ID_1146022988" MODIFIED="1318297903589" TEXT="&#x5982;&#x4f55;&#x8bbe;&#x8ba1;">
<font NAME="SansSerif" SIZE="12"/>
</node>
<node COLOR="#111111" CREATED="1318259478093" ID="ID_1225658723" MODIFIED="1318297903589" TEXT="&#x5982;&#x679c;&#x63a5;&#x6536;&#x65b9;&#x5904;&#x7406;&#x7f13;&#x6162;&#xff0c;&#x5982;&#x4f55;&#x63a7;&#x5236;&#x6d41;&#x91cf;?">
<font NAME="SansSerif" SIZE="12"/>
</node>
</node>
</node>
</node>
<node COLOR="#ff00ff" CREATED="1318258891312" ID="ID_332199406" MODIFIED="1318297903589" TEXT="&#x5e94;&#x7528;&#x5c42;&#x7f13;&#x51b2;">
<font BOLD="true" NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1318386204147" ID="ID_1100156037" MODIFIED="1318386214491" TEXT="&#x76ee;&#x7684;">
<font NAME="SansSerif" SIZE="12"/>
<node COLOR="#111111" CREATED="1318385882167" ID="ID_669935113" MODIFIED="1318385905885" TEXT="&#x907f;&#x514d;IO&#x963b;&#x585e;">
<font NAME="SansSerif" SIZE="12"/>
</node>
<node COLOR="#111111" CREATED="1318385925198" ID="ID_1718296388" MODIFIED="1318385991494" TEXT="&#x53ea;&#x8ba9;&#x963b;&#x585e;&#x53d1;&#x751f;&#x5728;&#x4fa6;&#x542c;&#x7f51;&#x7edc;&#x4e8b;&#x4ef6;&#x4e0a;&#xff0c;&#x5982; select()/poll()/epoll_wait()">
<font NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node COLOR="#111111" CREATED="1318386006431" ID="ID_932706331" MODIFIED="1318386068727" TEXT="TCP&#x867d;&#x7136;&#x6709;&#x62e5;&#x585e;&#x63a7;&#x5236;&#xff0c;&#x4f46;&#x662f;&#x6ca1;&#x6709;&#x627f;&#x8bfa;&#x4f20;&#x8f93;&#x65f6;&#x95f4;&#xff0c;&#x6ca1;&#x6709;&#x533a;&#x5206;&#x5305;&#x7684;&#x5927;&#x5c0f;">
<font NAME="SansSerif" SIZE="12"/>
<node COLOR="#111111" CREATED="1318386081430" ID="ID_895497490" MODIFIED="1318386112508" TEXT="&#x591a;&#x6b21;1bit&#x5305;&#x7684;&#x95ee;&#x9898;&#x600e;&#x4e48;&#x529e;&#xff1f;">
<font NAME="SansSerif" SIZE="12"/>
</node>
<node COLOR="#111111" CREATED="1318390293845" ID="ID_1297356704" MODIFIED="1318390299360" TEXT="ENOBUFS&#x600e;&#x4e48;&#x529e;&#xff1f;">
<font NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node COLOR="#111111" CREATED="1318386218209" ID="ID_384533732" MODIFIED="1318386228944" TEXT="&#x7c7b;&#x578b;">
<font NAME="SansSerif" SIZE="12"/>
<node COLOR="#111111" CREATED="1318386229850" ID="ID_1813739034" MODIFIED="1318386233006" TEXT="input buffer">
<font NAME="SansSerif" SIZE="12"/>
</node>
<node COLOR="#111111" CREATED="1318386233287" ID="ID_427536148" MODIFIED="1318386238475" TEXT="output buffer">
<font NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node COLOR="#111111" CREATED="1318386282615" ID="ID_573815079" MODIFIED="1318386294459" TEXT="&#x9700;&#x8981;&#x505a;&#x5230;&#x7ebf;&#x7a0b;&#x5b89;&#x5168;&#x5417;&#xff1f;">
<font NAME="SansSerif" SIZE="12"/>
<node COLOR="#111111" CREATED="1318386527831" ID="ID_228953635" MODIFIED="1318386528784" TEXT="&#x63a5;&#x6536;&#x4e0e;&#x62c6;&#x5305;&#x662f;&#x5728;&#x540c;&#x4e00;&#x7ebf;&#x7a0b;">
<font NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node COLOR="#111111" CREATED="1318386616204" ID="ID_1618495290" LINK="http://blog.csdn.net/solstice/article/details/6329080" MODIFIED="1318386798936" TEXT="&#x7ed3;&#x6784;&#x8bbe;&#x8ba1;">
<font NAME="SansSerif" SIZE="12"/>
<node COLOR="#111111" CREATED="1318386633360" ID="ID_793062714" MODIFIED="1318386637626" TEXT="read index">
<font NAME="SansSerif" SIZE="12"/>
</node>
<node COLOR="#111111" CREATED="1318386638063" ID="ID_1288274992" MODIFIED="1318386641517" TEXT="write index">
<font NAME="SansSerif" SIZE="12"/>
</node>
<node COLOR="#111111" CREATED="1318386658485" ID="ID_1444134235" MODIFIED="1318386660157" TEXT="size">
<font NAME="SansSerif" SIZE="12"/>
<node COLOR="#111111" CREATED="1318386677485" ID="ID_1623797602" MODIFIED="1318386682938" TEXT="&#x81ea;&#x52a8;&#x589e;&#x957f;">
<font NAME="SansSerif" SIZE="12"/>
</node>
</node>
</node>
</node>
</node>
<node COLOR="#00b439" CREATED="1318258948375" ID="ID_1714232762" MODIFIED="1318265728156" TEXT="send()&#x5b8c;&#x6bd5;">
<edge STYLE="bezier" WIDTH="thin"/>
<font BOLD="true" NAME="SansSerif" SIZE="16"/>
<node COLOR="#ff00ff" CREATED="1318258970703" ID="ID_1584044761" MODIFIED="1318297903589" TEXT="&#x53ea;&#x662f;&#x6570;&#x636e;&#x8fdb;&#x5165;&#x53d1;&#x9001;&#x7f13;&#x51b2;&#x533a;">
<font BOLD="true" NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1318258995828" ID="ID_553894230" MODIFIED="1318297903589" TEXT="tcp&#x534f;&#x8bae;&#x8d1f;&#x8d23;&#x53d1;&#x9001;">
<font NAME="SansSerif" SIZE="12"/>
<node COLOR="#111111" CREATED="1318266025234" ID="ID_1661745400" MODIFIED="1318297903589" TEXT="&#x4e22;&#x5305;&#x91cd;&#x4f20;">
<font NAME="SansSerif" SIZE="12"/>
</node>
<node COLOR="#111111" CREATED="1318267047265" ID="ID_1815576260" MODIFIED="1318297903589" TEXT="&#x6d41;&#x91cf;&#x63a7;&#x5236;">
<font NAME="SansSerif" SIZE="12"/>
<node COLOR="#111111" CREATED="1318267059531" ID="ID_1483114474" MODIFIED="1318297903589" TEXT="&#x6ed1;&#x52a8;&#x7a97;&#x53e3;">
<font NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node COLOR="#111111" CREATED="1318267052765" FOLDED="true" ID="ID_1441162340" LINK="http://www.cnblogs.com/fll/archive/2008/06/10/1217013.html" MODIFIED="1318385827059" TEXT="&#x62e5;&#x585e;&#x63a7;&#x5236;">
<font NAME="SansSerif" SIZE="12"/>
<node COLOR="#111111" CREATED="1318267472093" ID="ID_1603571886" MODIFIED="1318297903589" TEXT="Slow start">
<font NAME="SansSerif" SIZE="12"/>
<node COLOR="#111111" CREATED="1318267564968" ID="ID_1618297134" MODIFIED="1318297903589" TEXT="&#x62e5;&#x585e;&#x7a97;&#x53e3;(cwnd)">
<font NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node COLOR="#111111" CREATED="1318267473296" ID="ID_950273822" MODIFIED="1318297903589" TEXT="Congestion avoidance">
<font NAME="SansSerif" SIZE="12"/>
<node COLOR="#111111" CREATED="1318267685828" ID="ID_1078864893" MODIFIED="1318297903589" TEXT="&#x6162;&#x542f;&#x52a8;&#x95e8;&#x9650;(ssthresh)">
<font NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node COLOR="#111111" CREATED="1318267488687" ID="ID_1469440181" MODIFIED="1318297903589" TEXT="Fast retransmit">
<font NAME="SansSerif" SIZE="12"/>
</node>
<node COLOR="#111111" CREATED="1318267497031" ID="ID_1029177297" MODIFIED="1318297903589" TEXT="Fast Recovery">
<font NAME="SansSerif" SIZE="12"/>
</node>
<node COLOR="#111111" CREATED="1318267892000" ID="ID_1291701990" MODIFIED="1318297903589" TEXT="AIMD&#x539f;&#x5219;">
<font NAME="SansSerif" SIZE="12"/>
<node COLOR="#111111" CREATED="1318267899546" ID="ID_20035500" MODIFIED="1318297903589" TEXT="&#x5373;&#x52a0;&#x6cd5;&#x589e;&#x5927;&#x3001;&#x4e58;&#x6cd5;&#x51cf;&#x5c0f;">
<font NAME="SansSerif" SIZE="12"/>
</node>
</node>
</node>
</node>
</node>
<node COLOR="#ff00ff" CREATED="1318265755437" ID="ID_1033150060" MODIFIED="1318297903589" TEXT="&#x53ef;&#x80fd;&#x6709;&#x7269;&#x7406;&#x6545;&#x969c;/&#x5173;&#x673a;&#x7b49;&#x539f;&#x56e0;&#x5bfc;&#x81f4;&#x5bf9;&#x65b9;&#x6536;&#x4e0d;&#x5230;">
<font BOLD="true" NAME="SansSerif" SIZE="14"/>
</node>
</node>
</node>
<node COLOR="#0033ff" CREATED="1318259063750" ID="ID_1069483590" LINK="http://blog.csdn.net/Solstice/article/details/6171905" MODIFIED="1318297903589" POSITION="right" TEXT="basic service">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<font NAME="SansSerif" SIZE="18"/>
<node COLOR="#00b439" CREATED="1318259067656" ID="ID_1823509417" MODIFIED="1318259070546" TEXT="echo">
<edge STYLE="bezier" WIDTH="thin"/>
<font BOLD="true" NAME="SansSerif" SIZE="16"/>
<node COLOR="#ff00ff" CREATED="1318259907625" ID="ID_735293045" MODIFIED="1318297903589" TEXT="server">
<font BOLD="true" NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1318259916671" ID="ID_1482874581" MODIFIED="1318297903589" TEXT="start()">
<font NAME="SansSerif" SIZE="12"/>
</node>
<node COLOR="#111111" CREATED="1318259924234" ID="ID_761408003" MODIFIED="1318297903589" TEXT="onConnection()">
<font NAME="SansSerif" SIZE="12"/>
</node>
<node COLOR="#111111" CREATED="1318259931078" ID="ID_432691209" MODIFIED="1318297903589" TEXT="onMessage()">
<font NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node COLOR="#ff00ff" CREATED="1318260076625" ID="ID_1528389094" MODIFIED="1318297903589" TEXT="&#x5173;&#x6ce8;&#x4e8b;&#x4ef6;">
<font BOLD="true" NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1318260069750" ID="ID_1070676718" MODIFIED="1318260273031" TEXT="&#x6570;&#x636e;&#x5230;&#x8fbe;">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
</node>
</node>
<node COLOR="#00b439" CREATED="1318259822796" ID="ID_499679407" MODIFIED="1318259829156" TEXT="discard">
<edge STYLE="bezier" WIDTH="thin"/>
<font BOLD="true" NAME="SansSerif" SIZE="16"/>
<node COLOR="#ff00ff" CREATED="1318259863750" ID="ID_519628819" MODIFIED="1318297903589" TEXT="&#x4e22;&#x5f03;&#x6240;&#x6709;&#x6536;&#x5230;&#x7684;&#x6570;&#x636e;">
<font BOLD="true" NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#ff00ff" CREATED="1318260001765" ID="ID_1571667660" MODIFIED="1318297903589" TEXT="&#x7ed3;&#x6784;&#x4e0e;echo&#x7c7b;&#x4f3c;">
<font BOLD="true" NAME="SansSerif" SIZE="14"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1318259840593" ID="ID_1765033566" MODIFIED="1318260166750" TEXT="daytime/time">
<edge STYLE="bezier" WIDTH="thin"/>
<font BOLD="true" NAME="SansSerif" SIZE="16"/>
<node COLOR="#ff00ff" CREATED="1318260076625" ID="ID_1557373880" MODIFIED="1318297903589" TEXT="&#x5173;&#x6ce8;&#x4e8b;&#x4ef6;">
<font BOLD="true" NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1318260069750" ID="ID_339116453" MODIFIED="1318260131406" TEXT="&#x8fde;&#x63a5;&#x5df2;&#x5efa;&#x7acb;">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node COLOR="#ff00ff" CREATED="1318260185375" ID="ID_189381084" MODIFIED="1318297903589" TEXT="server">
<font BOLD="true" NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1318260187921" ID="ID_18097420" MODIFIED="1318297903589" TEXT="onConnection()">
<font NAME="SansSerif" SIZE="12"/>
</node>
</node>
</node>
<node COLOR="#00b439" CREATED="1318259844062" ID="ID_1824390798" MODIFIED="1318259847968" TEXT="cargen">
<edge STYLE="bezier" WIDTH="thin"/>
<font BOLD="true" NAME="SansSerif" SIZE="16"/>
<node COLOR="#ff00ff" CREATED="1318260304468" ID="ID_1076354852" MODIFIED="1318297903589" TEXT="&#x53ea;&#x53d1;&#x9001;&#x6570;&#x636e;&#xff0c;&#x4e0d;&#x63a5;&#x6536;&#x6570;&#x636e;">
<font BOLD="true" NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#ff00ff" CREATED="1318260076625" ID="ID_1780260188" MODIFIED="1318297903589" TEXT="&#x5173;&#x6ce8;&#x4e8b;&#x4ef6;">
<font BOLD="true" NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1318260069750" ID="ID_1840937663" MODIFIED="1318260260765" TEXT="&#x6570;&#x636e;&#x53d1;&#x9001;&#x5b8c;&#x6bd5;">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
</node>
</node>
<node COLOR="#00b439" CREATED="1318260839796" ID="ID_1119688753" MODIFIED="1318260842843" TEXT="chat">
<edge STYLE="bezier" WIDTH="thin"/>
<font BOLD="true" NAME="SansSerif" SIZE="16"/>
<node COLOR="#ff00ff" CREATED="1318261153265" ID="ID_1850538170" MODIFIED="1318297903605" TEXT="server">
<font BOLD="true" NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1318261155296" ID="ID_1407915985" MODIFIED="1318297903605" TEXT="listen()">
<font NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node COLOR="#ff00ff" CREATED="1318261174421" ID="ID_994436696" MODIFIED="1318297903605" TEXT="client">
<font BOLD="true" NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1318261176515" ID="ID_976560707" MODIFIED="1318297903605" TEXT="connect()">
<font NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node COLOR="#ff00ff" CREATED="1318261209062" ID="ID_1670408855" MODIFIED="1318297903605" TEXT="&#x8fde;&#x63a5;&#x7c7b;&#x578b;&#xff1a;&#x957f;&#x8fde;&#x63a5;">
<font BOLD="true" NAME="SansSerif" SIZE="14"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1318264220000" ID="ID_1807234003" MODIFIED="1318264222203" TEXT="finger">
<edge STYLE="bezier" WIDTH="thin"/>
<font BOLD="true" NAME="SansSerif" SIZE="16"/>
</node>
</node>
</node>
</map>
