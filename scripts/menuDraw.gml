///menuDraw()

var choiceWidth = sprite_get_width(spr_menuChoiceBox);

draw_self();
draw_set_valign(fa_middle);
for (var i = 0; i < numChoices; i++) {
    var boxy = y + sprite_height/(numChoices+1)*(i+1);
    draw_sprite(spr_menuChoiceBox, 0, x, boxy);
    draw_text(x - choiceWidth/2 + 8, boxy, choices[i]);
    if (i == selection) {
        arrowx = x - choiceWidth/2 - sprite_get_width(spr_menuArrow)/2 - 20;
        draw_sprite(spr_menuArrow, 0, arrowx, boxy);
    }
}
draw_set_valign(fa_top); //reset to default alignment
