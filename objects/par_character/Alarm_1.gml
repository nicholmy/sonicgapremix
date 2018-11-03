/// @description  Destroy shields underwater.
    if(Shield = ShieldElectricity && !instance_exists(obj_effect_electro_flash)){
       instance_create(0, 0, obj_effect_electro_flash);
    }         
    Shield = ShieldDefault;
    with(ShieldChild){
         instance_destroy();
    }

