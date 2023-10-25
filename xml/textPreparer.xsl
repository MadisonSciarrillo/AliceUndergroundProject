<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    exclude-result-prefixes="xs math"
    version="3.0">
    <xsl:mode on-no-match="shallow-copy"/>
    
    <xsl:template match="span[@class='u']">
        <uline>
            <xsl:apply-templates/>
        </uline>
        
    </xsl:template>
    
    <xsl:template match="span[@class='pagenum']"/>
    
    <xsl:template match="div[img]">
        <image source="au-images/{img/@src ! tokenize(., '/')[last()]}"/>
        
    </xsl:template>
    
    <xsl:template match="span[@style]">
        <l indent="{@style ! substring-after(., 'margin-left: ') ! substring-before(., ';')}">
            <xsl:apply-templates/>
        </l>
        
    </xsl:template>
        
    
    
</xsl:stylesheet>