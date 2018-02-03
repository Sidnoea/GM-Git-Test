///pinkStep()

//Movement
/*
if (keyboard_check(vk_up) or keyboard_check(ord('W')) or keyboard_check(vk_space)) {
    
}
if (keyboard_check(vk_down) or keyboard_check(ord('S'))) {
    
}
*/
if (keyboard_check(vk_left) or keyboard_check(ord('A'))) {
    x -= walkSpeed;
}
if (keyboard_check(vk_right) or keyboard_check(ord('D'))) {
    x += walkSpeed;
}
