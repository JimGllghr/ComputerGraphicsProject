


global_settings{ assumed_gamma 1.3}
#include "colors.inc"
#include "metals.inc"
#include "woods.inc"  
#include  "textures.inc"
#declare camera1 = camera{ 
   location<10,5,10> 
   right     x*image_width/image_height
   look_at <1,2,2>  
   rotate<0,-360*(clock+0.10),0>
}    
camera{camera1}
light_source {< 2, 13, -10> color White
} 



#declare base = cone{<1.29,0> 0.29,<1.29,0.29>,0.49}
#declare middle = union{cone{<1.29,0.29>,0.49,<1.29,0.39>,0.69} texture{T_Copper_1B}}
#declare top = union{cylinder{<1.29,0.39>,<1.29,1.39>,0.69} texture{T_Copper_1B}}
#declare full_bottom = union{object{base} object{middle} object{top}} 
#declare glass_bottom = union{cone{<1.29,1.39>,0.75,<1.29,1.79>, 1.0}  texture{Glass}}
#declare glass_shaft = union{cylinder{<1.29,1.79>,<1.29,2.39> 1.0} texture{Glass}} 
#declare glass_rise = union{cone{<1.29,2.39>, 1.0,<1.29,3.89>,1.5} texture{Glass}}
#declare glass_top = union{difference{sphere{<1.29,3.89>,1.5} object{glass_rise}} texture{Glass}}
#declare glass_full = union{object{glass_bottom} object{glass_shaft} object{glass_rise} object{glass_top}}



#declare wire =  union{cylinder{<1.29,1.39>,<1.29,3.68>,0.03} texture {
        pigment {color rgb <1, 1, 1>}
        finish {ambient 1 }
      }} 
#declare pawn = union{object{full_bottom} object{glass_full} object{wire}}

plane{ <0,1,0>, -0.012 pigment{ rgb<0.2,0.8,0.4> } }  
object{pawn}



