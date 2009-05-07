<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:import href=
    "../../../lib/docbook-xsl/html/profile-chunk.xsl"/>
  <xsl:import href="docbook_general.xsl"></xsl:import>
  <xsl:param name="admon.graphics">1</xsl:param>
  <xsl:param name="callout.graphics">1</xsl:param>

<xsl:param name="admon.graphics" select="1" />

<xsl:param name="generate.toc">
appendix  toc,title
article/appendix  nop
article   toc,title
book      toc,title,figure,table,example,equation
chapter   nop
part      toc,title
preface   toc,title
qandadiv  toc
qandaset  toc
reference toc,title
sect1     toc
sect2     toc
sect3     toc
sect4     toc
sect5     toc
section   toc
set       toc,title
</xsl:param>

<xsl:param name="chunk.section.depth">0</xsl:param>

<xsl:template name="user.header.content">
  <p><a href="../../index_en.html">dia-installer.de</a> / <a href="../../documentation.html">Documentation</a> / Manual</p>
</xsl:template>

<xsl:template name="user.footer.content">
  <p><a href="../../index_en.html">dia-installer.de</a> / <a href="../../documentation.html">Documentation</a> / Manual</p>
  <p><a href="../../imprint.html">Imprint</a> | <a href="../../privacypolicy.html">Privacy Policy</a></p>
<script type="text/javascript">
var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");
document.write(unescape("%3Cscript src='" + gaJsHost + "google-analytics.com/ga.js' type='text/javascript'%3E%3C/script%3E"));
</script>
<script type="text/javascript">
var pageTracker = _gat._getTracker("UA-389797-2");
pageTracker._initData();
pageTracker._trackPageview();
</script>
</xsl:template>

</xsl:stylesheet>