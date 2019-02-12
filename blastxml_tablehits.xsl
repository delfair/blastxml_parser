<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
 
<xsl:template match="/">
  <html>
    <head>
      <title>Generated by blastxml_tablehits.xsl</title>
    </head>
    <body>
      <xsl:apply-templates/>
    </body>
  </html>

</xsl:template>

<!--
table containing formatted data generated here using template match instruction
!-->

<xsl:template match="BlastOutput">
  <table width="100%" border="2">
    <tr bgcolor="silver">
      <td>Iteration</td>
      <td>Query_def</td>
      <td>Hit_def</td>
      <td>Hit_from</td>
      <td>Hit_to</td>
    </tr>
    <xsl:for-each select="BlastOutput_iterations/Iteration">
      <!-- 'for-each' instruction used to iterate through records / nodes -
      can achieve the same thing using 'template match' instructions!-->
      <tr>
        <td><xsl:value-of select="Iteration_iter-num"/></td>
        <td><xsl:value-of select="Iteration_query-def"/></td>
        <td><xsl:value-of select="Iteration_hits/Hit/Hit_def"/></td>
        <td><xsl:value-of select="Iteration_hits/Hit/Hit_hsps/Hsp/Hsp_hit-from"/></td>
        <td><xsl:value-of select="Iteration_hits/Hit/Hit_hsps/Hsp/Hsp_hit-to"/></td>
      </tr>
    </xsl:for-each>
  </table>
</xsl:template>

</xsl:stylesheet>
