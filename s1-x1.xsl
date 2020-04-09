<?xml version="1.0" encoding="UTF-8"?>
<!-- 1. XSLT für source1.xml
  - Namespace XSL ist definiert
  - keine weiteren Namespaces
  - keine Anweisungen
-->
<xsl:stylesheet
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  version="3.0">
  
</xsl:stylesheet>
<!-- Ergebnis
  - alle Textwerte, sonst nichts
  - Textwert:
    - Elemente Summe der Textwerte aller Kindknoten
    - Textknoten text() hat kompletten String (inkl. alle Whitespaces)
    - alle anderen: ""
-->