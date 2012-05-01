<?xml version='1.0'?>
<xsl:stylesheet  
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:import href="../docbook/epub/docbook.xsl"/>

<!-- Additional Stylesheet-->
<xsl:param name="callout.graphics.extension">.png</xsl:param>
<xsl:param name="callout.graphics.path">images/callouts/</xsl:param>
<xsl:param name="callout.graphics" select="1"></xsl:param>
<xsl:param name="callout.graphics.number.limit" select="8"></xsl:param>
<!-- Additional items to add to package.opf-->
</xsl:stylesheet>
