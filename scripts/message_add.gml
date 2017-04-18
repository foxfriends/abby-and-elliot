/* Script: message_add(str)
argument0 -> The string to display on screen (String)

Adds the given string to the message queue. Returns nothing
*/
var str;
str = argument0;
var spkrchar = ":", speaker = "";
if(string_pos(spkrchar, str)) {
    //Cut out the speaker's name from the message, store it in 'speaker'
    speaker = string_copy(str, 0, string_pos(spkrchar, str) - 1) + ": ";
    str = string_copy(str, string_pos(spkrchar, str) + 2, string_length(str))
}
//Wrap the string to the width
str = text_wrap(str, view_wview[0] - 32);
while(str != "") {
    var substr = "";
    //While there are less newline characters in the substr than lines in the box
    //and there are still characters in the remaining string
    while(string_count("#", substr) < 128 / string_height("A") ) {
        //Add a line to the substr and remove the line from the remaining string
        if(string_count("#", str) ) {
            substr += string_copy(str, 1, string_pos("#", str) );
            str = string_copy(str, string_pos("#", str) + 1, string_length(str) );
        } else { //No newlines left, just add the whole string
            substr += str;
            str = "";
            break; //End loop when there are no more newlines
        }
    }
    //Add the part of the message to the queue
    ds_queue_enqueue(C.message, speaker + substr);
}
