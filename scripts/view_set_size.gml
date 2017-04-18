//Set up views to be room width * 640, and follow the player with a border of 1/3 the width
view_enabled = true;
view_visible[0] = true;
view_wview[0] = min(room_width, display_get_width());
if(!window_get_fullscreen()) {
    view_wview[0] -= 64;
    alarm[0] = 1;
}
view_hview[0] = 640;
view_wport[0] = view_wview[0];
view_hport[0] = view_hview[0];
view_object[0] = Player;
view_hborder[0] = floor(view_wview[0] / 3);
window_set_size(view_wview[0], view_hview[0]);
if(room == rTitle || room == rEnd) {
    view_xview[0] = room_width - view_wview[0];
}
