<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    xmlns="http://www.w3.org/1999/xhtml"
    exclude-result-prefixes="xs math"
    version="3.0">
    
    <xsl:output method="xhtml" html-version="5" omit-xml-declaration="yes" 
        include-content-type="no" indent="yes"/>
    
   <xsl:template match="/">
       <html>
           <head>
               <title>Alice's Adventures Underground</title>
               <link rel="stylesheet" type="text/css" href="aliceXSLT.css"/> 
           </head>
           <body>
         
               <h1>Alice's Adventures Underground</h1> 
               
          <div id="reading-view">        
            <!-- READING VIEW PROCESSING STARTS HERE. -->
            <xsl:apply-templates select="descendant::chapter"/>
              
          </div>
   
           </body>
       </html>
   </xsl:template> 
    
    <!-- READING VIEW TEMPLATES -->
    <xsl:template match="chapter">
        <section class="chapter">
             <xsl:apply-templates/>
        </section>
    </xsl:template>
    
    <xsl:template match="heading">
        <h2 class="chapterHeading">
            <xsl:apply-templates/>
        </h2>
    </xsl:template>
    
    <xsl:template match="p">
        <div class="p">
            <xsl:apply-templates/>
        </div>
    </xsl:template>
    
    <xsl:template match="yap">
        <div class="yap">
            <xsl:apply-templates/>
        </div>
    </xsl:template>
    
    <!--<xsl:template match="yap"/>-->
    
    <xsl:template match="poem">
        <div class="poem">
            <xsl:apply-templates/>
        </div>
    </xsl:template>
    
    <xsl:template match="stanza">
        <div class="stanza">
            <xsl:apply-templates/>
        </div>
    </xsl:template>
    
    <xsl:template match="char">
        <span class="character"><xsl:apply-templates/></span>
    </xsl:template>
    
    <xsl:template match="image"/>
    
    <!--<xsl:template match="image">
        <figure><img src="{@source}"></img></figure> <xsl:apply-templates/>
    </xsl:template>-->
</xsl:stylesheet>