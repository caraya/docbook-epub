<?xml version='1.0'?>
<xsl:stylesheet  
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:import href="../docbook/epub3/chunk.xsl"/>

<!-- Additional Stylesheet-->
<xsl:param name="html.stylesheet" select="'carlos-new.css'"/> 
<!-- Use graphics for admonitions? -->
<xsl:param name="admon.graphics" select="1"/>

<!-- Callouts -->
<xsl:param name="callout.graphics.extension">.png</xsl:param>
<xsl:param name="callout.graphics.path">images/callouts/</xsl:param>
<xsl:param name="callout.graphics" select="1"></xsl:param>

<!-- Additional items to add to package.opf-->
<xsl:template name="user.manifest.items">
    <item xmlns="http://www.idpf.org/2007/opf" id="font2" href="type/GraublauWeb.otf" media-type="font/opentype"/>
    <item xmlns="http://www.idpf.org/2007/opf" id="font3" href="type/GraublauWebBold.otf" media-type="font/opentype"/>
</xsl:template>
</xsl:stylesheet>
