
/*
 * MainScene.eq
 * Generated by Eqela Studio 2.0b7.4
 */

public class MainScene : SEScene
{
    SESprite bg;
    int w;
    int h;
    public static int x;
    public static int y;
	int i;
    
    public void initialize(SEResourceCache rsc) {
        base.initialize(rsc);
        w=get_scene_width();
        h=get_scene_height();
        x=0;
        y=0;
        add_entity(SESpriteEntity.for_color(Color.instance("white"), get_scene_width(), get_scene_height()));
        rsc.prepare_image("mystage","stage",w,h);
        bg= add_sprite_for_image(SEImage.for_resource("mystage"));
        bg.move(0,0);
            
		add_entity(new CloudEntity());
        add_entity(new PlayEntity());


    }
    public void update (TimeVal now, double delta)
    {
        base.update(now, delta);
    }
    public void on_pointer_move(SEPointerInfo pi)
    {
        base.on_pointer_move(pi);
        x=pi.get_x();
        y=pi.get_y();
    }
    public void cleanup() {
        base.cleanup();
    }
}

