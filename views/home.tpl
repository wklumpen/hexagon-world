<html>
	<head>
	    <title>Hexagon World</title>
		<link rel="stylesheet" type="text/css" href="/css/main.css">
		<script type="text/javascript" src="/js/HexagonTools.js"></script>
		<script type="text/javascript" src="/js/Grid.js"></script>
		<script type="text/javascript" src="/js/HexCalcs.js"></script>
    </head>
<body>
<h1>Map of {{world.title}}</h1>
<div class="hexGrid">
<%	
for row in world.tiles:
	for tile in row:
%>

	<img src="/res/{{tile.background}}">
	<%end%>
	<br>
<%end%>
</div>
Orientation: <br />
<input type="radio" name="hexOrientation" id="hexOrientationNormal" value="0" onChange="changeOrientation();" checked="true"  /><label for="hexOrientationNormal">Normal</label><br />
<input type="radio" name="hexOrientation" id="hexOrientationRotated" value="1" onChange="changeOrientation();" /><label for="hexOrientationRotated">Rotated</label><br />
<h3>Hex Based on Side Length</h3>
Side Length (z):<br />
<input type="text" id="sideLength" value="50.0" /><br />
Ratio of Width:Height (4:3, r = 1.333), (2/&radic;<span style="text-decoration:overline;">3</span>, r = 1.1547...)<br />
<input type="text" id="whRatio" value="1.1547005383792515290182975610039" /><br />
<input type="button" onclick="getHexGridZR()" value="Draw Hex Grid by Side Length Z"/>

<h3>Hex Based on Width and Height</h3>
Width:<br />
<input type="text" id="hexWidth" value="100.0" /><br />
Height:<br />
<input type="text" id="hexHeight" value="86.60254037844388" /><br />
<input type="button" onclick="getHexGridWH()" value="Draw Hex Grid by Width and Height"/>

<div id="hexStatus"></div>

<canvas id="hexCanvas" width="800" height="600" style="width:800px;height:600px" />

</body>
</html>