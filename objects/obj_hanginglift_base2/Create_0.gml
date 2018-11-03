/// @description Create the chain and hook
chainHook = instance_create(x, y + 128, obj_hanginglift_hook);

chainObj = instance_create(x, y, par_gimmick_chain_extend);
chainObj.chainResource = obj_hanginglift_ball;
chainObj.depth = 3;

chainObj.endX = chainHook.x;
chainObj.endY = chainHook.y;
