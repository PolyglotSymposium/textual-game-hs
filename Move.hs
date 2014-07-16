module Move where

moveLeft coordinates = (fst coordinates - 1, snd coordinates)
moveRight coordinates = (fst coordinates + 1, snd coordinates)
moveUp coordinates = (fst coordinates, snd coordinates - 1)
moveDown coordinates = (fst coordinates, snd coordinates + 1)
