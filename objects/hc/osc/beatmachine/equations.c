#include "./equations.h"

uint32_t Equation(int equation_num, uint32_t t, uint32_t x, uint32_t y, uint32_t z, uint32_t attr_beat) {
    switch (equation_num) {

        // Mostly taken from http://pelulamu.net/countercomplex/music_formula_collection.txt
    
        case 0: // object text field
        w = attr_beat;
        break;

        case 1: // viznut 2011-09-18 http://www.youtube.com/watch?v=GtQdIYUtAHg
        w = t*(((t>>x)|(t>>y))&(z&(t>>4)));
        break;

        case 2: // tejeez 2011-09-18 http://www.youtube.com/watch?v=GtQdIYUtAHg
        w = (t*(t>>x|t>>y))>>(t>>z);
        break;
   
        case 3: // visy 2011-09-18 http://www.youtube.com/watch?v=GtQdIYUtAHg
        w = t*(((t>>x)|(t>>y))&(z&(t>>6)));
        break;
      
        case 4: // tejeez 2011-09-18 http://www.youtube.com/watch?v=GtQdIYUtAHg
        w = t*(((t>>x)&(t>>y))&(z&(t>>3)));
        break;
     
        case 5: // visy 2011-09-18 http://www.youtube.com/watch?v=GtQdIYUtAHg
        w = t*(t>>x*((t>>y)|(t>>x))&(z|(t>>19)*5>>t|(t>>3)));
        break;     
      
        case 6: // blueberry 2011-10-05 http://pouet.net/topic.php?which=8357&page=12 
        w = t*(((t>>x)^((t>>x)-1)^1)%y);  
        break;

        case 7: // visy 2011-09-18 http://www.youtube.com/watch?v=GtQdIYUtAHg "Space Invaders vs Pong"
        w = t*(t>>((t>>x)|(t>>y))&(z&(t>>4)));
        break;

        case 8:
        w = (((1317-x)*t)|w/y%t)>>(z>>6);
        break;

        case 9:
        w = (((t%(t>>x|t>>y))>>z)&t)-1;
        break;

        case 10:
        w = t/(t%(t>>x|t>>y));
        break;

        case 11:
        w = (t*(t>>x|t>>y))>>(t>>z&t);
        break;

        case 12:
        w = ((2*(t&1)-1)*t)-(t>>x);
        break;

        case 13:
        w = (t&t>>x)-(t>>y&t);
        break;	

        default: // object text field
        w = attr_beat;
    }
    
    return w;
}
