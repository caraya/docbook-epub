<?xml version='1.0'?>
<xsl:stylesheet  
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:import href="../../docbook/xhtml/chunk.xsl"/>

<!-- Additional Stylesheet-->
<xsl:param name="html.stylesheet" select="'css/carlos-new.css'"/> 
<!-- Use graphics for admonitions? -->
<xsl:param name="admon.graphics" select="1"/>

<!-- Callouts -->
<xsl:param name="callout.graphics.extension">.png</xsl:param>
<xsl:param name="callout.graphics.path">images/callouts/</xsl:param>
<xsl:param name="callout.graphics" select="1"></xsl:param>
</xsl:stylesheet>
