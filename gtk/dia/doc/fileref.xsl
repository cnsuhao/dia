<?xml version="1.0" encoding="iso-8859-1"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0"
  xmlns:fn="http://www.w3.org/2005/02/xpath-functions">
	<xsl:output
	   method="xml"
	   indent="yes"
	   encoding="utf-8"
	/>
 <xsl:template match="*">
  <xsl:copy>
   <xsl:for-each select="@*">
    <xsl:copy-of select="." />
   </xsl:for-each>
   <xsl:apply-templates />
  </xsl:copy>
 </xsl:template>
	
  <xsl:template match="//graphic">
  <xsl:copy>
   <xsl:for-each select="@*">
    <xsl:copy-of select="." />
   </xsl:for-each>
   <xsl:attribute name="fileref"><xsl:value-of select="@fileref" />.png</xsl:attribute>
  </xsl:copy>
  
  </xsl:template>
</xsl:stylesheet>