<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:param name="MAKE"></xsl:param>
	<xsl:param name="MODEL"></xsl:param>
	<xsl:param name="VERSION"></xsl:param>
    <xsl:template match="/cars">
        <cars>
            <xsl:for-each select="car">
              <xsl:if test="make = $MAKE ">
                <xsl:if test="model = $MODEL ">
                  <xsl:if test="version = $VERSION ">
                    <car>
                       <make><xsl:value-of select="make"/></make>
                       <model><xsl:value-of select="model"/></model>
                       <version><xsl:value-of select="version"/></version>
                    </car>
                  </xsl:if>
                </xsl:if>  
              </xsl:if>
            </xsl:for-each>
        </cars>
    </xsl:template>
</xsl:stylesheet>