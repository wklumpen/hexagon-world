import pickle
RES = "res"

TILESET = {"desert": "desert.gif",
           "sheep": "sheep.gif"}


class Map:
    def __init__(self, title, width, height):
        self.tiles = []
        for i in range(width):
            self.tiles.append([Tile("desert") for j in range(height)])
        self.roads = []
        self.title = title

    def save(self, filename):
        pickle.dump(self, open(filename, 'wb'))

    @staticmethod
    def load(filename):
        map = pickle.load(open(filename, 'rb'))
        return map

    def add_tile(self, keyword, x, y):
        self.tile[x][y] = Tile(TILESET[keyword])


class Tile:
    def __init__(self, background):
        self.background = TILESET[background]
        self.icon = None


