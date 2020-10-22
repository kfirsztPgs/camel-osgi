<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns="http://www.springframework.org/schema/beans"
  xmlns:b="http://www.springframework.org/schema/beans"
  exclude-result-prefixes="b">
  <xsl:output omit-xml-declaration="no" encoding="UTF-8" indent="yes"/>
  <xsl:template match="node()|@*">
    <xsl:copy>
      <xsl:apply-templates select="node()|@*"/>
    </xsl:copy>
  </xsl:template>
  <xsl:template match="/b:beans/b:bean[@id = 'bridgePropertyPlaceholder']">
    <xsl:copy>
      <xsl:attribute name="primary">true</xsl:attribute>
	  <xsl:apply-templates select="node()|@*"/>
	</xsl:copy>
  </xsl:template>
</xsl:stylesheet>
