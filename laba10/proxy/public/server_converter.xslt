<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0"  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="body">
     
<h1>Преобразование на  стороне сервера</h1>
    <table>
        <xsl:for-each select="row">
         <tr><td><xsl:value-of select="m" /></td></tr>
         <tr><td><xsl:value-of select="n" /></td></tr>   
      </xsl:for-each>
  </table>

  
  </xsl:template>
</xsl:stylesheet>
