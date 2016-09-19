<?xml version='1.0' encoding='UTF-8'?>
<masterModel name="master_party" elemId="5061">
	<description>zlaty zaznam podle roku narozeni</description>
	<relationships/>
	<masterTables>
		<masterTable name="party" elemId="5177" label="" entityRole="golden" instanceTable="party" topLevel="true">
			<description></description>
			<columns>
				<column isCmo="false" refData="" isPk="true" isFk="false" description="" name="id" elemId="5382" label="" type="long_int" size="200"/>
				<column isCmo="true" refData="" isPk="false" isFk="false" description="" name="jmeno" elemId="5383" label="" type="string" size="200"/>
				<column isCmo="true" refData="" isPk="false" isFk="false" description="" name="prijimeni" elemId="5384" label="" type="string" size="200"/>
				<column isCmo="true" refData="" isPk="false" isFk="false" description="" name="rod_cis" elemId="5385" label="" type="string" size="200"/>
			</columns>
			<guiTab>
				<reduceES allColumns="true">
					<reduceColumns/>
				</reduceES>
				<views/>
				<computedColumns/>
			</guiTab>
			<advanced groupColumn="" customActivity="false">
				<inputFilterExpression></inputFilterExpression>
				<specialColumns/>
			</advanced>
			<guiEdit guiReadOnly="use global setting (from GUI Configuration)">
				<editColumns/>
				<parentColumns/>
			</guiEdit>
		</masterTable>
	</masterTables>
	<instanceTables/>
	<guiConfig enableGui="false" guiSystem="mda" guiMode="Read-Only">
		<hierarchies/>
		<actions hierarchies="false" revert="false" manualExceptions="false" edit="false" deactivate="false" create="false"/>
		<indicators dqi="false"/>
		<batchOperations guiInitialLoad="false" guiFullLoad="false" guiLoadAllEntities="true">
			<loadedEntities/>
		</batchOperations>
	</guiConfig>
</masterModel>