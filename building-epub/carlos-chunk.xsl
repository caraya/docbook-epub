<?xml version='1.0'?>
<xsl:stylesheet  
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:import href="../docbook/epub3/chunk.xsl"/>

<xsl:param name="html.stylesheet" select="'carlos-new.css'"/> 
<xsl:param name="kindle.extensions" select="1"/>
<xsl:param name="epub.include.optional.metadata.dc.elements" select="0"/>

<!-- Graphics and callouts -->
<xsl:param name="admon.graphics" select="1"/>
<xsl:param name="callout.graphics.extension">.png</xsl:param>
<xsl:param name="callout.graphics.path">images/callouts/</xsl:param>
<xsl:param name="callout.graphics" select="1"></xsl:param>
<xsl:param name="callout.graphics.number.limit" select="8"></xsl:param>


<xsl:template name="user.manifest.items">
    <item xmlns="http://www.idpf.org/2007/opf" id="font2" href="type/GraublauWeb.otf" media-type="application/vnd.ms-opentype"/>
    <item xmlns="http://www.idpf.org/2007/opf" id="font3" href="type/GraublauWebBold.otf" media-type="application/vnd.ms-opentype"/>
</xsl:template>
</xsl:stylesheet>
