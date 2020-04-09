<?xml version="1.0" encoding="UTF-8"?>
<!-- 2. XSLT für source1.xml
  - Namespace XSL ist definiert
  - keine weiteren Namespaces
  - keine Anweisungen
  
  - Match-all Template
-->
<xsl:stylesheet
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  version="3.0">
  <xsl:template match="processing-instruction()">
    <xsl:copy>
      MEHR
    </xsl:copy>
  </xsl:template>
  <!-- Dieses Template matcht auf alle Knoten, inkl. Attribute
  -->
  <xsl:template match="@* | node()">
    <xsl:copy>
      <xsl:apply-templates select="@* | node()" />
    </xsl:copy>
  </xsl:template>
</xsl:stylesheet>
<!-- Ergebnis
  - leeres Dokument: das Template matcht alles und sagte bereits
    beim document root: nichts machen!
-->