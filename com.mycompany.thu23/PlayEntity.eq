
/*
 * PlayEntity
 * Created by Eqela Studio 2.0b7.4
 */

public class PlayEntity : SEEntity
{
    int w;
    int h;
    SESprite sephi1;
	int mx;
	int my;
	int pX;
	int py;

    public void initialize(SEResourceCache rsc)
    {
        base.initialize(rsc);
        w=get_scene_width();
        h=get_scene_height();
        rsc.prepare_image("mysephi1", "sephi1", 0.160*w);
        sephi1=add_sprite_for_image(SEImage.for_resource("mysephi1"));
        sephi1.move(Math.random(0,w), Math.random(0,h));
    }
    public void tick(TimeVal now, double delta)
    {
		mx = sephi1.get_x();
		my = sephi1.get_y();
		pX = MainScene.x;
		py = MainScene.y;
        base.tick(now,delta);
		sephi1.move(mx+(pX-mx)/Math.random(50,50),my+ (py-my)/Math.random(50,50));
    }
    public void cleanup()
     {
        base.cleanup();
    }
}
