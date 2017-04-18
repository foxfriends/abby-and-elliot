/* Script: message_init()
Creates the ds_queue used to store the messages, 
putting the handle into the globalvar message. 
Also initializes pos, the current last letter to show on screen
NOTE:   Do not use 'message' or 'pos' as a variable for
        something else in your game. It will break this.
Returns nothing.
*/
C.message = ds_queue_create();
C.pos = 0;
