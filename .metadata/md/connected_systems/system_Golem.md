<?xml version='1.0' encoding='UTF-8'?>
<system name="Golem" elemId="6344">
	<description>koop internal system</description>
	<model>
		<relationships/>
		<tables>
			<table name="d_osoba" elemId="6394">
				<description></description>
				<columns/>
			</table>
		</tables>
	</model>
	<sourceMappings>
		<mapping entity="party" elemId="6640" table="d_osoba" customOrigin="">
			<description>party information</description>
		</mapping>
		<mapping entity="adresa" elemId="6641" table="d_osoba" customOrigin="">
			<description>address information</description>
		</mapping>
		<mapping entity="contact" elemId="10039" table="d_osoba" customOrigin="">
			<description>contact information</description>
		</mapping>
	</sourceMappings>
	<loadOperations>
		<fullLoad nameSuffix="full" elemId="6518" allTables="true">
			<selectedTables/>
			<advanced deletionStrategy="use global setting (from Preferences)">
				<ignoredComparisonColumns/>
				<pathVariables/>
				<additionalParameters/>
			</advanced>
		</fullLoad>
	</loadOperations>
</system>