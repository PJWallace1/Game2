/// @function          TileToScreenX(_tX, _tY)
/// @param {real} _tX  The tile X coordinate
/// @param {real} _tY  The tile Y coordinate
function TileToScreenX(_tX, _tY){
	return ((_tX - _tY) * (TILE_W * 0.5)) + (ROOM_W * 0.5);
}

/// @function          TileToScreenY(_tX, _tY)
/// @param {real} _tX  The tile X coordinate
/// @param {real} _tY  The tile Y coordinat
function TileToScreenY(_tX, _tY){
	return (_tX + _tY) * TILE_H * 0.5 + ROOM_H * 0.25;
}