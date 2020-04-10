<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  version="3.0">
  
  <xsl:template match="element">
<!--    <xsl:value-of select="count(preceding-sibling::*)"/>-->
<!--    <xsl:value-of select="count(preceding::*)"/>-->
    <xsl:apply-templates select="*"/>
  </xsl:template>
  
  <xsl:template match="kindelement">
    <xsl:copy>
<!--    <xsl:value-of select="count(preceding-sibling::*)"/>-->
<!--      <xsl:value-of select="count(preceding::*)"/>-->
<!--      <xsl:apply-templates select="(preceding::*)[1]/@n" />-->
      <xsl:apply-templates select="(preceding::*[1])/@n" />
    </xsl:copy>
  </xsl:template>
  
  <xsl:template match="XML">
<!--    <xsl:apply-templates select="//kindelement[1]/@n" />-->
    <xsl:apply-templates select="(//kindelement)[1]/@n" />
  </xsl:template>
  
  <xsl:template match="@n">
    <xsl:value-of select="string(.) || ' '"/>
  </xsl:template>
  
  <xsl:template match="@* | node()">
    <xsl:copy>
      <xsl:apply-templates select="@* | node()" />
    </xsl:copy>
  </xsl:template>
</xsl:stylesheet>