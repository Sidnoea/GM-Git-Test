///Red Boy Movement

if (keyboard_check(vk_right)) {
    x += walkSpeed;
}
if (keyboard_check(vk_left)) {
    x -= walkSpeed;
}
if (keyboard_check(vk_up)) {
    y -= walkSpeed;
}
if (keyboard_check(vk_down)) {
    y += walkSpeed;
}
