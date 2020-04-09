<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:tei="http://www.tei-c.org/ns/1.0"
  xmlns=""
  version="3.0">
  
  
  <xsl:template match="@* | *">
    <xsl:text>
</xsl:text>
    <xsl:choose>
      <xsl:when test=". instance of attribute()">attribute(): </xsl:when>
      <xsl:otherwise>element(): </xsl:otherwise>
    </xsl:choose>
    <xsl:value-of select="
      string-join(namespace-node(), '; ')
      || ' – '
      || namespace-uri()
      || ' – '
      || local-name()"/>
    <xsl:apply-templates />
  </xsl:template>
  
  <xsl:template match="text()">
    <xsl:text>
text()</xsl:text>
  </xsl:template>
</xsl:stylesheet>