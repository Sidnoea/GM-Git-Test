///redBoyMove()

//Movement
if (keyboard_check(vk_left) or keyboard_check(ord('A'))) {
    x -= walkSpeed;
}
if (keyboard_check(vk_right) or keyboard_check(ord('D'))) {
    x += walkSpeed;
}
if (keyboard_check(vk_up) or keyboard_check(ord('W'))) {
    y -= walkSpeed;
}
if (keyboard_check(vk_down) or keyboard_check(ord('S'))) {
    y += walkSpeed;
}

//Shooting
if (canShoot and (keyboard_check(vk_space) or keyboard_check(vk_shift))) {
    instance_create(x+sprite_width, y+sprite_height/2, obj_redBullet);
    audio_play_sound(snd_redShoot, 1, false);
    canShoot = false;
    alarm_set(0, shootDelay);
}
