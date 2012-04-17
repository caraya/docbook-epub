<?xml version='1.0'?>
<xsl:stylesheet  
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:import href="docbook/epub3/chunk.xsl"/>

<xsl:param name="html.stylesheet" select="'carlos-new.css'"/> 
<xsl:param name="admon.graphics" select="1"/>
<xsl:attribute-set name="monospace.verbatim.properties">
	<xsl:attribute name="font-size">
		<xsl:choose>
			<xsl:when test="processing-instruction('db-font-size')">
				<xsl:value-of select="processing-instruction('db-font-size')"/>
			</xsl:when>
			<xsl:otherwise>inherit</xsl:otherwise>
		</xsl:choose>
	</xsl:attribute>
	<xsl:attribute name="wrap-option">wrap</xsl:attribute>
	<xsl:attribute name="hyphenation-character">\</xsl:attribute>
</xsl:attribute-set>
</xsl:stylesheet>
