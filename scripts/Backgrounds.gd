extends TileMap

# Tile indices for background and foreground tiles
var background_tile_index = 1
var foreground_tile_index = 2

# Function to check if a given position is on a foreground tile
func is_on_foreground(position):

	# Convert the position to a cell position
	var cell_position = local_to_map(position)
	
	# Get the tile index at the given position
	var tile_index = get_cell_source_id(1, cell_position)
	return tile_index == foreground_tile_index
