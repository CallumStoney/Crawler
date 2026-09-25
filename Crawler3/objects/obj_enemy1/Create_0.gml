last_turn_num = global.turn; 

Move_left = false;
Move_right = false;
Move_up = false;
Move_down = false;

left_values = true;
right_values = true;
up_values = true;
down_values = true;
attack_values = true;

left_start_x = 0;
left_end_x = 0;
left_start_y = 0;
left_end_y = 0;

right_start_x = 0;
right_end_x = 0;
right_start_y = 0;
right_end_y = 0;

up_start_x = 0;
up_end_x = 0;
up_start_y = 0;
up_end_y = 0;

down_start_x = 0;
down_end_x = 0;
down_start_y = 0;
down_end_y = 0;

attack_start_x = 0;
attack_end_x = 0;
attack_start_y = 0;
attack_end_y = 0;

left_move_progress = 0;
left_move_target = 10; //change based on 60 -> 1 second
right_move_progress = 0;
right_move_target = 10; //change based on 60 -> 1 second
up_move_progress = 0;
up_move_target = 10; //change based on 60 -> 1 second
down_move_progress = 0;
down_move_target = 10; //change based on 60 -> 1 second
attack_move_progress = 0;
attack_move_target = 10; //change based on 60 -> 1 second


//health
hp_max = 30;
hp = hp_max;
oldhp = hp_max;
healthBar_width = 56;
healthBar_x = x - 5;
healthBar_y = y - 10;

border = instance_create_layer(healthBar_x, healthBar_y, "Instances_FogOfWar", obj_enemyHealthBorder);
border.image_xscale = 1;
border.image_yscale = 1;
healthIm = instance_create_layer(healthBar_x, healthBar_y, "Instances_FogOfWar", obj_enemyHealth);

attacking = false;

checkifMove = false;
death = false;
canMove = true;

isIdle = true;

goTowardsPlayer = false;
moveBack = false;

previoushp = hp;

