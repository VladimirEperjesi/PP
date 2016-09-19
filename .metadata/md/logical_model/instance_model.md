<?xml version='1.0' encoding='UTF-8'?>
<instanceModel>
	<relationships>
		<relationship parentRole="" name="party_has_adresa" elemId="6046" childRole="" type="Same System" parentTable="party" childTable="adresa">
			<description></description>
			<childToParent>
				<column source="src_mesto" name="obec" elemId="11825" method="concatenateDistinct" type="string" separator="~" size="200" createInto="party_match">
					<filterExpression></filterExpression>
				</column>
			</childToParent>
			<parentToChild/>
			<advanced>
				<extendedSameSystem parentColumn="" enable="false" childColumn=""/>
				<alternativeKey alternativePk="" alternativeFk=""/>
			</advanced>
			<foreignKey>
				<column parentColumn="source_id" elemId="6079" childColumn="source_id"/>
			</foreignKey>
		</relationship>
		<relationship parentRole="" name="party_has_contact" elemId="9636" childRole="" type="Same System" parentTable="party" childTable="contact">
			<description></description>
			<childToParent/>
			<parentToChild/>
			<advanced>
				<extendedSameSystem parentColumn="" enable="false" childColumn=""/>
				<alternativeKey alternativePk="" alternativeFk=""/>
			</advanced>
			<foreignKey>
				<column parentColumn="source_id" elemId="9681" childColumn="source_id"/>
			</foreignKey>
		</relationship>
	</relationships>
	<tables>
		<table name="party" elemId="5267" type="instance">
			<description></description>
			<columns>
				<column isPk="true" label="" isSco="false" type="string" size="200" isFk="false" refData="" isSrc="false" isExp="false" name="source_id" elemId="5337" isStd="false" isCio="false">
					<description></description>
				</column>
				<column isPk="false" label="" isSco="true" type="string" size="200" isFk="false" refData="" isSrc="true" isExp="false" name="rod_cis" elemId="5338" isStd="true" isCio="true">
					<description></description>
				</column>
				<column isPk="false" label="" isSco="true" type="string" size="200" isFk="false" refData="" isSrc="true" isExp="false" name="prijimeni" elemId="5339" isStd="true" isCio="true">
					<description></description>
				</column>
				<column isPk="false" label="" isSco="true" type="string" size="200" isFk="false" refData="" isSrc="true" isExp="false" name="jmeno" elemId="5340" isStd="true" isCio="true">
					<description></description>
				</column>
				<column isPk="false" label="" isSco="false" type="day" size="" isFk="false" refData="" isSrc="true" isExp="false" name="datnar" elemId="5571" isStd="true" isCio="true">
					<description></description>
				</column>
				<column isPk="false" label="" isSco="false" type="string" size="200" isFk="false" refData="" isSrc="true" isExp="false" name="pohlavi" elemId="5770" isStd="true" isCio="true">
					<description></description>
				</column>
				<column isPk="false" label="" isSco="false" type="string" size="200" isFk="false" refData="" isSrc="true" isExp="false" name="rematch" elemId="11650" isStd="false" isCio="false">
					<description></description>
				</column>
			</columns>
			<matchingTab enableIdentify="false" matching="true">
				<matchingTabColumns>
					<column name="mat_rod_cis" elemId="5531" type="string" size="200">
						<description></description>
					</column>
					<column name="mat_prijimeni" elemId="5533" type="string" size="200">
						<description></description>
					</column>
					<column name="mat_jmeno" elemId="5532" type="string" size="200">
						<description></description>
					</column>
					<column name="mat_id_column" elemId="3940" type="string" size="200">
						<description></description>
					</column>
					<column name="mat_rule_name" elemId="3941" type="string" size="200">
						<description></description>
					</column>
				</matchingTabColumns>
				<multipleMatching disableDefault="false">
					<matchingDefinitions/>
				</multipleMatching>
			</matchingTab>
			<aggregationTab aggregation="false" groupingColumn="">
				<aggregationTabColumns/>
			</aggregationTab>
			<advanced>
				<specialColumns/>
				<historicalColumns/>
				<oldValueColumns/>
			</advanced>
		</table>
		<table name="adresa" elemId="5292" type="instance">
			<description></description>
			<columns>
				<column isPk="true" label="" isSco="false" type="string" size="200" isFk="true" refData="" isSrc="false" isExp="false" name="source_id" elemId="5761" isStd="false" isCio="false">
					<description></description>
				</column>
				<column isPk="false" label="" isSco="false" type="string" size="200" isFk="false" refData="" isSrc="true" isExp="false" name="RUIAN" elemId="9284" isStd="true" isCio="true">
					<description></description>
				</column>
				<column isPk="false" label="" isSco="true" type="string" size="200" isFk="false" refData="" isSrc="true" isExp="false" name="ulice" elemId="5762" isStd="true" isCio="true">
					<description></description>
				</column>
				<column isPk="false" label="" isSco="false" type="string" size="200" isFk="false" refData="" isSrc="true" isExp="false" name="cislop" elemId="9112" isStd="true" isCio="true">
					<description></description>
				</column>
				<column isPk="false" label="" isSco="false" type="string" size="200" isFk="false" refData="" isSrc="true" isExp="false" name="cisloev" elemId="9113" isStd="true" isCio="true">
					<description></description>
				</column>
				<column isPk="false" label="" isSco="false" type="string" size="200" isFk="false" refData="" isSrc="true" isExp="false" name="cisloor" elemId="9114" isStd="true" isCio="true">
					<description></description>
				</column>
				<column isPk="false" label="" isSco="false" type="string" size="200" isFk="false" refData="" isSrc="true" isExp="false" name="mesto" elemId="5763" isStd="true" isCio="true">
					<description></description>
				</column>
				<column isPk="false" label="" isSco="true" type="string" size="200" isFk="false" refData="" isSrc="true" isExp="false" name="psc_id" elemId="5764" isStd="true" isCio="true">
					<description></description>
				</column>
			</columns>
			<matchingTab enableIdentify="false" matching="false">
				<matchingTabColumns>
					<column name="ulice" elemId="5940" type="string" size="200">
						<description></description>
					</column>
					<column name="mesto" elemId="5941" type="string" size="200">
						<description></description>
					</column>
					<column name="psc_id" elemId="5942" type="string" size="200">
						<description></description>
					</column>
				</matchingTabColumns>
				<multipleMatching disableDefault="false">
					<matchingDefinitions/>
				</multipleMatching>
			</matchingTab>
			<aggregationTab aggregation="false" groupingColumn="">
				<aggregationTabColumns/>
			</aggregationTab>
			<advanced>
				<specialColumns/>
				<historicalColumns/>
				<oldValueColumns/>
			</advanced>
		</table>
		<table name="contact" elemId="9415" type="instance">
			<description></description>
			<columns>
				<column isPk="true" label="" isSco="false" type="string" size="200" isFk="true" refData="" isSrc="false" isExp="false" name="source_id" elemId="9467" isStd="false" isCio="false">
					<description></description>
				</column>
				<column isPk="false" label="" isSco="true" type="string" size="200" isFk="false" refData="" isSrc="true" isExp="false" name="contact" elemId="9468" isStd="true" isCio="true">
					<description></description>
				</column>
				<column isPk="false" label="" isSco="false" type="string" size="200" isFk="false" refData="" isSrc="true" isExp="false" name="type" elemId="9469" isStd="true" isCio="false">
					<description></description>
				</column>
			</columns>
			<matchingTab enableIdentify="false" matching="false">
				<matchingTabColumns/>
				<multipleMatching disableDefault="false">
					<matchingDefinitions/>
				</multipleMatching>
			</matchingTab>
			<aggregationTab aggregation="false" groupingColumn="">
				<aggregationTabColumns/>
			</aggregationTab>
			<advanced>
				<specialColumns/>
				<historicalColumns/>
				<oldValueColumns/>
			</advanced>
		</table>
	</tables>
	<dicTables/>
</instanceModel>