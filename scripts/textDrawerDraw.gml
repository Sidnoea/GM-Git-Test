///textDrawerDraw()
if (room == rm_hawaii) {
    draw_text(0, room_height-100, 'Score: ' + string(score));
    draw_text(0, room_height-50, 'Instances: ' + string(instance_count));
}
else if (room == rm_ferret) {
    if (instance_exists(obj_sword)) {
        with (obj_sword) {
            var swordID = id;
        }
        draw_text(0, room_height-50, 'Sword y: ' + string(swordID.y));
    }
    else {
        draw_text(0, room_height-50, 'Sword y: none');
    }
}
