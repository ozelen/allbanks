<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" version="1.0" encoding="utf-8" indent="yes"/>
	<xsl:template match="/">
        <xsl:apply-templates select="//items" />
        <xsl:if test="not(//item)">
            No items
        </xsl:if>
	</xsl:template>

	<xsl:template match="items">
		<ol>
		<xsl:for-each select="item">
            <xsl:variable name="id">n<xsl:value-of select="@node" />i<xsl:value-of select="@id" /></xsl:variable>
			<li>
                [<xsl:value-of select="@type" />]
                <xsl:if test="not(@code='')">
                    [<xsl:value-of select="@code" />]
                </xsl:if>
                <a href="/adm/geo/{@id}/" class="ajax" target="a{@id}"><xsl:value-of select="."/></a>
                <div id="a{@id}"></div>
            </li>
		</xsl:for-each>
		</ol>
	</xsl:template>

</xsl:stylesheet>