<map version="0.9.0">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node COLOR="#000000" CREATED="1318165899770" ID="ID_967745590" MODIFIED="1318165924158" TEXT="Paxos">
<edge STYLE="bezier" WIDTH="4"/>
<font NAME="SansSerif" SIZE="20"/>
<hook NAME="accessories/plugins/AutomaticLayout.properties"/>
<node COLOR="#0033ff" CREATED="1318165926486" ID="ID_1933329072" MODIFIED="1318166726356" POSITION="left" TEXT="message communication error">
<edge WIDTH="8"/>
<font NAME="SansSerif" SIZE="18"/>
<node COLOR="#00b439" CREATED="1318165937345" ID="ID_803524251" MODIFIED="1318165950890" TEXT="lost">
<edge STYLE="bezier" WIDTH="thin"/>
<font BOLD="true" NAME="SansSerif" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1318165951187" ID="ID_1460781047" MODIFIED="1318165961748" TEXT="repeat">
<edge STYLE="bezier" WIDTH="thin"/>
<font BOLD="true" NAME="SansSerif" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1318165962108" ID="ID_765273517" MODIFIED="1318165967232" TEXT="wrong">
<edge STYLE="bezier" WIDTH="thin"/>
<font BOLD="true" NAME="SansSerif" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1318166062849" ID="ID_325260727" MODIFIED="1318166067786" TEXT="misorder">
<edge STYLE="bezier" WIDTH="thin"/>
<font BOLD="true" NAME="SansSerif" SIZE="16"/>
<node COLOR="#cc0099" CREATED="1318166688984" ID="ID_459291412" MODIFIED="1318166844487" TEXT="for async reason">
<font BOLD="true" NAME="SansSerif" SIZE="14"/>
</node>
</node>
</node>
<node COLOR="#0033ff" CREATED="1318166503344" ID="ID_1840861708" MODIFIED="1318166505047" POSITION="right" TEXT="rule">
<edge WIDTH="8"/>
<font NAME="SansSerif" SIZE="18"/>
<node COLOR="#00b439" CREATED="1318166506656" ID="ID_276130980" MODIFIED="1318166534591" TEXT="1 value 1 proposal instance">
<edge STYLE="bezier" WIDTH="thin"/>
<font BOLD="true" NAME="SansSerif" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1318166599336" ID="ID_665572393" MODIFIED="1318166667595" TEXT="chose same value as before">
<edge STYLE="bezier" WIDTH="thin"/>
<font BOLD="true" NAME="SansSerif" SIZE="16"/>
</node>
</node>
<node COLOR="#0033ff" CREATED="1318166417413" ID="ID_464774270" MODIFIED="1318166424913" POSITION="right" TEXT="sequence">
<edge WIDTH="8"/>
<font NAME="SansSerif" SIZE="18"/>
<node COLOR="#00b439" CREATED="1318166425850" ID="ID_1536019161" MODIFIED="1318167041987" TEXT="prepare">
<edge STYLE="bezier" WIDTH="thin"/>
<font BOLD="true" NAME="SansSerif" SIZE="16"/>
<node COLOR="#cc0099" CREATED="1318166554105" ID="ID_1814672207" MODIFIED="1318167044752" TEXT="chose">
<font BOLD="true" NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#cc0099" CREATED="1318167086484" ID="ID_1254204361" MODIFIED="1318167087937" TEXT="reject">
<font BOLD="true" NAME="SansSerif" SIZE="14"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1318166430412" ID="ID_441956053" MODIFIED="1318167053892" TEXT="propose">
<edge STYLE="bezier" WIDTH="thin"/>
<font BOLD="true" NAME="SansSerif" SIZE="16"/>
<node COLOR="#cc0099" CREATED="1318166584212" ID="ID_447561454" MODIFIED="1318167063235" TEXT="accept">
<font BOLD="true" NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#cc0099" CREATED="1318167090202" ID="ID_332760653" MODIFIED="1318167096686" TEXT="un_accept">
<font BOLD="true" NAME="SansSerif" SIZE="14"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1318167064563" ID="ID_1481525554" MODIFIED="1318183049497" TEXT="accepted">
<edge STYLE="bezier" WIDTH="thin"/>
<font BOLD="true" NAME="SansSerif" SIZE="16"/>
<node COLOR="#cc0099" CREATED="1318166576134" ID="ID_977170195" MODIFIED="1318167075484" TEXT="learn">
<edge STYLE="bezier" WIDTH="thin"/>
<font BOLD="true" NAME="SansSerif" SIZE="14"/>
</node>
</node>
</node>
<node COLOR="#0033ff" CREATED="1318166791460" ID="ID_907605443" MODIFIED="1318166794647" POSITION="left" TEXT="element">
<edge WIDTH="8"/>
<font NAME="SansSerif" SIZE="18"/>
<node COLOR="#00b439" CREATED="1318166368277" ID="ID_523439524" MODIFIED="1318166800756" TEXT="actors(could be 3in1)">
<edge STYLE="bezier" WIDTH="thin"/>
<font BOLD="true" NAME="SansSerif" SIZE="16"/>
<node COLOR="#cc0099" CREATED="1318166373604" ID="ID_218800287" MODIFIED="1318166800756" TEXT="proposer">
<edge STYLE="bezier" WIDTH="thin"/>
<font BOLD="true" NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#cc0099" CREATED="1318166377370" ID="ID_63008600" MODIFIED="1318166800756" TEXT="acceptor">
<edge STYLE="bezier" WIDTH="thin"/>
<font BOLD="true" NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#cc0099" CREATED="1318166380963" ID="ID_157535407" MODIFIED="1318166800756" TEXT="learner">
<edge STYLE="bezier" WIDTH="thin"/>
<font BOLD="true" NAME="SansSerif" SIZE="14"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1318166802116" ID="ID_795108228" MODIFIED="1318166829816" TEXT="proposal instance">
<edge STYLE="bezier" WIDTH="thin"/>
<font BOLD="true" NAME="SansSerif" SIZE="16"/>
<node COLOR="#cc0099" CREATED="1318166805272" ID="ID_1415002012" MODIFIED="1318166807381" TEXT="ID">
<font BOLD="true" NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1318166807771" ID="ID_175064587" MODIFIED="1318166817411" TEXT="ip"/>
<node COLOR="#111111" CREATED="1318166817864" ID="ID_1119639540" MODIFIED="1318166819052" TEXT="count"/>
</node>
<node COLOR="#cc0099" CREATED="1318166820552" ID="ID_952686742" MODIFIED="1318166821692" TEXT="value">
<font BOLD="true" NAME="SansSerif" SIZE="14"/>
</node>
</node>
</node>
</node>
</map>
