## blastxml_parser

Writing scripts in Perl, Python or similar to parse the good bits from NCBI-BLAST reports is of course a great execise in using regular expressions etc. In my experience a better way to parse XML (blastxml) reports is ... using XML. More specifically, XSLT is a powerful and native XML method for transforming XML documents: https://www.w3schools.com/xml/xsl_intro.asp 

This is a set of XSL stylesheets for transforming valid & well-formed NCBI-BLAST blastxml reports. These transforms generate simple html formatted output. They are easy to understand, and to modify if you want to parse out different fields, or generate output formatted as XML, plain text etc.

### blastxml_table.xsl
Transform to parse HSPs (hit number, ID, def & accession) into a simple html summary table.

### blastxml_tableseq.xsl
Transform to parse HSPs (hit number, ID, def, accession & HSP sequence) into a simple html summary table.

### blastxml_fasta.xsl
Transform to parse HSP hit sequences into multifasta format. This is a simple way to obtain the HSP sequences for further alignment, analysis etc.

These are particularly useful if you want to parse reports from standalone NCBI-BLAST on a local BLAST database using a multifasta query:

### blastxml_tablehits.xsl
Transform to parse HSPs (query def, hit def, HSP to & from) into html table

### blastxml_tablescore.xsl
Transform to parse HSPs (hit number, score and query def) into html table

### Example useage

Assumes UNIX / Linux / OSX operating system, and that blastxml report and XSL files are in the same directory. First, check that xsltproc is installed:

     xsltproc -V

If not, get it here:
http://xmlsoft.org/XSLT/xsltproc.html

Then:

     xsltproc -o outfile.html blastxml_fasta.xsl blasthits.xml
Or

     xsltproc blastxml_fasta.xsl blasthits.xml > outfile.html

