/* Script: message_read()
Returns the first string in the message queue.
Does not remove the message from the queue.
Used to get the string for various purposes.
*/
return ds_queue_head(C.message);
