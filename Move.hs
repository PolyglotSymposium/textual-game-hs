module Move where

moveLeft coordinates = (fst coordinates - 1, snd coordinates)
moveRight coordinates = (fst coordinates + 1, snd coordinates)
