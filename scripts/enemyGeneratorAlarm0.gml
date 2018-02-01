///enemyGeneratorAlarm0()

var xspawn = room_width;
var yspawn = irandom_range(room_height/4, room_height*3/4);
if (irandom(1) == 0) {
    instance_create(xspawn, yspawn, obj_blueDude);
}
else {
    instance_create(xspawn, yspawn, obj_greenGuy);
}
alarm_set(0, room_speed);
