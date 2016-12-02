<html>
	<head>
	    <title>Hexagon World</title>
		<link rel="stylesheet" type="text/css" href="/css/main.css">
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
</body>
</html>