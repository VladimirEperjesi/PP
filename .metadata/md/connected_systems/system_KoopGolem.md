<?xml version='1.0' encoding='UTF-8'?>
<system name="KoopGolem" elemId="4126">
	<description></description>
	<model>
		<relationships/>
		<tables>
			<table name="z_tz" elemId="4260">
				<description></description>
				<columns/>
			</table>
		</tables>
	</model>
	<sourceMappings>
		<mapping entity="party" elemId="4467" table="z_tz" customOrigin="KoopGolem#z_tz_party#party">
			<description></description>
		</mapping>
		<mapping entity="adresa" elemId="4468" table="z_tz" customOrigin="KoopGolem#z_tz_party#adresa">
			<description></description>
		</mapping>
		<mapping entity="contact" elemId="4469" table="z_tz" customOrigin="KoopGolem#z_tz_party#contact">
			<description></description>
		</mapping>
	</sourceMappings>
	<loadOperations>
		<fullLoad nameSuffix="full" elemId="4365" allTables="true">
			<selectedTables/>
			<advanced deletionStrategy="use global setting (from Preferences)">
				<ignoredComparisonColumns/>
				<pathVariables/>
				<additionalParameters/>
			</advanced>
		</fullLoad>
	</loadOperations>
</system>