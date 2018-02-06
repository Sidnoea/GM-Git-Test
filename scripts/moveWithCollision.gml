///moveWithCollision(dx, dy)

var dx = argument0;
var dy = argument1;

//Move horizontally, then step backwards if necessary
if (dx != 0) { //A dx of 0 will cause an infinite loop if we're already inside a block
    x += dx;
    while place_meeting(x, y, obj_block) {
        x -= sign(dx);
    }
}

//Move vertically, then step backwards if necessary
if (dy != 0) { //A dy of 0 will cause an infinite loop if we're already inside a block
    y += dy;
    while place_meeting(x, y, obj_block) {
        y -= sign(dy);
    }
}

