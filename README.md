# blastxml_parser

Yet another blast report parser!

Writing scripts in Perl, Python or similar to parse the good bits from NCBI-BLAST reports is of course a great execise in using regular expressions etc. In my experience a better way to parse blast reports in XML (blastxml) format is ... using XML.

More specifically, XSLT is a powerful and native XML method for transforming XML documents:
https://www.w3schools.com/xml/xsl_intro.asp 

This is a set of XSL stylesheets for parsing valid & well-formed blastxml reports. They generate simple html formatted output, and are easy to understand, and to modify if you want to parse out different fields.

## Examples

Use xsltproc

http://xmlsoft.org/XSLT/xsltproc.html

     xsltproc -o blasthits_parsed.html blastxml_fasta.xsl blasthits.xml
Or
     xsltproc blastxml_fasta.xsl blastxml.xml > outfile.html

