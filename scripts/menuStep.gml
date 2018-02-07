///menuStep()

if (keyboard_check_pressed(vk_up) or keyboard_check_pressed(ord('W'))) {
    selection--; //Game Maker's modulo returns negative values, so we can't use it to wrap
    if (selection < 0) {
        selection = numChoices-1;
    }
}
else if (keyboard_check_pressed(vk_down) or keyboard_check_pressed(ord('S'))) {
    selection = (selection+1)%numChoices;
}
if (keyboard_check_pressed(vk_enter)) {
    show_message_async('You selected ' + choices[selection]);
}
