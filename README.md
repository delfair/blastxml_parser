## blastxml_parser

Writing scripts in Perl, Python or similar to parse the good bits from NCBI-BLAST reports is a great exercise in using regular expressions and/or XML parsing. A nicer way to parse XML (blastxml) reports is ... using XML. More specifically, XSLT is a powerful and native XML method for transforming XML documents: https://www.w3schools.com/xml/xsl_intro.asp 

This is a set of XSL stylesheets for transforming valid & well-formed NCBI-BLAST blastxml reports. These transforms are easy to understand and easy to modify if you want to parse out different fields from the XML tree, or generate output formatted as html or plain text (or more XML...)

### blastxml_table.xsl
Transform to parse HSPs (hit number, ID, def & accession) into a simple html summary table.

### blastxml_tableseq.xsl
Transform to parse HSPs (hit number, ID, def, accession & HSP sequence) into a simple html summary table.

### blastxml_fasta.xsl
Transform to parse HSP hit sequences into multifasta format. This is a simple way to obtain the HSP sequences for further alignment, analysis etc.

These are particularly useful if you want to parse reports from pairwise multifasta vs. multifasta NCBI-BLAST searches (e.g. a set of contigs vs. a set of genes of interest): 

### blastxml_tablehits.xsl
Transform to parse HSPs (query def, hit def, HSP location) into html table

### blastxml_tablescore.xsl
Transform to parse HSPs (hit number, score and query def) into html table

### Using the stylesheets

Assumes UNIX / Linux / OSX operating system, and that blastxml report and XSL files are in the same directory. 

xsltproc is part of libxlst so likely to be installed on your system by default. You can check:

     xsltproc -V

More info here:
http://xmlsoft.org/XSLT/index.html
See also the man pages:
http://xmlsoft.org/XSLT/xsltproc.html

Example useage:

     xsltproc -o outfile.html blastxml_fasta.xsl blasthits.xml
Or

     xsltproc blastxml_fasta.xsl blasthits.xml > outfile.html

That's it!
