with (obj_player)
{
    if ((state == 17 || state == 18 || state == 11) && cutscene == 0)
    {
    }
    else if (state == 20 && hurted == 0)
    {
    }
    else if (state == 8)
    {
    }
    else if (state == 6 || state == 7)
    {
    }
    else if (state != 66 && hurted == 0 && cutscene == 0 && state != 65 && state != 109)
    {
        scr_sound(sound_touchspike)
        global.hurtcounter += 1
        alarm[8] = 60
        alarm[7] = 120
        hurted = 1
        if (xscale == other.image_xscale)
            sprite_index = spr_hurtjump
        else
            sprite_index = spr_hurt
        movespeed = 8
        vsp = -5
        timeuntilhpback = 300
        if (global.collect > 100)
            global.collect -= 100
        else
            global.collect = 0
        if (global.collect != 0)
        {
            instance_create(x, y, obj_pizzaloss)
            instance_create(x, y, obj_pizzaloss)
            instance_create(x, y, obj_pizzaloss)
            instance_create(x, y, obj_pizzaloss)
            instance_create(x, y, obj_pizzaloss)
            instance_create(x, y, obj_pizzaloss)
            instance_create(x, y, obj_pizzaloss)
            instance_create(x, y, obj_pizzaloss)
            instance_create(x, y, obj_pizzaloss)
            instance_create(x, y, obj_pizzaloss)
            instance_create(x, y, obj_pizzaloss)
            instance_create(x, y, obj_pizzaloss)
        }
        else if (obj_player.shotgunAnim == 1)
            obj_player.shotgunAnim = 0
        instance_create(x, y, obj_spikehurteffect)
        state = 66
        image_index = 0
        flash = 1
        global.style -= 15
    }
}
with (instance_nearest(x, y, obj_sluggy))
{
    if (obj_sluggy.state != 202)
    {
        state = 202
        sprite_index = spr_sluggy_parry
        image_index = 0
        movespeed = -8
        flash = 1
        image_xscale = (-(sign((x - obj_player.x))))
        scr_sound(58)
    }
}
