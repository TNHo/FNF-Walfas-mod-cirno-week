package;

import flixel.FlxSprite;

class HealthIcon extends FlxSprite
{
	/**
	 * Used for FreeplayState! If you use it elsewhere, prob gonna annoying
	 */
	public var sprTracker:FlxSprite;

	public function new(char:String = 'bf', isPlayer:Bool = false)
	{
		super();
		
		loadGraphic(Paths.image('iconGrid'), true, 150, 150);

		antialiasing = true;
		animation.add('bf', [0, 1], 0, false, isPlayer);
		animation.add('bf-car', [0, 1], 0, false, isPlayer);
		animation.add('bf-christmas', [0, 1], 0, false, isPlayer);
		animation.add('bf-pixel', [21, 21], 0, false, isPlayer);
		animation.add('face', [10, 11], 0, false, isPlayer);
		animation.add('dad', [12, 13], 0, false, isPlayer);
		animation.add('TNHo', [14, 15], 0, false, isPlayer);
		animation.add('gf', [16], 0, false, isPlayer);
		animation.add('gf-christmas', [16], 0, false, isPlayer);
		animation.add('gf-pixel', [16], 0, false, isPlayer);
		animation.add('patchouli', [24, 25], 0, false, isPlayer);
		animation.add('patchouli-angry', [26, 27], 0, false, isPlayer);
		animation.add('koakuma', [28, 29], 0, false, isPlayer);
		animation.add('mokou', [30, 31], 0, false, isPlayer);
		animation.add('reimu', [32, 33], 0, false, isPlayer);
		animation.add('kogasa', [34, 35], 0, false, isPlayer);
		animation.add('cirno', [36, 37], 0, false, isPlayer);
		animation.add('sakuya', [38, 39], 0, false, isPlayer);
		animation.add('marisa', [40, 41], 0, false, isPlayer);
		animation.add('rumia', [42, 43], 0, false, isPlayer);
		animation.add('bf-walfas', [0, 1], 0, false, isPlayer);
		animation.add('cirno-pissed', [44, 45], 0, false, isPlayer);
		animation.add('aya', [46, 47], 0, false, isPlayer);
		animation.add('koishi', [8, 9], 0, false, isPlayer);
		animation.add('meiling-sleeping', [6, 7], 0, false, isPlayer);
		animation.add('momiji', [48, 49], 0, false, isPlayer);
		animation.play(char);

		switch(char)
		{
			case 'bf-pixel' | 'senpai' | 'senpai-angry' | 'spirit' | 'gf-pixel':
				antialiasing = false;
		}

		scrollFactor.set();
	}

	override function update(elapsed:Float)
	{
		super.update(elapsed);

		if (sprTracker != null)
			setPosition(sprTracker.x + sprTracker.width + 10, sprTracker.y - 30);
	}
}
