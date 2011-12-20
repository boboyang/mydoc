<map version="0.9.0">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node COLOR="#000000" CREATED="1303284950672" ID="ID_390910199" MODIFIED="1303715324626" TEXT="Android">
<font NAME="SansSerif" SIZE="20"/>
<hook NAME="accessories/plugins/AutomaticLayout.properties"/>
<node COLOR="#0033ff" CREATED="1303284956453" ID="ID_1599328986" MODIFIED="1304932256260" POSITION="right" TEXT="component in sandbox">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<font NAME="SansSerif" SIZE="18"/>
<node COLOR="#00b439" CREATED="1303285112456" ID="ID_522695164" MODIFIED="1304992605137" TEXT="Intent">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<node COLOR="#ff00ff" CREATED="1304992564231" ID="ID_267984093" MODIFIED="1304992585215" TEXT="activating component asynchronously"/>
<node COLOR="#ff00ff" CREATED="1303292347243" ID="ID_1242352367" MODIFIED="1304992560153" TEXT="&lt;intent-filter&gt;">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1303292718377" ID="ID_496679513" MODIFIED="1303293242162" TEXT="in AndroidManifest.xml">
<font NAME="SansSerif" SIZE="12"/>
</node>
<node COLOR="#111111" CREATED="1303292831453" ID="ID_738939601" MODIFIED="1303293082400" TEXT="&lt;action android:name=&quot;...&quot;/&gt;">
<font NAME="SansSerif" SIZE="12"/>
</node>
<node COLOR="#111111" CREATED="1303292844874" ID="ID_307081997" MODIFIED="1303293203975" TEXT="&lt;category android:name=&quot;...&quot;/&gt; ">
<font NAME="SansSerif" SIZE="12"/>
</node>
<node COLOR="#111111" CREATED="1303292838609" ID="ID_352006849" MODIFIED="1303293475718" TEXT="&lt;data android:mimeType=&quot;video/mpeg&quot; android:scheme=&quot;http&quot; . . . /&gt;">
<font NAME="SansSerif" SIZE="12"/>
<node COLOR="#111111" CREATED="1303293724432" ID="ID_547299421" MODIFIED="1303293738166" TEXT="allow wildcards">
<font NAME="SansSerif" SIZE="12"/>
</node>
</node>
</node>
</node>
<node COLOR="#00b439" CREATED="1303284978075" ID="ID_988422069" MODIFIED="1303286048434" TEXT="Activity">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<node COLOR="#ff00ff" CREATED="1303285142377" ID="ID_1293110365" MODIFIED="1304992640730" TEXT="activating">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1303285443569" ID="ID_134443403" MODIFIED="1303285719158" TEXT="startActivity()">
<font NAME="SansSerif" SIZE="12"/>
</node>
<node COLOR="#111111" CREATED="1303285446960" ID="ID_488885547" MODIFIED="1303285719158" TEXT="startActivityForResult()">
<font NAME="SansSerif" SIZE="12"/>
<node COLOR="#111111" CREATED="1303787688478" ID="ID_1054662284" MODIFIED="1303787693805" TEXT="Intent.putExtra()">
<font NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node COLOR="#111111" CREATED="1303788067075" ID="ID_927954324" MODIFIED="1303788068746" TEXT="setResult()">
<font NAME="SansSerif" SIZE="12"/>
</node>
<node COLOR="#111111" CREATED="1303785550072" ID="ID_1616966258" MODIFIED="1303785784110" TEXT="onActivityResult()">
<font NAME="SansSerif" SIZE="12"/>
<node COLOR="#111111" CREATED="1303785837762" ID="ID_1349036771" MODIFIED="1303785843095" TEXT="Intent.getExtras()">
<font NAME="SansSerif" SIZE="12"/>
<node COLOR="#111111" CREATED="1303785794887" ID="ID_1898698916" MODIFIED="1303785796566" TEXT="getString()">
<font NAME="SansSerif" SIZE="12"/>
</node>
<node COLOR="#111111" CREATED="1303785868478" ID="ID_1105776802" MODIFIED="1303785869859" TEXT="getLong()">
<font NAME="SansSerif" SIZE="12"/>
</node>
</node>
</node>
<node COLOR="#111111" CREATED="1304991791548" ID="ID_998973302" MODIFIED="1304991795126" TEXT="finish()">
<font NAME="SansSerif" SIZE="12"/>
</node>
<node COLOR="#111111" CREATED="1304991832126" ID="ID_709391582" MODIFIED="1304991832829" TEXT="finishActivity()">
<font NAME="SansSerif" SIZE="12"/>
</node>
</node>
</node>
<node COLOR="#00b439" CREATED="1303284979638" ID="ID_1620815160" MODIFIED="1303284995823" TEXT="Service">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<node COLOR="#ff00ff" CREATED="1304991634018" ID="ID_1747713470" MODIFIED="1304991650721" TEXT="no UI, run in background"/>
<node COLOR="#ff00ff" CREATED="1303285480115" ID="ID_1356542649" MODIFIED="1304994032346" TEXT="activating">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1303285488272" ID="ID_249790404" MODIFIED="1303285720830" TEXT="startService()">
<font NAME="SansSerif" SIZE="12"/>
</node>
<node COLOR="#111111" CREATED="1303285489600" ID="ID_1475243288" MODIFIED="1303285720830" TEXT="bindService()">
<font NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node COLOR="#ff00ff" CREATED="1304921045803" ID="ID_1571590134" MODIFIED="1304921049350" TEXT="IntentService">
<node COLOR="#111111" CREATED="1304991656768" ID="ID_123425487" MODIFIED="1304991670893" TEXT="subclass for easy use">
<font NAME="SansSerif" SIZE="12"/>
</node>
<node COLOR="#111111" CREATED="1304921050553" ID="ID_1971733591" MODIFIED="1304921061787" TEXT="single thread">
<font NAME="SansSerif" SIZE="12"/>
</node>
<node COLOR="#111111" CREATED="1304921067225" ID="ID_843594261" MODIFIED="1304921081006" TEXT="override onHandleIntent()">
<font NAME="SansSerif" SIZE="12"/>
</node>
<node COLOR="#111111" CREATED="1304922123396" ID="ID_796305702" MODIFIED="1304922140771" TEXT="must write constructor with no parameter">
<font NAME="SansSerif" SIZE="12"/>
</node>
</node>
</node>
<node COLOR="#00b439" CREATED="1303285004791" ID="ID_1026172935" MODIFIED="1304992597465" TEXT="Broadcast receiver">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<node COLOR="#ff00ff" CREATED="1304870731718" ID="ID_988151290" MODIFIED="1304918202198" TEXT="classes">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1304870688203" ID="ID_349615404" MODIFIED="1304870738640" TEXT="Normal broadcasts ">
<font NAME="SansSerif" SIZE="12"/>
</node>
<node COLOR="#111111" CREATED="1304870689390" ID="ID_369466674" MODIFIED="1304870736218" TEXT="Ordered broadcasts">
<font NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node COLOR="#ff00ff" CREATED="1303285502349" ID="ID_1176340328" MODIFIED="1304992684839" TEXT="activating">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1303285535614" ID="ID_1940364865" MODIFIED="1303285724689" TEXT="sendBroadcast()">
<font NAME="SansSerif" SIZE="12"/>
</node>
<node COLOR="#111111" CREATED="1303285547864" ID="ID_915667305" MODIFIED="1303285724689" TEXT="sendOrderedBroadcast()">
<font NAME="SansSerif" SIZE="12"/>
</node>
<node COLOR="#111111" CREATED="1303285549098" ID="ID_1118475475" MODIFIED="1303285724689" TEXT="sendStickyBroadcast()">
<font NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node COLOR="#ff00ff" CREATED="1304870751296" ID="ID_25727948" MODIFIED="1304918202198" TEXT="Receiver Lifecycle">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1304870772187" ID="ID_984348705" MODIFIED="1304918202198" TEXT="only valid onReceive(Context, Intent)">
<font NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node COLOR="#ff00ff" CREATED="1304870833625" ID="ID_1058273033" MODIFIED="1304918202198" TEXT="sendBroadcast(Intent)">
<font NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#ff00ff" CREATED="1304870862453" ID="ID_1017156154" MODIFIED="1304918202198" TEXT="Permissions">
<font NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#ff00ff" CREATED="1304870940343" ID="ID_754067321" MODIFIED="1304918202198" TEXT="register">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1304870944718" ID="ID_986084674" MODIFIED="1304918202198" TEXT="static in manifest.xml">
<font NAME="SansSerif" SIZE="12"/>
</node>
<node COLOR="#111111" CREATED="1304870964578" ID="ID_1061003125" MODIFIED="1304994094862" TEXT="dynamic in codes">
<font NAME="SansSerif" SIZE="12"/>
<node COLOR="#111111" CREATED="1303292727549" ID="ID_939493787" MODIFIED="1304994087174" TEXT="Context.registerReceiver()">
<font NAME="SansSerif" SIZE="12"/>
</node>
</node>
</node>
<node COLOR="#ff00ff" CREATED="1304871818765" ID="ID_255191949" LINK="http://android.blog.51cto.com/268543/521784" MODIFIED="1304918202198" TEXT="refer">
<font NAME="SansSerif" SIZE="14"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1303284996151" ID="ID_722674712" MODIFIED="1304928064643" TEXT="ContentProvider">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<node COLOR="#ff00ff" CREATED="1304930806472" ID="ID_1747069673" MODIFIED="1304930831097" TEXT="share data between applications"/>
<node COLOR="#ff00ff" CREATED="1303286574032" ID="ID_699147677" MODIFIED="1304918202198" TEXT="ContentResolver">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1303286508829" ID="ID_379751213" MODIFIED="1303286577970" TEXT="getContentResolver()">
<font NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node COLOR="#ff00ff" CREATED="1303286908154" ID="ID_1786146020" MODIFIED="1304918202198" TEXT="action">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1303286532767" ID="ID_1502199805" MODIFIED="1303286915701" TEXT="query">
<font NAME="SansSerif" SIZE="12"/>
<node COLOR="#111111" CREATED="1303287237618" ID="ID_1924107032" MODIFIED="1303287238524" TEXT=" ContentResolver.query()">
<font NAME="SansSerif" SIZE="12"/>
<node COLOR="#111111" CREATED="1304992494591" ID="ID_1557415920" MODIFIED="1304992495184" TEXT="synchronous">
<font NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node COLOR="#111111" CREATED="1303287238961" ID="ID_1424538093" MODIFIED="1303287261695" TEXT="Activity.managedQuery()">
<font NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node COLOR="#111111" CREATED="1303286535111" ID="ID_1868713643" MODIFIED="1303286917029" TEXT="modify">
<font NAME="SansSerif" SIZE="12"/>
</node>
<node COLOR="#111111" CREATED="1303286536861" ID="ID_838649265" MODIFIED="1303286918482" TEXT="create">
<font NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node COLOR="#ff00ff" CREATED="1303286940060" ID="ID_1545403807" MODIFIED="1304918202198" TEXT="data set">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1303286743938" ID="ID_1571483512" MODIFIED="1303286955263" TEXT="The data model">
<font NAME="SansSerif" SIZE="12"/>
<node COLOR="#111111" CREATED="1303286762485" ID="ID_1532917640" MODIFIED="1303286763672" TEXT="_ID">
<font NAME="SansSerif" SIZE="12"/>
</node>
<node COLOR="#111111" CREATED="1303286781329" ID="ID_1092975000" MODIFIED="1303286782703" TEXT="Cursor">
<font NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node COLOR="#111111" CREATED="1303286745798" ID="ID_1267412270" MODIFIED="1303286951872" TEXT="URI">
<font NAME="SansSerif" SIZE="12"/>
<node COLOR="#111111" CREATED="1303286839171" ID="ID_1726994927" MODIFIED="1303286839937" TEXT="content://">
<font NAME="SansSerif" SIZE="12"/>
</node>
<node COLOR="#111111" CREATED="1303287366116" ID="ID_1455245440" MODIFIED="1303287368272" TEXT="helper method">
<font NAME="SansSerif" SIZE="12"/>
<node COLOR="#111111" CREATED="1303287368272" ID="ID_1956431872" MODIFIED="1303287375491" TEXT="ContentUris.withAppendedId()">
<font NAME="SansSerif" SIZE="12"/>
</node>
<node COLOR="#111111" CREATED="1303287375788" ID="ID_614669366" MODIFIED="1303287784379" TEXT=" Uri.withAppendedPath()">
<font NAME="SansSerif" SIZE="12"/>
</node>
</node>
</node>
</node>
</node>
</node>
<node COLOR="#0033ff" CREATED="1303369619311" FOLDED="true" ID="ID_777799439" MODIFIED="1304930849347" POSITION="left" TEXT="process &amp; thread">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<font NAME="SansSerif" SIZE="18"/>
<node COLOR="#00b439" CREATED="1303366936501" ID="ID_376384467" MODIFIED="1303369626358" TEXT="process">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<node COLOR="#ff00ff" CREATED="1303369475875" ID="ID_750218749" MODIFIED="1304918202198" TEXT="importance hierarchy">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1303367000063" ID="ID_867982482" MODIFIED="1303369626358" TEXT="Foreground process">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="full-1"/>
</node>
<node COLOR="#111111" CREATED="1303367001297" ID="ID_193495993" MODIFIED="1303369626358" TEXT="Visible process">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="full-2"/>
</node>
<node COLOR="#111111" CREATED="1303367007672" ID="ID_178900491" MODIFIED="1303369626358" TEXT="Service process">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="full-3"/>
<node COLOR="#111111" CREATED="1303367129515" ID="ID_1154425220" MODIFIED="1303369490234" TEXT="suitable for long-running operation">
<font NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node COLOR="#111111" CREATED="1303367013704" ID="ID_1085926915" MODIFIED="1303369626358" TEXT="Background process">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="full-4"/>
</node>
<node COLOR="#111111" CREATED="1303367019110" ID="ID_606293666" MODIFIED="1303369626358" TEXT="Empty process">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="full-5"/>
</node>
</node>
<node COLOR="#ff00ff" CREATED="1303369433876" ID="ID_1851101618" MODIFIED="1304918202198" TEXT="IPC">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1303369436813" ID="ID_277649831" MODIFIED="1303369626358" TEXT="using bindService()">
<font NAME="SansSerif" SIZE="12"/>
</node>
</node>
</node>
<node COLOR="#00b439" CREATED="1303366940486" ID="ID_1555960155" MODIFIED="1303369628217" TEXT="thread">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<node COLOR="#ff00ff" CREATED="1303366965876" ID="ID_1046404297" MODIFIED="1304918202198" TEXT="UI thread">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1303367443307" ID="ID_1085148967" MODIFIED="1303369628217" TEXT="Do not block the UI thread">
<font NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="full-1"/>
</node>
<node COLOR="#111111" CREATED="1303367444276" ID="ID_264121314" MODIFIED="1303369628217" TEXT="Do not access the Android UI toolkit from outside the UI thread">
<font NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="full-2"/>
</node>
</node>
<node COLOR="#ff00ff" CREATED="1303366967720" ID="ID_175178402" MODIFIED="1304918202198" TEXT="worker thread">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1303367615915" ID="ID_905703920" MODIFIED="1303369628217" TEXT="Using AsyncTask">
<font NAME="SansSerif" SIZE="12"/>
<node COLOR="#111111" CREATED="1303368424920" ID="ID_1372097206" MODIFIED="1303368425529" TEXT="Usage">
<font NAME="SansSerif" SIZE="12"/>
</node>
<node COLOR="#111111" CREATED="1303368426076" ID="ID_599087807" MODIFIED="1303368451029" TEXT="generic types">
<font NAME="SansSerif" SIZE="12"/>
<node COLOR="#111111" CREATED="1303368458591" ID="ID_940293519" MODIFIED="1303368492747" TEXT="Params">
<font NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="full-1"/>
</node>
<node COLOR="#111111" CREATED="1303368459654" ID="ID_105669754" MODIFIED="1303368496294" TEXT="Progress">
<font NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="full-2"/>
</node>
<node COLOR="#111111" CREATED="1303368484403" ID="ID_30961837" MODIFIED="1303368499153" TEXT="Result">
<font NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="full-3"/>
</node>
</node>
<node COLOR="#111111" CREATED="1303368520825" ID="ID_1076474412" MODIFIED="1303368522887" TEXT="The 4 steps">
<font NAME="SansSerif" SIZE="12"/>
<node COLOR="#111111" CREATED="1303368557246" ID="ID_1340277073" MODIFIED="1303368607543" TEXT="onPreExecute()">
<font NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="full-1"/>
</node>
<node COLOR="#111111" CREATED="1303368565246" ID="ID_1527592706" MODIFIED="1303368610105" TEXT="doInBackground(Params...)">
<font NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="full-2"/>
</node>
<node COLOR="#111111" CREATED="1303368566356" ID="ID_1666721479" MODIFIED="1303368611449" TEXT="onProgressUpdate(Progress...)">
<font NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="full-3"/>
</node>
<node COLOR="#111111" CREATED="1303368603902" ID="ID_515487412" MODIFIED="1303368612058" TEXT="onPostExecute(Result)">
<font NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="full-4"/>
</node>
</node>
<node COLOR="#111111" CREATED="1303368670292" ID="ID_565280209" MODIFIED="1303368671057" TEXT="Cancelling a task">
<font NAME="SansSerif" SIZE="12"/>
<node COLOR="#111111" CREATED="1303368678745" ID="ID_1586773612" MODIFIED="1303368679432" TEXT=" cancel(boolean)">
<font NAME="SansSerif" SIZE="12"/>
</node>
<node COLOR="#111111" CREATED="1303368679807" ID="ID_1683216739" MODIFIED="1303368685338" TEXT="isCancelled()">
<font NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node COLOR="#111111" CREATED="1303368701994" ID="ID_364052570" MODIFIED="1303368703526" TEXT="Threading rules">
<font NAME="SansSerif" SIZE="12"/>
</node>
</node>
</node>
<node COLOR="#ff00ff" CREATED="1303369030334" ID="ID_219246611" MODIFIED="1304918202198" TEXT="Thread-safe methods">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1303369290893" ID="ID_1614819056" MODIFIED="1303369628217" TEXT=" bound service">
<font NAME="SansSerif" SIZE="12"/>
</node>
</node>
</node>
</node>
<node COLOR="#0033ff" CREATED="1303369610311" ID="ID_610118405" MODIFIED="1305530428850" POSITION="left" TEXT="User Interface">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<font NAME="SansSerif" SIZE="18"/>
<node COLOR="#00b439" CREATED="1303374973215" ID="ID_1269818519" MODIFIED="1303374974934" TEXT="View">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<node COLOR="#ff00ff" CREATED="1303375027714" ID="ID_1733466820" MODIFIED="1304918202198" TEXT="setContentView()">
<font NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#ff00ff" CREATED="1303702402022" ID="ID_361838266" MODIFIED="1304918202198" TEXT="AdapterView">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1303710662494" ID="ID_1234668212" MODIFIED="1303710686647" TEXT="type">
<font NAME="SansSerif" SIZE="12"/>
<node COLOR="#111111" CREATED="1303709670269" ID="ID_898915191" LINK="file:///C:/Program%20Files/Android/android-sdk/docs/resources/tutorials/views/hello-spinner.html" MODIFIED="1303710666535" TEXT="Spinner">
<font NAME="SansSerif" SIZE="12"/>
</node>
<node COLOR="#111111" CREATED="1303709751060" ID="ID_1454146736" LINK="file:///C:/Program%20Files/Android/android-sdk/docs/resources/tutorials/views/hello-listview.html" MODIFIED="1303710668033" TEXT="ListView">
<font NAME="SansSerif" SIZE="12"/>
</node>
<node COLOR="#111111" CREATED="1303709806163" ID="ID_993252299" LINK="file:///C:/Program%20Files/Android/android-sdk/docs/resources/tutorials/views/hello-gridview.html" MODIFIED="1303710669422" TEXT="GridView">
<font NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node COLOR="#111111" CREATED="1303710653117" ID="ID_871255534" MODIFIED="1303710686647" TEXT="responsibilities">
<font NAME="SansSerif" SIZE="12"/>
<node COLOR="#111111" CREATED="1303710636889" ID="ID_133982566" MODIFIED="1303710658422" TEXT="Filling the layout with data">
<font NAME="SansSerif" SIZE="12"/>
</node>
<node COLOR="#111111" CREATED="1303710644894" ID="ID_887410610" MODIFIED="1303710659623" TEXT="Handling user selections">
<font NAME="SansSerif" SIZE="12"/>
</node>
</node>
</node>
</node>
<node COLOR="#00b439" CREATED="1303374976668" ID="ID_1423562473" LINK="http://developer.android.com/guide/topics/ui/index.html#Layout" MODIFIED="1303376081013" TEXT="Layout">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<node COLOR="#ff00ff" CREATED="1303377010908" ID="ID_295474120" MODIFIED="1304918202214" TEXT="xml">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1303377119141" ID="ID_1424889283" MODIFIED="1303377119906" TEXT="Write the XML">
<font NAME="SansSerif" SIZE="12"/>
</node>
<node COLOR="#111111" CREATED="1303377130141" ID="ID_423825584" LINK="http://developer.android.com/guide/topics/ui/declaring-layout.html#load" MODIFIED="1303377147953" TEXT="Load the XML Resource">
<font NAME="SansSerif" SIZE="12"/>
</node>
<node COLOR="#111111" CREATED="1303377177687" ID="ID_875355446" MODIFIED="1303377202952" TEXT="Attributes">
<font NAME="SansSerif" SIZE="12"/>
<node COLOR="#111111" CREATED="1303377180484" ID="ID_520670310" MODIFIED="1303377181671" TEXT="ID">
<font NAME="SansSerif" SIZE="12"/>
</node>
<node COLOR="#111111" CREATED="1303377307779" ID="ID_1057709299" LINK="http://developer.android.com/guide/topics/ui/declaring-layout.html#layout-params" MODIFIED="1303377315216" TEXT="parameter">
<font NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node COLOR="#111111" CREATED="1303377428934" ID="ID_1292830791" LINK="http://developer.android.com/guide/topics/ui/declaring-layout.html#Position" MODIFIED="1303377442324" TEXT="position">
<font NAME="SansSerif" SIZE="12"/>
</node>
<node COLOR="#111111" CREATED="1303377513995" ID="ID_921043268" MODIFIED="1303377515386" TEXT="Size, Padding and Margins">
<font NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node COLOR="#ff00ff" CREATED="1303377013705" ID="ID_164137479" MODIFIED="1304918202214" TEXT="runtime">
<font NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#ff00ff" CREATED="1303710847960" ID="ID_1944470873" MODIFIED="1304918202214" TEXT="type">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1303710850582" ID="ID_368349604" MODIFIED="1303710910580" TEXT="FrameLayout">
<font NAME="SansSerif" SIZE="12"/>
</node>
<node COLOR="#111111" CREATED="1303710856792" ID="ID_1214055634" MODIFIED="1303710902965" TEXT="LinearLayout">
<font NAME="SansSerif" SIZE="12"/>
</node>
<node COLOR="#111111" CREATED="1303710895116" ID="ID_1791646195" MODIFIED="1303710895553" TEXT="TableLayout">
<font NAME="SansSerif" SIZE="12"/>
</node>
<node COLOR="#111111" CREATED="1303711065687" ID="ID_1732772939" LINK="file:///C:/Program%20Files/Android/android-sdk/docs/guide/topics/ui/layout-objects.html#relativelayout" MODIFIED="1303711071180" TEXT="RelativeLayout">
<font NAME="SansSerif" SIZE="12"/>
</node>
</node>
</node>
<node COLOR="#00b439" CREATED="1303376246902" ID="ID_767783064" LINK="http://developer.android.com/guide/topics/ui/index.html#Menus" MODIFIED="1303376256527" TEXT="Menus">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<node COLOR="#ff00ff" CREATED="1303378099800" ID="ID_1856976045" MODIFIED="1304918202214" TEXT="type">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1303378110003" ID="ID_432443980" MODIFIED="1303378120284" TEXT="Options Menu">
<font NAME="SansSerif" SIZE="12"/>
</node>
<node COLOR="#111111" CREATED="1303378131643" ID="ID_1282524056" MODIFIED="1303378132503" TEXT="Context Menu">
<font NAME="SansSerif" SIZE="12"/>
<node COLOR="#111111" CREATED="1303379127584" ID="ID_279814640" MODIFIED="1303379352659" TEXT="long press">
<font NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node COLOR="#111111" CREATED="1303378133628" ID="ID_1509964003" MODIFIED="1303378153049" TEXT="Submenu">
<font NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node COLOR="#ff00ff" CREATED="1303378101644" ID="ID_1929344765" LINK="http://developer.android.com/guide/topics/ui/menus.html#options-menu" MODIFIED="1304918202214" TEXT="Creating an Options Menu">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1303379248707" ID="ID_1015306449" MODIFIED="1303379250301" TEXT="onCreateOptionsMenu()">
<font NAME="SansSerif" SIZE="12"/>
</node>
<node COLOR="#111111" CREATED="1303378943477" ID="ID_991212872" MODIFIED="1303378948571" TEXT="onOptionsItemSelected()">
<font NAME="SansSerif" SIZE="12"/>
</node>
<node COLOR="#111111" CREATED="1303379045132" ID="ID_1031317290" MODIFIED="1303379046335" TEXT="onPrepareOptionsMenu()">
<font NAME="SansSerif" SIZE="12"/>
<node COLOR="#111111" CREATED="1303378959883" ID="ID_1767167219" MODIFIED="1303379062788" TEXT="Changing menu items at runtime">
<font NAME="SansSerif" SIZE="12"/>
</node>
</node>
</node>
<node COLOR="#ff00ff" CREATED="1303379069225" ID="ID_1978734007" LINK="http://developer.android.com/guide/topics/ui/menus.html#context-menu" MODIFIED="1304918202214" TEXT="Creating a Context Menu">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1303798765936" ID="ID_177581206" MODIFIED="1303798772294" TEXT="long press">
<font NAME="SansSerif" SIZE="12"/>
</node>
<node COLOR="#111111" CREATED="1303379197239" ID="ID_1522550334" MODIFIED="1303379198020" TEXT="registerForContextMenu() ">
<font NAME="SansSerif" SIZE="12"/>
</node>
<node COLOR="#111111" CREATED="1303379219020" ID="ID_1364162061" MODIFIED="1303379219708" TEXT="onCreateContextMenu()">
<font NAME="SansSerif" SIZE="12"/>
</node>
<node COLOR="#111111" CREATED="1303379225786" ID="ID_1009417198" MODIFIED="1303379227895" TEXT="onContextItemSelected()">
<font NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node COLOR="#ff00ff" CREATED="1303379336566" ID="ID_397051915" MODIFIED="1304918202214" TEXT="Creating Submenu">
<font NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#ff00ff" CREATED="1303379403455" ID="ID_518431467" MODIFIED="1304918202214" TEXT="Other Menu Features">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1303379430517" ID="ID_1937843240" LINK="http://developer.android.com/guide/topics/ui/menus.html#groups" MODIFIED="1303379509829" TEXT="Menu group">
<font NAME="SansSerif" SIZE="12"/>
</node>
<node COLOR="#111111" CREATED="1303379455439" ID="ID_1548186238" MODIFIED="1303379456564" TEXT="Checkable menu items">
<font NAME="SansSerif" SIZE="12"/>
</node>
<node COLOR="#111111" CREATED="1303379468595" ID="ID_1301621655" MODIFIED="1303379469767" TEXT="Shortcut keys">
<font NAME="SansSerif" SIZE="12"/>
<node COLOR="#111111" CREATED="1303379557672" ID="ID_1692734602" MODIFIED="1303379558235" TEXT="android:alphabeticShortcut">
<font NAME="SansSerif" SIZE="12"/>
</node>
<node COLOR="#111111" CREATED="1303379567984" ID="ID_1021800026" MODIFIED="1303379568547" TEXT="setAlphabeticShortcut(char) ">
<font NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node COLOR="#111111" CREATED="1303379579281" ID="ID_943747189" MODIFIED="1303379580594" TEXT="Dynamically adding menu intents">
<font NAME="SansSerif" SIZE="12"/>
</node>
</node>
</node>
<node COLOR="#00b439" CREATED="1303438844450" ID="ID_582996505" MODIFIED="1304867678562" TEXT="Dialog">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<node COLOR="#ff00ff" CREATED="1303440853471" ID="ID_1778034004" MODIFIED="1304918202214" TEXT="action">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1303438904433" ID="ID_1419201698" MODIFIED="1303440857065" TEXT="showDialog(int)">
<font NAME="SansSerif" SIZE="12"/>
<node COLOR="#111111" CREATED="1303438864793" ID="ID_1907327767" MODIFIED="1303440859049" TEXT="onCreateDialog(int)">
<font NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node COLOR="#111111" CREATED="1303439044025" ID="ID_1225150286" MODIFIED="1303440861143" TEXT="dismissDialog(int)">
<font NAME="SansSerif" SIZE="12"/>
</node>
<node COLOR="#111111" CREATED="1303439045479" ID="ID_1546043316" MODIFIED="1303440862783" TEXT=" dismiss()">
<font NAME="SansSerif" SIZE="12"/>
</node>
<node COLOR="#111111" CREATED="1303439240179" ID="ID_897401787" MODIFIED="1303440864393" TEXT="removeDialog(int)">
<font NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node COLOR="#ff00ff" CREATED="1303440639099" ID="ID_1240049250" MODIFIED="1304918202214" TEXT="type">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1303439321475" ID="ID_1628628700" MODIFIED="1303440643474" TEXT="AlertDialog">
<font NAME="SansSerif" SIZE="12"/>
<node COLOR="#111111" CREATED="1303440662770" ID="ID_1220261590" MODIFIED="1303440663989" TEXT=".Builder">
<font NAME="SansSerif" SIZE="12"/>
</node>
<node COLOR="#111111" CREATED="1303440629677" ID="ID_1414551530" MODIFIED="1303440645099" TEXT="ProgressDialog">
<font NAME="SansSerif" SIZE="12"/>
<node COLOR="#111111" CREATED="1303440984516" ID="ID_197957944" MODIFIED="1303440986579" TEXT=".show()">
<font NAME="SansSerif" SIZE="12"/>
</node>
</node>
</node>
<node COLOR="#111111" CREATED="1303441319434" ID="ID_205585644" MODIFIED="1303441320621" TEXT="Custom Dialog">
<font NAME="SansSerif" SIZE="12"/>
</node>
</node>
</node>
<node COLOR="#00b439" CREATED="1303376115779" ID="ID_1050678796" MODIFIED="1303376117341" TEXT="Widgets">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1303376138888" ID="ID_1943448569" MODIFIED="1303376140075" TEXT="UI Events">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<node COLOR="#ff00ff" CREATED="1303462170544" ID="ID_646455258" LINK="file:///C:/Program%20Files/Android/android-sdk/docs/guide/topics/ui/ui-events.html#EventListeners" MODIFIED="1304918202214" TEXT="Event Listener">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1303462230637" ID="ID_1054078101" MODIFIED="1303462231402" TEXT="onClick()">
<font NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node COLOR="#ff00ff" CREATED="1303462293480" ID="ID_88601763" MODIFIED="1304918202214" TEXT="Event Handler">
<font NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#ff00ff" CREATED="1303462365635" ID="ID_359302165" MODIFIED="1304918202214" TEXT="Touch Mode">
<font NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#ff00ff" CREATED="1303462474649" ID="ID_895017159" MODIFIED="1304918202214" TEXT="Handling Focus">
<font NAME="SansSerif" SIZE="14"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1303462527399" ID="ID_1392456800" MODIFIED="1303462529258" TEXT="Notifying the User">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<node COLOR="#ff00ff" CREATED="1303462555758" ID="ID_1067301847" MODIFIED="1304918202214" TEXT="Toast Notification">
<font NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#ff00ff" CREATED="1303462589054" ID="ID_373601086" MODIFIED="1304918202214" TEXT="Status Bar Notification">
<font NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#ff00ff" CREATED="1303462597523" ID="ID_743465912" MODIFIED="1304918202214" TEXT="Dialog Notification">
<font NAME="SansSerif" SIZE="14"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1303376484415" ID="ID_722929104" MODIFIED="1303376485102" TEXT="Advanced Topics">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<node COLOR="#ff00ff" CREATED="1303376826707" ID="ID_87262167" MODIFIED="1304918202214" TEXT="Adapters">
<font NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#ff00ff" CREATED="1303376928018" ID="ID_1063212704" MODIFIED="1304918202214" TEXT="Styles and Themes">
<font NAME="SansSerif" SIZE="14"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1303700228783" ID="ID_1384326382" LINK="file:///C:/Program%20Files/Android/android-sdk/docs/guide/topics/ui/themes.html" MODIFIED="1303700237376" TEXT="Applying Styles and Themes">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
</node>
</node>
<node COLOR="#0033ff" CREATED="1303285246794" ID="ID_415891529" MODIFIED="1303715330683" POSITION="left" TEXT="Application Resources">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<font NAME="SansSerif" SIZE="18"/>
<node COLOR="#00b439" CREATED="1303711606999" ID="ID_1423151607" LINK="file:///C:/Program%20Files/Android/android-sdk/docs/guide/topics/resources/providing-resources.html" MODIFIED="1303711615145" TEXT="Providing">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<node COLOR="#ff00ff" CREATED="1303711646120" ID="ID_1406200114" MODIFIED="1304918202214" TEXT="Grouping Resource Types">
<font NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#ff00ff" CREATED="1303711724332" ID="ID_977444273" MODIFIED="1304918202214" TEXT="Alternative Resources">
<font NAME="SansSerif" SIZE="14"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1303712342690" ID="ID_375720886" LINK="file:///C:/Program%20Files/Android/android-sdk/docs/guide/topics/resources/accessing-resources.html" MODIFIED="1303712382606" TEXT="Accessing">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<node COLOR="#ff00ff" CREATED="1303712350636" ID="ID_1330076751" MODIFIED="1304918202214" TEXT="In code">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1303712361162" ID="ID_1007788833" MODIFIED="1303712369296" TEXT="R.string.hello">
<font NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node COLOR="#ff00ff" CREATED="1303712351965" ID="ID_193371240" MODIFIED="1304918202214" TEXT="In XML">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1303712374598" ID="ID_1876715904" MODIFIED="1303715254976" TEXT="@string/hello">
<font NAME="SansSerif" SIZE="12"/>
</node>
</node>
</node>
<node COLOR="#00b439" CREATED="1303712472871" ID="ID_154081143" MODIFIED="1303712473418" TEXT="Handling Runtime Changes">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1303713005184" ID="ID_1868701529" LINK="file:///C:/Program%20Files/Android/android-sdk/docs/guide/topics/resources/localization.html" MODIFIED="1303713011008" TEXT="Localization">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1303713025201" ID="ID_1643352078" LINK="file:///C:/Program%20Files/Android/android-sdk/docs/guide/topics/resources/available-resources.html" MODIFIED="1303713121765" TEXT="Resource Types">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
</node>
</node>
<node COLOR="#0033ff" CREATED="1303713692289" ID="ID_1512539937" MODIFIED="1303715332572" POSITION="left" TEXT="Data storage">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<font NAME="SansSerif" SIZE="18"/>
<node COLOR="#00b439" CREATED="1303713773258" ID="ID_307909056" MODIFIED="1303714171546" TEXT="Shared Preferences">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<node COLOR="#ff00ff" CREATED="1303713913202" ID="ID_650982093" MODIFIED="1304918202214" TEXT=" persistent key-value pairs of primitive data types">
<font NAME="SansSerif" SIZE="14"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1303713922755" ID="ID_427192479" MODIFIED="1304918202198" TEXT="Internal Storage">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<hook NAME="accessories/plugins/BlinkingNodeHook.properties"/>
</node>
<node COLOR="#00b439" CREATED="1303714145867" ID="ID_452299801" MODIFIED="1303714177353" TEXT="External Storage">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1303714146913" ID="ID_391501564" MODIFIED="1303714179835" TEXT="Databases">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1303714211726" ID="ID_10504184" MODIFIED="1303714215378" TEXT="Network Connection">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
</node>
</node>
<node COLOR="#0033ff" CREATED="1303714302637" ID="ID_1537713043" MODIFIED="1303715335132" POSITION="left" TEXT="Security and Permissions">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<font NAME="SansSerif" SIZE="18"/>
<node COLOR="#00b439" CREATED="1303714516132" ID="ID_1703683848" MODIFIED="1303714517693" TEXT="Security Architecture">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<node COLOR="#ff00ff" CREATED="1303714518771" ID="ID_209674457" MODIFIED="1304918202214" TEXT="sandboxes applications by default">
<font NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#ff00ff" CREATED="1303714555329" ID="ID_1645436373" MODIFIED="1304918202214" TEXT="explicitly share resources and data">
<font NAME="SansSerif" SIZE="14"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1303714580757" ID="ID_405710299" MODIFIED="1303714582271" TEXT="Application Signing">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1303714621873" ID="ID_120311657" MODIFIED="1303714623247" TEXT="User IDs and File Access">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1303714723228" ID="ID_742840910" MODIFIED="1303714723618" TEXT="Using Permissions">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1303714734014" ID="ID_830382952" MODIFIED="1303714735356" TEXT="Declaring and Enforcing Permissions">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1303714782077" ID="ID_846816160" MODIFIED="1304918202198" TEXT="URI Permissions">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<hook NAME="accessories/plugins/BlinkingNodeHook.properties"/>
</node>
</node>
<node COLOR="#0033ff" CREATED="1303285195843" ID="ID_395582200" LINK="file:///C:/Program%20Files/Android/android-sdk/docs/guide/topics/manifest/manifest-intro.html#filef" MODIFIED="1303716078580" POSITION="left" TEXT="AndroidManifest.xml">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<font NAME="SansSerif" SIZE="18"/>
<node COLOR="#00b439" CREATED="1303716027333" ID="ID_430452665" MODIFIED="1303716028004" TEXT="Structure ">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1303716045752" ID="ID_509971762" MODIFIED="1303716047095" TEXT="File Conventions">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1303716059270" ID="ID_1693070723" MODIFIED="1303716061097" TEXT="File Features">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1303716159954" ID="ID_898616384" MODIFIED="1303716160968" TEXT="aim">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<node COLOR="#ff00ff" CREATED="1303285309807" ID="ID_935436285" MODIFIED="1304918202214" TEXT="Declaring components">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#ff00ff" CREATED="1303285390867" ID="ID_50914607" MODIFIED="1304918202214" TEXT="Declaring application requirements">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#ff00ff" CREATED="1303716178810" ID="ID_312163483" MODIFIED="1304918202214" TEXT="declare permissions">
<font NAME="SansSerif" SIZE="14"/>
</node>
</node>
</node>
<node COLOR="#0033ff" CREATED="1304871256781" ID="ID_705131128" MODIFIED="1304871613750" POSITION="right" TEXT="develop.tools">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<font NAME="SansSerif" SIZE="18"/>
<node COLOR="#00b439" CREATED="1304871259890" ID="ID_166698961" MODIFIED="1304871261453" TEXT="debug">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<node COLOR="#ff00ff" CREATED="1304871350250" ID="ID_357718999" MODIFIED="1304997905975" TEXT="Toast note">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#ff00ff" CREATED="1304871337859" ID="ID_225225207" MODIFIED="1304997934334" TEXT="console">
<font NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#ff00ff" CREATED="1304871262296" ID="ID_586477845" MODIFIED="1304997917678" TEXT="log">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1304997949990" ID="ID_383369251" MODIFIED="1304997987568" TEXT="Log.i(), Log.e()...">
<font NAME="SansSerif" SIZE="12"/>
</node>
<node COLOR="#111111" CREATED="1304871322281" ID="ID_1897115037" MODIFIED="1305015897053" TEXT="view by DDMS/LogCat">
<font NAME="SansSerif" SIZE="12"/>
<node COLOR="#111111" CREATED="1304871331359" ID="ID_968304359" MODIFIED="1304918202214" TEXT="tag">
<font NAME="SansSerif" SIZE="12"/>
</node>
</node>
</node>
</node>
<node COLOR="#00b439" CREATED="1304871265406" ID="ID_1201295287" MODIFIED="1304871270406" TEXT="performance">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<node COLOR="#ff00ff" CREATED="1304871560484" ID="ID_910042641" MODIFIED="1304918202214" TEXT="Traceview">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1304872555796" ID="ID_874242021" MODIFIED="1304918202214" TEXT="prepare">
<font NAME="SansSerif" SIZE="12"/>
<node COLOR="#111111" CREATED="1304871660265" ID="ID_1797006523" MODIFIED="1304918202214" TEXT="AVD with SD card ">
<font NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node COLOR="#111111" CREATED="1304872242500" ID="ID_1424362346" MODIFIED="1304918202214" TEXT="record">
<font NAME="SansSerif" SIZE="12"/>
<node COLOR="#111111" CREATED="1304872215656" ID="ID_469744826" MODIFIED="1304918202214" TEXT="onCreate">
<font NAME="SansSerif" SIZE="12"/>
<node COLOR="#111111" CREATED="1304871616015" ID="ID_292494951" MODIFIED="1304918202214" TEXT="Debug.startMethodTracing(filename)">
<font NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node COLOR="#111111" CREATED="1304872234625" ID="ID_747452496" MODIFIED="1304918202214" TEXT="onDestroy">
<font NAME="SansSerif" SIZE="12"/>
<node COLOR="#111111" CREATED="1304871628312" ID="ID_1794860632" MODIFIED="1304918202214" TEXT="Debug.stopMethodTracing(filename)">
<font NAME="SansSerif" SIZE="12"/>
</node>
</node>
</node>
<node COLOR="#111111" CREATED="1304871850468" ID="ID_691250578" MODIFIED="1304918202214" TEXT="DDMS file explore">
<font NAME="SansSerif" SIZE="12"/>
<node COLOR="#111111" CREATED="1304872080875" ID="ID_187044845" MODIFIED="1304918202214" TEXT="eclipse/windows/show views/other/android/file explorer">
<font NAME="SansSerif" SIZE="12"/>
</node>
<node COLOR="#111111" CREATED="1304872456265" ID="ID_1870196626" MODIFIED="1304918202214" TEXT="mnt/sdcard/filename.trace">
<font NAME="SansSerif" SIZE="12"/>
</node>
<node COLOR="#111111" CREATED="1304872629890" ID="ID_1981814077" MODIFIED="1304918202214" TEXT="pull the file to PC path">
<font NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node COLOR="#111111" CREATED="1304872655718" ID="ID_94150092" MODIFIED="1304918202214" TEXT="view &amp; analyze">
<font NAME="SansSerif" SIZE="12"/>
<node COLOR="#111111" CREATED="1304871896703" ID="ID_920809106" MODIFIED="1304918202214" TEXT="android sdk tools/traceview filename.trace">
<font NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node COLOR="#111111" CREATED="1304871674078" ID="ID_596271954" LINK="http://wbdban.iteye.com/blog/564309" MODIFIED="1304918202214" TEXT="refer">
<font NAME="SansSerif" SIZE="12"/>
</node>
</node>
</node>
</node>
<node COLOR="#0033ff" CREATED="1305168617804" ID="ID_1716893210" MODIFIED="1305596485821" POSITION="right" TEXT="graph">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<font NAME="SansSerif" SIZE="18"/>
<node COLOR="#00b439" CREATED="1305168620554" ID="ID_1688427758" MODIFIED="1305168622022" TEXT="2d">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<node COLOR="#ff00ff" CREATED="1305168632600" ID="ID_1718186384" LINK="file:///D:/android-sdk/docs/guide/topics/graphics/2d-graphics.html" MODIFIED="1305169071957" TEXT="View obj"/>
<node COLOR="#ff00ff" CREATED="1305168637241" ID="ID_457136129" MODIFIED="1305168641413" TEXT="canvas"/>
</node>
<node COLOR="#00b439" CREATED="1305168622335" ID="ID_961304987" MODIFIED="1305168623491" TEXT="3d">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<node COLOR="#ff00ff" CREATED="1305168626288" ID="ID_1171609791" MODIFIED="1305168631272" TEXT="openGL"/>
</node>
</node>
<node COLOR="#0033ff" CREATED="1305020501883" ID="ID_481876487" MODIFIED="1305020505242" POSITION="right" TEXT="roadmap">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<font NAME="SansSerif" SIZE="18"/>
<node COLOR="#00b439" CREATED="1305522522494" ID="ID_788058503" MODIFIED="1305530492115" TEXT="d:\workspace">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<node COLOR="#ff00ff" CREATED="1305522527947" ID="ID_1796728967" MODIFIED="1305522529181" TEXT="java">
<node COLOR="#111111" CREATED="1305596551243" ID="ID_264482097" MODIFIED="1305596552868" TEXT="jnp">
<font NAME="SansSerif" SIZE="12"/>
<node COLOR="#111111" CREATED="1305596539899" ID="ID_1036265288" MODIFIED="1305596547508" TEXT="multithread">
<font NAME="SansSerif" SIZE="12"/>
</node>
<node COLOR="#111111" CREATED="1305596558149" ID="ID_515063531" MODIFIED="1305596559899" TEXT="url">
<font NAME="SansSerif" SIZE="12"/>
</node>
<node COLOR="#111111" CREATED="1305596560274" ID="ID_647308810" MODIFIED="1305596565211" TEXT="async IO">
<font NAME="SansSerif" SIZE="12"/>
</node>
</node>
</node>
<node COLOR="#ff00ff" CREATED="1305522530056" ID="ID_631687852" MODIFIED="1305522532416" TEXT="android">
<node COLOR="#111111" CREATED="1305596573243" ID="ID_189290538" MODIFIED="1305596585243" TEXT="wide net resources">
<font NAME="SansSerif" SIZE="12"/>
</node>
<node COLOR="#111111" CREATED="1305522553650" ID="ID_1614821031" MODIFIED="1305522556822" TEXT="APIDemos">
<font NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node COLOR="#ff00ff" CREATED="1305522533181" ID="ID_1504529071" MODIFIED="1305522540244" TEXT="python"/>
<node COLOR="#ff00ff" CREATED="1305522544744" ID="ID_1973636534" MODIFIED="1305522546275" TEXT="..."/>
</node>
<node COLOR="#00b439" CREATED="1305020505758" ID="ID_756881708" MODIFIED="1305020646929" TEXT="NewsViewer">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<node COLOR="#ff00ff" CREATED="1305020648944" ID="ID_882904476" LINK="d:\doc\NewsViewer.design.uml" MODIFIED="1305020655163" TEXT="uml"/>
<node COLOR="#ff00ff" CREATED="1305020621585" ID="ID_990084014" LINK="d:\doc\NewsViewer.design.jpg" MODIFIED="1305020629788" TEXT="jpg"/>
</node>
<node COLOR="#00b439" CREATED="1305596364885" ID="ID_452994289" MODIFIED="1305596478040" TEXT="learn by">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<node COLOR="#ff00ff" CREATED="1305596442197" ID="ID_1848218338" MODIFIED="1305596471493" TEXT="imitate"/>
<node COLOR="#ff00ff" CREATED="1305596434603" ID="ID_843856359" MODIFIED="1305596436290" TEXT="test"/>
<node COLOR="#ff00ff" CREATED="1305596436556" ID="ID_583791272" MODIFIED="1305596437978" TEXT="debug"/>
</node>
<node COLOR="#00b439" CREATED="1305596391369" ID="ID_1680985933" MODIFIED="1305596393244" TEXT="OO">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<node COLOR="#ff00ff" CREATED="1305596394197" ID="ID_1691075384" MODIFIED="1305596401884" TEXT="without pointer"/>
<node COLOR="#ff00ff" CREATED="1305596402931" ID="ID_576714600" MODIFIED="1305596417290" TEXT="memory collection"/>
<node COLOR="#ff00ff" CREATED="1305596417775" ID="ID_1849810495" MODIFIED="1305596423712" TEXT="deep copy"/>
</node>
</node>
</node>
</map>
