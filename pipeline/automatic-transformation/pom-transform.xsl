<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns="http://maven.apache.org/POM/4.0.0"
  xmlns:m="http://maven.apache.org/POM/4.0.0"
  exclude-result-prefixes="m">
  <xsl:output omit-xml-declaration="yes" encoding="UTF-8" indent="yes"/>
  <xsl:template match="node()|@*">
    <xsl:copy>
      <xsl:apply-templates select="node()|@*"/>
    </xsl:copy>
  </xsl:template>
  <xsl:template match="/m:project/m:parent">
    <parent>
      <groupId>com.aviva.uk.integration</groupId>
      <artifactId>core-spring-boot-parent</artifactId>
      <version>0.0.1-SNAPSHOT</version>
	</parent>
  </xsl:template>
  <xsl:template match="/m:project/m:packaging">
    <packaging>jar</packaging>
  </xsl:template>
  <xsl:template match="/m:project/m:dependencies/m:dependency[m:groupId = 'org.springframework.osgi']"/>
  <xsl:template match="/m:project/m:dependencies/m:dependency[m:groupId = 'org.slf4j' and m:artifactId = 'slf4j-api']"/>
  <xsl:template match="/m:project/m:build/m:plugins/m:plugin[m:groupId = 'org.apache.felix' and m:artifactId = 'maven-bundle-plugin']"/>
  <xsl:template match="/m:project/m:build/m:plugins">
    <xsl:copy>
	  <xsl:apply-templates select="node()|@*"/>
	  <plugin>
        <groupId>org.springframework.boot</groupId>
        <artifactId>spring-boot-maven-plugin</artifactId>
      </plugin>
    </xsl:copy>
  </xsl:template>
</xsl:stylesheet>
