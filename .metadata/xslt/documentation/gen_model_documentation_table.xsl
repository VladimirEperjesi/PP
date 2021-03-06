<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:sf="http://www.ataccama.com/xslt/functions"
	xmlns:fn="http://www.w3.org/2005/xpath-functions"
	exclude-result-prefixes="sf fn">
	<xsl:output method="xml" encoding="UTF-8" indent="yes"/>

<xsl:param name="tables" select="document('param:tables')/*"/>
<xsl:template match="/table">
<xsl:variable name="table_name" select="@name"/>
<html>
<head>
<META http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<style type="text/css">
@media print {
h1{page-break-before:always;}}

<!-- classes -->
.footNote {
	font-size: 11px;
	}  
.tableVerticalHeader {
	text-align:left;
	}
.tableVerticalHeader {
	text-align:left;
	}
.border{
	border-bottom:1px solid #D9D9D9;
	}
.lowerCase {
	text-transform:lowercase;
	}
.link{
	font:100% Candara,Calibri,Seoge,Optima,Arial,sans-serif;
}	
body {
    counter-reset: section_h1;
	}	
p   {font:13px Candara,Calibri,Seoge,Optima,Arial,sans-serif;
		}
h1  {font:100% Candara,Calibri,Seoge,Optima,Arial,sans-serif;
		font-weight:bold;
		font-size: 16px;
		margin-bottom:13px;
		padding-left:9px;
		background-color:#595959;
		color:white;
		text-transform:uppercase;
		counter-increment: section_h1;	
		counter-reset: sub-section_h2;
		page-break-after: avoid;
	}
h1:before {
        content: counter(section_h1) " ";
  }
h2	{font:100% Candara,Calibri,Seoge,Optima,Arial,sans-serif;
		font-weight:bold;
		font-size: 15px;
		margin-bottom:10px;
		text-transform:uppercase;
		border-bottom:1px solid #D9D9D9;
		counter-increment: sub-section_h2;
		counter-reset: sub-section_h3;
	}
h2:before {
        content: counter(section_h1) "." counter(sub-section_h2) " ";
  }
h3	{font:100% Candara,Calibri,Seoge,Optima,Arial,sans-serif;
		font-weight:bold;
		font-size: 14px;
		margin-bottom:10px;
		background-color:#F2F2F2;
		counter-increment: sub-section_h3;
		counter-reset: sub-section_h4;
	}
h3:before {
        content: counter(section_h1) "." counter(sub-section_h2) "." counter(sub-section_h3) " ";
  }	
h4  {font:100% Candara,Calibri,Seoge,Optima,Arial,sans-serif;
		font-weight:bold;
		font-size: 13px;
		margin-bottom:10px;
		counter-increment: sub-section_h4;
	}
h4:before {
        content: counter(section_h1) "." counter(sub-section_h2) "." counter(sub-section_h3) "." counter(sub-section_h4) " ";
  }
table {
		width:635px;

	}
table,tr,td {
		font-size:12px;
		border-width:1px;
		border-style:solid;
		border-color:#BFBFBF;
		padding:2px 5px 2px 5px;
		margin:0;
		border-collapse:collapse;
		text-decoration:none;
		background-color:transparent
	}
th	{font-size:12px;
		
		border-width:1px;
		border-style:solid;
		border-color:#BFBFBF;
		padding:2px 5px 2px 5px;
		margin:0;
		border-collapse:collapse;
		text-decoration:none;
		background-color:#D9D9D9;
	}
ul {
	font-size:12px;
	}

</style>
</head>




<body>



<!-- logo -->
<img src="../../../img/logo.png" alt="logo" align="right"/>
<i><a class="link" align="left" href="../../../model_documentation_index.html">Back to Content</a></i>

<br/>
<br/>
<p class="border"></p>

<!-- documentation EN -->

<h1>Model documentation - table view</h1>
<h2>
<xsl:if test="@layer='instance'">Instance </xsl:if>
<xsl:if test="@layer='master'">Master </xsl:if>
<xsl:text>table </xsl:text><xsl:value-of select="@name"/></h2>

<p>Table <xsl:value-of select="@name"/> basic info:</p>
<p>
<table width="100%">
<tr>
<xsl:if test="@layer='instance' or @type='silver' or @type='golden'">
			<th>Layer</th>
