<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<!--
stylesheet to transform a valid & well-formed blastxml report
*nix OS:
$> xsltproc blastxml_fasta.xsl blastxml.xml > outfile.html
!-->


  <xsl:template match="/">
    <html>
      <head>
	<title>Generated by blastxml_parser</title>
      </head>
      <body>
	<xsl:apply-templates/>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="BlastOutput">
      <xsl:for-each select="BlastOutput_iterations/Iteration/Iteration_hits/Hit">
	  ><xsl:value-of select="Hit_id"/>
	  <xsl:value-of select="Hit_def"/><br></br>
	  <xsl:value-of select="Hit_hsps/Hsp/Hsp_hseq"/><br></br>
      </xsl:for-each>
   </xsl:template>
</xsl:stylesheet>