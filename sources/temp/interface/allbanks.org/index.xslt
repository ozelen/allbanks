<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:import href="sources/temp/include.xslt"/>
	<xsl:output method="html" version="1.0" encoding="utf-8" indent="yes"/>
	<xsl:key name="comp" match="office" use="company/@id"/>
	<xsl:template match="/">
		<!--
		<div id="login">
			<table>
				<tr>
					<td>Login</td>
					<td>
						<input type="text"/>
					</td>
				</tr>
				<tr>
					<td>Password</td>
					<td>
						<input type="password"/>
					</td>
				</tr>
				<tr>
					<td>
						<input type="submit"/>
					</td>
				</tr>
			</table>
		</div>
		-->
		<xsl:call-template name="MainTemp" />
	</xsl:template>
</xsl:stylesheet>