</xsl:if>
			<th>Type</th>
	<xsl:if test="@layer='instance'">
		<th>Cleansing plan name (if cleansed)</th>
		<th>Matching plan name (if matched)</th>		
	</xsl:if>
	<xsl:if test="columns/column[@origin='aggregation']">
		<th>Aggregating plan name</th>
	</xsl:if>
	<xsl:if test="@type='silver' or @type='golden'">
		<th>Merging plan name</th>
	</xsl:if>


	
	<th>Description</th>
</tr>

<tr>
<xsl:if test="@layer='instance' or @type='silver' or @type='golden'">
	<td><xsl:value-of select="@layer"/></td>
</xsl:if>
	<td><xsl:value-of select="@type"/></td>
	<xsl:if test="@layer='instance'">
		<td><xsl:value-of select="@cleansingPlan"/></td>
		<td><xsl:value-of select="@matchingPlan"/></td>
	</xsl:if>
	<xsl:if test="@type='silver' or @type='golden'">
		<td><xsl:value-of select="@mergingPlan"/></td>
	</xsl:if>
	<xsl:if test="columns/column[@origin='aggregation']">
		<td><xsl:value-of select="@aggregatingPlan"/></td>
	</xsl:if>
	<td><xsl:value-of select="@desc|desc"/></td>
</tr>


</table> 
</p>
<br/>

<p>Table <xsl:value-of select="@name"/> contains following columns:</p>
<p>
<table width="100%">
<tr>
	<th>Name</th>
	<th>Type</th>
	<th>Size</th>
	<th>Origin</th>
	<th>Is a Key?</th>
	<th>Description</th>
</tr>
<xsl:for-each select="columns/column">
<tr>
	<td><xsl:value-of select="@name"/></td>
	<td><xsl:value-of select="@type"/></td>
	<td><xsl:value-of select="@size"/></td>
	<td><xsl:value-of select="@origin"/></td>
	<td>
		<xsl:choose>
			<xsl:when test="@pk='true'">PK</xsl:when>
			<xsl:when test="@fk='true'">FK</xsl:when>
			<xsl:otherwise>-</xsl:otherwise>
		</xsl:choose>
	</td>
	<td><xsl:value-of select="@desc|desc"/></td>
</tr>
</xsl:for-each>

</table> 
</p>
<br/>
<xsl:if test="relationships/relationship">
<p>Table <xsl:value-of select="@name"/> child relationships:</p>
<p>
<table width="100%">
<tr>
	<th>Relationship name</th>
	<th>Type</th>
	<th>Parent table</th>
	<th>Description</th>
</tr>
<xsl:for-each select="relationships/relationship">
<tr>
	<td><xsl:value-of select="@name"/></td>
	<td><xsl:value-of select="@type"/></td>
	<td><xsl:value-of select="@parentTable"/></td>
	<td><xsl:value-of select="@desc|desc"/></td>
</tr>
</xsl:for-each>

</table> 
</p>
<br/>
</xsl:if>
<xsl:if test="$tables/table/relationships/relationship[@parentTable=$table_name]">
<p>Table <xsl:value-of select="@name"/> parent relationships:</p>
<p>
<table width="100%">
<tr>
	<th>Relationship name</th>
	<th>Type</th>
	<th>Child table</th>
	<th>Description</th>
</tr>
<xsl:for-each select="$tables/table/relationships/relationship[@parentTable=$table_name]">
<tr>
	<td><xsl:value-of select="@name"/></td>
	<td><xsl:value-of select="@type"/></td>
	<td><xsl:value-of select="@childTable"/></td>
	<td><xsl:value-of select="@desc|desc"/></td>
</tr>
</xsl:for-each>

</table> 
</p>
<br/>
</xsl:if>
</body>


</html>
</xsl:template>

<xsl:template match="owner" mode="ownerName">
				<a href="mailto:{@email}">
					<xsl:choose>
						<xsl:when test="@lastName!=''"><xsl:value-of select="@firstName"/><xsl:text> </xsl:text><xsl:value-of select="@lastName"/></xsl:when>
						<xsl:when test="@fullName!=''"><xsl:value-of select="@fullName"/></xsl:when>
						<xsl:otherwise><xsl:value-of select="@name"/></xsl:otherwise>
					</xsl:choose>
				</a>
</xsl:template>
</xsl:stylesheet>
