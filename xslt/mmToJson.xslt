<?xml version="1.0"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" version="2.0">
    <xsl:output method="text"/>
    <xsl:strip-space elements="*"/>

<xsl:template match="/">
{
    "root": <xsl:for-each select="map/node"><xsl:call-template name="node"/></xsl:for-each>
}
</xsl:template>

<xsl:template name="node">
    {
        "type":"<xsl:value-of select="normalize-space(substring-before(@TEXT,':'))"/>",
        "name":"<xsl:value-of select="normalize-space(substring-after(@TEXT,':'))"/>",
        <xsl:for-each select="attribute">"<xsl:value-of select="@NAME"/>":"<xsl:value-of select="@VALUE"/>",</xsl:for-each>
        "children":[
            <xsl:for-each select="node"><xsl:call-template name="node"/><xsl:if test="position() != last()">,</xsl:if></xsl:for-each>
        ]
    }
</xsl:template>

</xsl:stylesheet>