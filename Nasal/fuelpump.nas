
init = func {
  
   main_loop();
   }
    setlistener("/controls/fuel/switch-position", func(n) {
	position=n.getValue();
    setprop("/consumables/fuel/tank[0]/selected",false);
        if(position >= 0.0){
               setprop("/consumables/fuel/tank[" ~ position ~ "]/selected",false);
  }
    };
   },1);
    setlistener("/controls/engines/engine[0]/primer", func(n) {
	pos2=n.getValue();
        if(pos2 > 0.95){

               setprop("/consumables/fuel/tank[0]/selected",true);

