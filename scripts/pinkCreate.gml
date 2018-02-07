///pinkCreate()

walkSpeed = 10;
jumpSpeed = 10;
grav = 1;

enum dirs {up, down, left, right}

vsp = 0; //vertical speed
dir = dirs.right;

instance_create(0, 0, obj_sword);
instance_deactivate_object(obj_sword);
