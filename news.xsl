<?xml version="1.0"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <body>
    <div class="container">
        <div class="row">
            <div class="col-12">
                <strong><xsl:value-of select="news/category/categoryName"/></strong>
            </div>
        </div>
        <div class="row">
            <div class="col-12">
                <h1><xsl:value-of select="news/title"/></h1>
            </div>
        </div>
        <div class="row">
            <div class="col-12 text-right text-secondary">
                <span class="date"><xsl:value-of select="news/date"/></span>
            </div>
        </div>
        <div class="row">
            <div class="col-12">
                <p class="des text-secondary">
                    <xsl:value-of select="news/description"/>
                </p>
            </div>
        </div>
        <div class="row">
            <div class="col-12">
                <article>
                    <xsl:value-of select="news/content"/>
                </article>
            </div>
        </div>
        <div class="row">
            <div class="col-12">
                <div class="author d-flex align-items-center justify-content-end">
                    <img class="rounded-circle" width="30">
                        <xsl:attribute name="src">
                            <xsl:value-of select="news/author/avata"/>
                        </xsl:attribute>
                    </img>
                    <strong class="name ml-1 text-secondary"><xsl:value-of select="news/author/authorName"/></strong>
                </div>
            </div>
        </div>
        <div class="row">
            <strong class="col-1">Tags: </strong>
            <ul class="col-11 d-flex" style="list-style: none">
                <xsl:for-each select="news/tagList/tag">
                  <li><span class="badge badge-secondary mr-2"><xsl:value-of select="tagName"/></span></li>
                </xsl:for-each>
            </ul>
        </div>
    </div>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>