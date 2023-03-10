<?xml version="1.0" encoding="UTF-8"?>
    <xsl:stylesheet version="2.0"      
        xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
        xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
        xmlns="http://www.loc.gov/mods/v3"
        xmlns:fn="http://www.w3.org/2005/xpath-functions"
        xmlns:saxon="http://saxon.sf.net/"
        xmlns:xlink="http://www.w3.org/1999/xlink" 
        exclude-result-prefixes="fn xlink"
        >
        <xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes" media-type="text/xml"/>
       
        <xsl:strip-space elements="*"/>
        
        <xsl:template match="mods">
<!--           <xsl:result-document method="xml" encoding="UTF-8" indent="yes" href="file:///{//*:workingDirectory}N-{replace(//*:originalFile, '(.*/)(.*)(\.xml)','$2')}_{position()}.xml">-->
<!--             <xsl:result-document method="xml" encoding="UTF-8" indent="yes" href="file:///{//replace(base-uri(),'(.*/)(.*)(\.xml|\.json)', '$1')}N-{//replace(base-uri(),'(.*/)(.*)(\.xml|\.json)', '$2')}_{position()}.xml">        -->
                <mods version="3.4">
                    <xsl:namespace name="xlink">http://www.w3.org/1999/xlink</xsl:namespace>
                    <xsl:namespace name="xsi">http://www.w3.org/2001/XMLSchema-instance</xsl:namespace>
                    <xsl:attribute name="xsi:schemaLocation">http://www.loc.gov/mods/v3 http://www.loc.gov/standards/mods/v3/mods-3-7.xsd</xsl:attribute>
                    <xsl:for-each select="node()">
                        <xsl:apply-templates select="node()" />
                    </xsl:for-each>
                </mods>
                  
            <!--</xsl:result-document>-->
        </xsl:template>
        
        
        <xsl:template match="node()|@*">
            <xsl:copy>
                <xsl:apply-templates select="node()[normalize-space()]|@*[normalize-space()]"/>
            </xsl:copy>
        </xsl:template>
        
        <xsl:template match="text()" priority="3">
            <xsl:variable name="work" select="."/>                               <!-- HEX DUMP       -->
            
            <xsl:variable name="work" select="fn:replace( $work, '??????', '???')"/>  <!-- \xE2 \x80 \x93 -->        
            <xsl:variable name="work" select="fn:replace( $work, '??????', '???')"/>  <!-- \xE2 \x80 \x98 -->
            <xsl:variable name="work" select="fn:replace( $work, '??????', '???')"/>  <!-- \xE2 \x80 \x99 -->
            <xsl:variable name="work" select="fn:replace( $work, '??????', '???')"/>  <!-- \xE2 \x80 \x9c -->
            <xsl:variable name="work" select="fn:replace( $work, '??????', '???')"/>  <!-- \xE2 \x80 \x9d -->
            <xsl:variable name="work" select="fn:replace( $work, '??????', '???')"/>  <!-- \xE2 \x84 \xA2 -->       
            <xsl:variable name="work" select="fn:replace( $work, '??????', '???')"/>  <!-- \xE2 \x88 \x99 --> 
            <xsl:variable name="work" select="fn:replace( $work, '??????', '???')"/>  <!-- \xE2 \x8C \x80 --> 
            <xsl:variable name="work" select="fn:replace( $work, '??????', '???')"/>  <!-- \xE2 \x89 \xA4 -->
            <xsl:variable name="work" select="fn:replace( $work, '????????', '???')"/>  <!-- source issue   -->        
            <xsl:variable name="work" select="fn:replace( $work, '???????', '?')"/>  <!-- source issue   -->
            <xsl:variable name="work" select="fn:replace( $work, '??????', '???')"/>  <!-- source issue   -->
            <xsl:variable name="work" select="fn:replace( $work, '??????', '.')"/>
            <xsl:variable name="work" select="fn:replace( $work, '??????', '???')"/>
            <xsl:variable name="work" select="fn:replace( $work, '??????', '???')"/>        
            <xsl:variable name="work" select="fn:replace( $work, '???????', '??')"/>
            
            <xsl:variable name="work" select="fn:replace( $work, '??&#x88;&#x86;', '??')"/>
            <xsl:variable name="work" select="fn:replace( $work, '??&#x88;&#x9a;', 'V')"/>
            <xsl:variable name="work" select="fn:replace( $work, '??&#x82;&#x83;', '???')"/>
            <xsl:variable name="work" select="fn:replace( $work, '??&#x81;??', '???')"/>
            <xsl:variable name="work" select="fn:replace( $work, '??&#x80;&#x94;', '???')"/>
            <xsl:variable name="work" select="fn:replace( $work, '??&#x82;??', '???')"/>
            <xsl:variable name="work" select="fn:replace( $work, '??&#x81;??', '???')"/>
            <xsl:variable name="work" select="fn:replace( $work, '??&#x82;&#x82;', '???')"/>
            <xsl:variable name="work" select="fn:replace( $work, '??&#x88;&#x92;', '???')"/>
            <xsl:variable name="work" select="fn:replace( $work, '??&#x81;??', '+')"/>
            <xsl:variable name="work" select="fn:replace( $work, '??&#x82;&#x84;', '???')"/>
            <xsl:variable name="work" select="fn:replace( $work, '??&#x81;??', '???')"/>
            <xsl:variable name="work" select="fn:replace( $work, '??&#x81;??', '???')"/>
            
            <xsl:variable name="work" select="fn:replace( $work, '??&#x99;&#x80;', '???')"/>
            <xsl:variable name="work" select="fn:replace( $work, '??&#x99;&#x82;', '???')"/>
            
            
            
            <xsl:variable name="work" select="fn:replace( $work, '????', '??')"/>  <!-- \xC2 \xB0 -->
            <xsl:variable name="work" select="fn:replace( $work, '????', '??')"/>  <!-- \xC2 \xAE -->
            <xsl:variable name="work" select="fn:replace( $work, '????', '??')"/>
            <xsl:variable name="work" select="fn:replace( $work, '????', '??')"/>
            <xsl:variable name="work" select="fn:replace( $work, '????', '??')"/>
            
            
            <xsl:variable name="work" select="fn:replace( $work, '????', '??')"/>  <!-- \xC3 \x81 -->
            <xsl:variable name="work" select="fn:replace( $work, '????', '??')"/>  <!-- \xC3 \xB3 -->
            <xsl:variable name="work" select="fn:replace( $work, '????', '??')"/>  <!-- \xC3 \x97 -->        
            <xsl:variable name="work" select="fn:replace( $work, '????', '??')"/>  <!-- \xC3 \xA1 -->
            <xsl:variable name="work" select="fn:replace( $work, '????', '??')"/> 
            <xsl:variable name="work" select="fn:replace( $work, '????', '??')"/>
            <xsl:variable name="work" select="fn:replace( $work, '????', '??')"/>
            <xsl:variable name="work" select="fn:replace( $work, '????', '??')"/>
            <xsl:variable name="work" select="fn:replace( $work, '????', '??')"/>
            <xsl:variable name="work" select="fn:replace( $work, '????', '??')"/>
            <xsl:variable name="work" select="fn:replace( $work, '????', '??')"/>
            <xsl:variable name="work" select="fn:replace( $work, '????', '??')"/>        
            <xsl:variable name="work" select="fn:replace( $work, '????', '??')"/>
            <xsl:variable name="work" select="fn:replace( $work, '????', '??')"/>        
            <xsl:variable name="work" select="fn:replace( $work, '????', '??')"/>        
            <xsl:variable name="work" select="fn:replace( $work, '????', '.')"/>
            <xsl:variable name="work" select="fn:replace( $work, '????', '??')"/>        
            <xsl:variable name="work" select="fn:replace( $work, '?????', '???')"/> <!-- fix source issue -->
            <xsl:variable name="work" select="fn:replace( $work, '??-', '-')"/> <!-- fix source issue -->
            <xsl:variable name="work" select="fn:replace( $work, '????', '??')"/> <!-- fix source issue -->
            <xsl:variable name="work" select="fn:replace( $work, '????', '??')"/> <!--  -->
            <xsl:variable name="work" select="fn:replace( $work, '????', '??')"/> <!--  -->
            <xsl:variable name="work" select="fn:replace( $work, '????', '??')"/> <!--  -->
            <xsl:variable name="work" select="fn:replace( $work, '????', '??')"/> <!--  -->
            <xsl:variable name="work" select="fn:replace( $work, '????', '??')"/> <!--  -->
            <xsl:variable name="work" select="fn:replace( $work, '????', '??')"/> <!--  -->
            <xsl:variable name="work" select="fn:replace( $work, '????', '??')"/> <!--  -->
            <xsl:variable name="work" select="fn:replace( $work, '??&#x87;', '??')"/> <!--  -->
            
            
            
            <xsl:variable name="work" select="fn:replace( $work, '????', '??')"/>  <!-- \xC4 \xB1 -->       
            <xsl:variable name="work" select="fn:replace( $work, '????', '??')"/>  <!-- \xC4 \x87 -->
            <xsl:variable name="work" select="fn:replace( $work, '????', '??')"/>  <!-- \xC4 \x85 -->
            <xsl:variable name="work" select="fn:replace( $work, '??&#x90;', '??')"/>  <!-- \xC4 \x90 -->
            <xsl:variable name="work" select="fn:replace( $work, '????;', '??')"/>  <!-- \xC4 \x90 -->
            <xsl:variable name="work" select="fn:replace( $work, '????', '??')"/>
            
            
            <xsl:variable name="work" select="fn:replace( $work, '????', '??')"/>  <!-- \xC5 \x82 -->
            <xsl:variable name="work" select="fn:replace( $work, '????', '??')"/>  <!-- \xC5 \x86 -->
            <xsl:variable name="work" select="fn:replace( $work, '????', '??')"/>  <!-- \xC5 \x9F -->
            <xsl:variable name="work" select="fn:replace( $work, '????', '??')"/>  <!-- \xC5 \x9E -->
            <xsl:variable name="work" select="fn:replace( $work, '?????', '??')"/>  <!-- \xC5      -->        
            <xsl:variable name="work" select="fn:replace( $work, '??&#x91;', '??')"/>
            <xsl:variable name="work" select="fn:replace( $work, '????', '??')"/>
            <xsl:variable name="work" select="fn:replace( $work, '??&#x93;', '??')"/>
            
            
            <xsl:variable name="work" select="fn:replace( $work, '??&#x9f;', '.')"/>
            
            <xsl:variable name="work" select="fn:replace( $work, '????', '??')"/>  <!-- \xCE \xBC -->       
            <xsl:variable name="work" select="fn:replace( $work, '????', '??')"/>  <!-- \xCE \xA8 -->
            <xsl:variable name="work" select="fn:replace( $work, '????', '??')"/>  <!-- \xCE      -->
            <xsl:variable name="work" select="fn:replace( $work, '????', '??')"/>  <!-- \xCE      -->
            <xsl:variable name="work" select="fn:replace( $work, '????', '??')"/>  <!-- \xCE      -->        
            <xsl:variable name="work" select="fn:replace( $work, '????', '??')"/>  <!-- \xCE      -->
            <xsl:variable name="work" select="fn:replace( $work, '????', '??')"/>  <!-- \xCE      -->
            <xsl:variable name="work" select="fn:replace( $work, '????', '??')"/>  <!-- \xCE \x94 -->
            <xsl:variable name="work" select="fn:replace( $work, '????', '??')"/>  <!-- \xCE      -->
            <xsl:variable name="work" select="fn:replace( $work, '????', '??')"/>  <!-- \xCE      -->
            <xsl:variable name="work" select="fn:replace( $work, '????', 'e')"/>  <!-- \xCE      -->
            <xsl:variable name="work" select="fn:replace( $work, '????', 'e')"/>  <!-- \xCE      -->
            
            <xsl:variable name="work" select="fn:replace( $work, '??&#x87;', '??')"/>  <!-- \xCE      -->
            <xsl:variable name="work" select="fn:replace( $work, '????', '??')"/>  <!-- \xCE      -->
            <xsl:variable name="work" select="fn:replace( $work, '????', '??')"/>  <!-- \xCE      -->
            
            <xsl:variable name="work" select="fn:replace( $work, '??&#x80;', '`')"/>  <!-- -->
            
            
            <xsl:variable name="work" select="fn:replace( $work, '??&#x87;', '??')"/>  <!--      -->       
            
            <xsl:variable name="work" select="fn:replace( $work, '??????', 'fi')"/>  <!-- \xEF \xAC \x81 -->
            <xsl:variable name="work" select="fn:replace( $work, '??&#x82;', '???')"/>  <!-- -->
            
            
            <xsl:variable name="work" select="fn:replace( $work, '????', '??')"/> <!-- \xC2 \xB5 -->
            <xsl:variable name="work" select="fn:replace( $work, '????', '??')"/> <!-- \xC2  -->
            <xsl:variable name="work" select="fn:replace( $work, '????', '??')"/> <!-- \xC2  --> 
            <xsl:variable name="work" select="fn:replace( $work, '????', '??')"/> <!-- \xC2  -->
            <xsl:variable name="work" select="fn:replace( $work, '????', '??')"/> <!-- \xC2  -->        
            <xsl:variable name="work" select="fn:replace( $work, '????', '??')"/> <!-- \xC2  -->
            <xsl:variable name="work" select="fn:replace( $work, '????', '??')"/>  
            <xsl:variable name="work" select="fn:replace( $work, '????', '??')"/>
            <xsl:variable name="work" select="fn:replace( $work, '????', '??')"/>
            <xsl:variable name="work" select="fn:replace( $work, '????', '??')"/>
            
            <xsl:variable name="work" select="fn:replace( $work, '????', '??')"/>
            <xsl:variable name="work" select="fn:replace( $work, '????', '??')"/>
            
            <xsl:variable name="work" select="fn:replace( $work, '??&#x84;', '??')"/>
            
            <xsl:variable name="work" select="fn:replace( $work, '&#xA;', ' ')"/>
            <xsl:variable name="work" select="fn:replace( $work, '&#xD;', ' ')"/>
            <xsl:variable name="work" select="fn:replace( $work, '&#xE5F8;', '&#x2014;')"/>
            <xsl:variable name="work" select="fn:replace( $work, '&#xe5fc;', '&#x2261;')"/>
            <xsl:variable name="work" select="fn:replace( $work, '&#xe5fb;', '&#x2550;')"/>
            <xsl:value-of select="$work"/>
        </xsl:template>
        
    </xsl:stylesheet>
    
