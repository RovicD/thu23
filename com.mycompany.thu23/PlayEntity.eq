
/*
 * PlayEntity
 * Created by Eqela Studio 2.0b7.4
 */

public class PlayEntity : SEEntity
{
    SESprite sephi1;
    SESprite text;
    int w;
    int h;
    int mx;
    int my;
    int p_x;
    int p_y;
    
    public void initialize(SEResourceCache rsc) {
        base.initialize(rsc);
        w = get_scene_width();
        h = get_scene_height();
        rsc.prepare_image("mysephi1","sephi1",0.160*w);
        sephi1 = add_sprite_for_image(SEImage.for_resource("mysephi1"));
    
        sephi1.move(Math.random(0,w),Math.random(0,h));
        rsc.prepare_font("myfont","trebuchet ms bold color=black", 80);
        text = add_sprite_for_text(" ","myfont");
    }
    public void tick(TimeVal now, double delta) {
        base.tick(now,delta);
        
        mx = sephi1.get_x();
        my = sephi1.get_y();
        p_x = MainScene.x;
        p_y = MainScene.y;
        
        sephi1.move(mx+(p_x-mx)/20,my+(p_y-my)/20);
        if((mx/p_x)==1 && (my/p_y)==1){
            text.set_text("GAME OVER!");
            text.move(0.35*w, 0.45*h);
        }
        
    }
    public void cleanup() {
        base.cleanup();
    }
    
}
