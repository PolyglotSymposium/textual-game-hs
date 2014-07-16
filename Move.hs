module Move where

data Coordinates = ColumnAndRow {column, row :: Integer} deriving (Eq, Show)

moveLeft coordinates = ColumnAndRow (column coordinates - 1) (row coordinates)
moveRight coordinates = ColumnAndRow (column coordinates + 1) (row coordinates)
moveUp coordinates = ColumnAndRow (column coordinates) (row coordinates - 1)
moveDown coordinates = ColumnAndRow (column coordinates) (row coordinates + 1)
