<?xml version='1.0' encoding='UTF-8'?>
<system name="TestBatchCSV" elemId="9628">
	<description></description>
	<model>
		<relationships/>
		<tables>
			<table name="TestBatch" elemId="9794">
				<description></description>
				<columns/>
			</table>
		</tables>
	</model>
	<sourceMappings>
		<mapping entity="party" elemId="10004" table="testbatch" customOrigin="">
			<description>testovaci CSV</description>
		</mapping>
	</sourceMappings>
	<loadOperations>
		<fullLoad nameSuffix="csv" elemId="10175" allTables="true">
			<selectedTables/>
			<advanced deletionStrategy="use global setting (from Preferences)">
				<ignoredComparisonColumns/>
				<pathVariables/>
				<additionalParameters/>
			</advanced>
		</fullLoad>
		<deltaLoad nameSuffix="inc" elemId="11548" allTables="true">
			<selectedTables/>
			<advanced deletionStrategy="use global setting (from Preferences)">
				<ignoredComparisonColumns/>
				<pathVariables/>
				<additionalParameters/>
			</advanced>
		</deltaLoad>
	</loadOperations>
</system>