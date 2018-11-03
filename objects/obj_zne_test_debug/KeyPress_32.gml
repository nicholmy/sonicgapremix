I = find("obj_zne_test_collapse", false)
if(I == -1){
   show_message("Fail")
}else{
   instance_create(par_character.x+60, par_character.y-60, I);
}

