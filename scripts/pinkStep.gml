///pinkStep()

var oldy = y;

//Calculate horizontal movement
var left = keyboard_check(vk_left) or keyboard_check(ord('A'));
var right = keyboard_check(vk_right) or keyboard_check(ord('D'));
var dx = (right - left)*walkSpeed;

//Calculate vertical movement
var pressJump = keyboard_check(vk_up) or keyboard_check(ord('W')) or keyboard_check(vk_space);
//don't set onGround if we're moving upwards, to avoid snapping to the floor
var onGround = place_meeting(x, y+1, obj_block) and (vsp >= 0);
if (onGround) {
    //If we're on the ground and pressing jump, jump
    if (pressJump) {
        vsp = -jumpSpeed;
    }
    //If we're just on the ground, set vertical speed to 0
    else {
        vsp = 0;
    }
}
//If we're going up and still holding jump, reduce gravity
else if (pressJump and (vsp < 0)) {
    vsp += grav/2;
}
//If we're not holding jump, or we're going down, apply full gravity
else {
    vsp += grav;
}

//Apply movement
moveWithCollision(dx, vsp);
//If we hit a ceiling or floor, set our vertical speed to 0
if (abs(y - oldy) < abs(vsp)) {
    vsp = 0;
}

//Sword
if (keyboard_check(vk_shift) or keyboard_check(ord('Z'))) {
    instance_activate_object(obj_sword);
    with(obj_sword) {
        x = other.x + other.sprite_width/2;
        y = other.y - sprite_height/2;
    }
}
else {
    instance_deactivate_object(obj_sword);
}
