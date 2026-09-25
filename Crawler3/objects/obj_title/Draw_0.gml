// 1. Draw the object's actual sprite first
draw_self();

// 2. Limit the spark creation rate (adjust the number to spawn more or fewer)
if (irandom(2) == 0) {
    var spark_x = 0;
    var spark_y = 0;
    
    // 3. Pick a random edge: 0 = Top, 1 = Bottom, 2 = Left, 3 = Right
    var edge = irandom(3);
    
    switch (edge) {
        case 0: // Top edge
            spark_x = irandom_range(bbox_left, bbox_right);
            spark_y = bbox_top;
            break;
            
        case 1: // Bottom edge
            spark_x = irandom_range(bbox_left, bbox_right);
            spark_y = bbox_bottom;
            break;
            
        case 2: // Left edge
            spark_x = bbox_left;
            spark_y = irandom_range(bbox_top, bbox_bottom);
            break;
            
        case 3: // Right edge
            spark_x = bbox_right;
            spark_y = irandom_range(bbox_top, bbox_bottom);
            break;
    }
    
    // 4. Create the black spark at the calculated random edge position
    effect_create_above(ef_spark, spark_x, spark_y, 0, c_black);
}