<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<head>
<style>
h1{
border: 1px solid orange;
text-align: center;
background-color:purple;
color: white;
}
table{
border: 1px solid black;
with:100%;
text-align: center;
border-collapse: collapse;
}
td:nth-child(even){
background-color: #FC9900;
}
td:nth-child(odd){
background-color: #989693;
}
th:nth-child(even){
background-color: #FC9900;
font-size: 150%;
}
th:nth-child(odd){
background-color: #989693;
font-size: 150%;
}
img {
width: 200px;
height: 200px;
}
</style>
</head>
<body>
<h1>Vuelta al mundo de Méndez</h1>
<table>
<tr>
<th>Etapa</th>
<th>Fecha inicio</th>
<th>Fecha fin</th>
<th>Lugar de salida</th>
<th>Lugar de destino</th>
<th>Pais</th>
<th>Transporte</th>
<th>Anecdota</th>
<th>Imagen</th>
<th>Valoracion</th>
</tr><xsl:for-each select="vuelta/etapa"><tr>
<td><xsl:value-of select="@id" /></td>
<td><xsl:value-of select="fecha_inicio" /></td>
<td><xsl:value-of select="fecha_fin" /></td>
<td><xsl:value-of select="lugar_origen" /></td>
<td><xsl:value-of select="lugar_destino" /></td>
<td><xsl:value-of select="pais" /></td>
<td><xsl:value-of select="transporte[@tipo='coche']" /><br/>
<xsl:value-of select="transporte[@tipo='avion']" /><br/>
<xsl:value-of select="transporte[@tipo='tren']" /><br/>
<xsl:value-of select="transporte[@tipo='barco']" /><br/>
<xsl:value-of select="transporte[@tipo='camello']" /></td>
<td><xsl:value-of select="anecdota" /></td>
<td><img><xsl:attribute name="src"><xsl:value-of select="foto"/>
</xsl:attribute></img></td>
<td><xsl:value-of select="valoracion" /></td>
</tr>
</xsl:for-each>
</table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>