<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:tei="http://www.tei-c.org/ns/1.0">
    <xsl:output method="html" />
    <xsl:template match="/">
        <html>
            <head>

                <title>Ernst und Falk</title>
                <link rel="stylesheet" type="text/css" href="stylesheet.css" />
            </head>
            <body>
                <div class="container">
                    <p class="pagenumber">--<xsl:value-of
                            select="/tei:TEI/tei:text/tei:body/tei:pb/@n" />--</p>
                    <h1>Erstes Gespräch</h1>
                    <xsl:apply-templates
                        select="/tei:TEI/tei:text/tei:body/tei:sp" />
                </div>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="tei:sp">
        <p class="speaker">
            <xsl:value-of select="tei:speaker" />
        </p>
        <p class="text">
            <xsl:value-of select="tei:p" />
        </p>

    </xsl:template>

</xsl:stylesheet>