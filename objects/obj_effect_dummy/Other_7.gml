/// @description  Destroy after the last loop.
if(LoopTimes != 1){
   LoopTimes = LoopTimes - 1;
}
else { instance_destroy(); }

