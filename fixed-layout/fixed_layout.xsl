<?xml version='1.0'?>
<xsl:stylesheet  
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:exsl="http://exslt.org/common"
    exclude-prefixes="exsl" 
    version="1.0">

<xsl:import href="../docbook/epub3/chunk.xsl"/>

<!-- The two additional style sheets we're adding for ebook development-->
<xsl:param name="html.stylesheet" select="'carlos-new.css'"/> 
<xsl:param name="html.stylesheet" select="'fixed-layout.css'"/>
<!-- Use graphics for admonitions -->
<xsl:param name="admon.graphics" select="1"/>

<!-- Element to add to the header of the individual chunks -->
<xsl:template name="user.head.content">
    <meta name="viewport" content="width=1200, height=1700"/>
</xsl:template>
<!-- Additional items to add to package.opf -->
<xsl:template name="user.manifest.items">
    <item xmlns="http://www.idpf.org/2007/opf" id="font2" href="type/GraublauWeb.otf" media-type="font/opentype"/>
    <item xmlns="http://www.idpf.org/2007/opf" id="font3" href="type/GraublauWebBold.otf" media-type="font/opentype"/>
</xsl:template>

<!-- Work on fixed layout for epub3 books -->
<!-- Right now it only works on Apple iBooks reader -->
<xsl:template match="sect1[@role]">
<section> 
    <xsl:choose>
        <xsl:when test="@role = 'full-single'">
            <xsl:attribute name="class">fullsingle</xsl:attribute>
        </xsl:when>
        <xsl:when test="@role = 'leftside'">
            <xsl:attribute name="class">leftside</xsl:attribute>
        </xsl:when>
        <xsl:when test="@role = 'rightside'">
            <xsl:attribute name="class">rightside</xsl:attribute>
        </xsl:when>
    </xsl:choose>
    <xsl:apply-templates/>
</div>
</xsl:template>

<!-- 
    This hopefully will create the com.apple.ibooks.display-options.xml file that is 
    required for fixed layout books. Eventually I'd like to move it to XSLT from ANT so that
    we can run it with XSLTPROC only 
-->

<xsl:template match="/" mode = "create.options">
<exsl:document href="com.apple.ibooks.display-options.xml" indent="yes" omit-xml-declaration="no" >
&lt;display_options&gt;
&lt;platform name="*"&gt;
    &lt;option name="fixed-layout"&gt;true&lt;/option&gt;
    &lt;option name="orientation-lock"&gt;landscape-only&lt;/option&gt;
    &lt;option name="open-to-spread"&gt;true&lt;/option&gt;
&lt;/platform&gt;
&lt;/display_options&gt;
</exsl:document>
</xsl:template>
</xsl:stylesheet>
