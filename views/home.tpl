<html>
	<head>
	    <title>Hexagon World</title>
    </head>
<body>
<h1>Map of {{world.title}}</h1>
%for row in world.tiles:
	%for tile in row:
	<img src="/res/{{tile.background}}">
	%end
%end
</body>
</html>