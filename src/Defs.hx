import js.html.Element;

interface IHasContext
{
	public function set_context(context:EContext):Void;
}

interface IModal
{
	public var element:Element;
	public function open():Void;
	public function close():Void;
}

typedef ProjectData =
{
	name:String,
	levels:Array<LevelData>,
}

typedef LevelData =
{
	name:String,
	layers:Array<LayerData>,
}

typedef LayerData =
{
	context:EContext,
	width:Int,
	height:Int,
	?tilemap:TilemapData,
	?entities:Array<EntityData>,
}

typedef TilemapData =
{
	data:Array<Array<Int>>,
	tileset:String,
	tile_width:Int,
	tile_height:Int,
}

typedef EntityData =
{
	name:String,
	x:Int,
	y:Int,
	options:Dynamic,
}

enum EContext
{
	TILE;
	ENTITY;
}

enum ETool
{
	CURSOR;
	PENCIL;
	ERASER;
	BUCKET;
}