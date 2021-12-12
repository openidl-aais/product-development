<map version="freeplane 1.9.8">
<!--To view this file, download free mind mapping software Freeplane from https://www.freeplane.org -->
<node TEXT="product: BOP" FOLDED="false" ID="ID_696401721" CREATED="1610381621824" MODIFIED="1638984495022" STYLE="oval">
<font SIZE="18"/>
<hook NAME="MapStyle">
    <properties edgeColorConfiguration="#808080ff,#ff0000ff,#0000ffff,#00ff00ff,#ff00ffff,#00ffffff,#7c0000ff,#00007cff,#007c00ff,#7c007cff,#007c7cff,#7c7c00ff" show_icon_for_attributes="true" associatedTemplateLocation="template:/standard-1.6.mm" show_note_icons="true" fit_to_viewport="false"/>

<map_styles>
<stylenode LOCALIZED_TEXT="styles.root_node" STYLE="oval" UNIFORM_SHAPE="true" VGAP_QUANTITY="24 pt">
<font SIZE="24"/>
<stylenode LOCALIZED_TEXT="styles.predefined" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="default" ID="ID_271890427" ICON_SIZE="12 pt" COLOR="#000000" STYLE="fork">
<arrowlink SHAPE="CUBIC_CURVE" COLOR="#000000" WIDTH="2" TRANSPARENCY="200" DASH="" FONT_SIZE="9" FONT_FAMILY="SansSerif" DESTINATION="ID_271890427" STARTARROW="DEFAULT" ENDARROW="NONE"/>
<font NAME="SansSerif" SIZE="10" BOLD="false" ITALIC="false"/>
<richcontent CONTENT-TYPE="plain/auto" TYPE="DETAILS"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/auto"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.details"/>
<stylenode LOCALIZED_TEXT="defaultstyle.attributes">
<font SIZE="9"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.note" COLOR="#000000" BACKGROUND_COLOR="#ffffff" TEXT_ALIGN="LEFT"/>
<stylenode LOCALIZED_TEXT="defaultstyle.floating">
<edge STYLE="hide_edge"/>
<cloud COLOR="#f0f0f0" SHAPE="ROUND_RECT"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.selection" BACKGROUND_COLOR="#4e85f8" BORDER_COLOR_LIKE_EDGE="false" BORDER_COLOR="#4e85f8"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.user-defined" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="styles.topic" COLOR="#18898b" STYLE="fork">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subtopic" COLOR="#cc3300" STYLE="fork">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subsubtopic" COLOR="#669900">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.important" ID="ID_67550811">
<icon BUILTIN="yes"/>
<arrowlink COLOR="#003399" TRANSPARENCY="255" DESTINATION="ID_67550811"/>
</stylenode>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.AutomaticLayout" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="AutomaticLayout.level.root" COLOR="#000000" STYLE="oval" SHAPE_HORIZONTAL_MARGIN="10 pt" SHAPE_VERTICAL_MARGIN="10 pt">
<font SIZE="18"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,1" COLOR="#0033ff">
<font SIZE="16"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,2" COLOR="#00b439">
<font SIZE="14"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,3" COLOR="#990000">
<font SIZE="12"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,4" COLOR="#111111">
<font SIZE="10"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,5"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,6"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,7"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,8"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,9"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,10"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,11"/>
</stylenode>
</stylenode>
</map_styles>
</hook>
<hook NAME="AutomaticEdgeColor" COUNTER="10" RULE="ON_BRANCH_CREATION"/>
<attribute NAME="businessName" VALUE="Businessowners"/>
<attribute NAME="family" VALUE="Commercial"/>
<node TEXT="soi: Location" POSITION="right" ID="ID_1639732638" CREATED="1638904634314" MODIFIED="1638987056741" TEXT_SHORTENED="true">
<edge COLOR="#ff0000"/>
<attribute NAME="cardinality" VALUE="0..*"/>
<node TEXT="soi: Building" ID="ID_355512543" CREATED="1638904641201" MODIFIED="1638987064349" TEXT_SHORTENED="true">
<attribute NAME="cardinality" VALUE="1..*"/>
<node TEXT="cov: Property" ID="ID_1913469413" CREATED="1638904647225" MODIFIED="1638987073623"/>
<node TEXT="cov: Contents" ID="ID_1469023414" CREATED="1638904664946" MODIFIED="1638987077781"/>
<node TEXT="prop: ConstructionType" ID="ID_400023793" CREATED="1638930789839" MODIFIED="1638987089726"/>
<node TEXT="prop: NumberOfFloors" ID="ID_1242887851" CREATED="1638930809253" MODIFIED="1638987096734"/>
</node>
</node>
<node TEXT="gcr: exactlyOne" POSITION="right" ID="ID_1421046419" CREATED="1638972028623" MODIFIED="1638988228539">
<edge COLOR="#0000ff"/>
<node TEXT="cov form: BP 0100" ID="ID_162802865" CREATED="1638972045229" MODIFIED="1638972067536"/>
<node TEXT="cov form: BP 0200" ID="ID_479612299" CREATED="1638972068274" MODIFIED="1638972075230"/>
</node>
<node TEXT="prop: EffectiveDate" POSITION="right" ID="ID_1747785038" CREATED="1638972270877" MODIFIED="1638988210964">
<edge COLOR="#00ff00"/>
</node>
<node TEXT="prop: ExpirationDate" POSITION="right" ID="ID_469343149" CREATED="1638972284701" MODIFIED="1638988205312">
<edge COLOR="#ff00ff"/>
</node>
<node TEXT="prop: OccupiedByInsured" POSITION="right" ID="ID_884063689" CREATED="1638972290792" MODIFIED="1638988199984">
<edge COLOR="#00ffff"/>
</node>
<node TEXT="prop: ClassificationCategory" POSITION="right" ID="ID_1805082346" CREATED="1638984175340" MODIFIED="1638987014020" TEXT_SHORTENED="true">
<edge COLOR="#7c0000"/>
<attribute NAME="businessName" VALUE="Classification Category"/>
</node>
<node TEXT="prop: Classification" POSITION="right" ID="ID_606081535" CREATED="1638987020996" MODIFIED="1638987027622">
<edge COLOR="#00007c"/>
</node>
<node TEXT="soi: Term" POSITION="right" ID="ID_1281961594" CREATED="1638987040996" MODIFIED="1638987049525">
<edge COLOR="#007c00"/>
<node TEXT="gcr: exactly one" ID="ID_616828321" CREATED="1638987128005" MODIFIED="1638987139477">
<node TEXT="opt: Renewable" ID="ID_978761168" CREATED="1638987140472" MODIFIED="1638987150229">
<node TEXT="form: BP 0336" ID="ID_74373005" CREATED="1638987162988" MODIFIED="1638987172877"/>
<node TEXT="form: BP 0604" ID="ID_602586916" CREATED="1638987174349" MODIFIED="1638987179861"/>
</node>
<node TEXT="opt: Continuous" ID="ID_285019332" CREATED="1638987152692" MODIFIED="1638987159189">
<node TEXT="form: BP 0336" ID="ID_1650158315" CREATED="1638987183272" MODIFIED="1638987188797"/>
</node>
</node>
</node>
<node TEXT="soi: Policy" POSITION="right" ID="ID_915871058" CREATED="1638987196133" MODIFIED="1638987200637">
<edge COLOR="#007c7c"/>
<node TEXT="cov: CertifiedActsOfTerrorism" ID="ID_951045056" CREATED="1638987524414" MODIFIED="1638988192184">
<node TEXT="form: BP 0750" ID="ID_184443349" CREATED="1638987545766" MODIFIED="1638987551695"/>
<node TEXT="form: BP 0604" ID="ID_1651535656" CREATED="1638987552279" MODIFIED="1638987557695"/>
</node>
<node TEXT="soi: PolicyAddress" ID="ID_819157988" CREATED="1638987572345" MODIFIED="1638988179485"/>
<node TEXT="cov: EquipmentBreakdown" ID="ID_1572086323" CREATED="1638988042297" MODIFIED="1638988174353">
<node TEXT="prop: Deductible" ID="ID_699183378" CREATED="1638988097081" MODIFIED="1638988103818"/>
<node TEXT="prem: DeductibleFactor" ID="ID_1614570361" CREATED="1638988132045" MODIFIED="1638988167233"/>
<node TEXT="prem: NumberOfLocationsFactor" ID="ID_829923656" CREATED="1638988147601" MODIFIED="1638988157922"/>
</node>
</node>
</node>
</map>
