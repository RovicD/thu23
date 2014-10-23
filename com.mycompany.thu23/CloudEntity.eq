
/*
 * CloudEntity
 * Created by Eqela Studio 2.0b7.4
 */

public class CloudEntity : SEEntity
{
    int w;
    int h;
    SESprite cloud1;
    public void initialize(SEResourceCache rsc)
    {
        base.initialize(rsc);
        w=get_scene_width();
        h=get_scene_height();
        rsc.prepare_image("mycloud1", "cloud1", 0.1*w);
        cloud1=add_sprite_for_image(SEImage.for_resource("mycloud1"));
        cloud1.move(0.5*w, 0.5*h);
    }
    public void tick(TimeVal now, double delta)
    {
        base.tick(now,delta);
        cloud1.move(MainScene.x, MainScene.y);
        
    }
    public void cleanup()
     {
        base.cleanup();
    }
}
