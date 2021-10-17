/// @function          TileToScreenX(_tX, _tY)
/// @param {real} _tX  The tile X coordinate
/// @param {real} _tY  The tile Y coordinate
function TileToScreenX(_tX, _tY){
	return ((_tX - _tY) * (TILE_W * 0.5)) + (ROOM_W * 0.5);
}

/// @function          TileToScreenY(_tX, _tY)
/// @param {real} _tX  The tile X coordinate
/// @param {real} _tY  The tile Y coordinate
function TileToScreenY(_tX, _tY){
	return (_tX + _tY) * TILE_H * 0.5 + ROOM_H * 0.25;
}

/// @function				ScreenToTileX(_screenX, _screenY)
/// @param {real} _screenX  The tile X coordinate
/// @param {real} _screenY  The tile Y coordinate
function ScreenToTileX(_screenX, _screenY){
	return floor((_screenX - ROOM_W * 0.5) / TILE_W + (_screenY - ROOM_H * 0.25) / TILE_H);
}

/// @function				ScreenToTileY(_screenX, _screenY)
/// @param {real} _screenX  The tile X coordinate
/// @param {real} _screenY  The tile Y coordinate
function ScreenToTileY(_screenX, _screenY){
	return floor((_screenY - ROOM_H * 0.25) / TILE_H - (_screenX - ROOM_W * 0.5) / TILE_W);
}