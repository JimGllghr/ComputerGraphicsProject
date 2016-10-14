#include "colors.inc"
#include "metals.inc"
#include "woods.inc"
#include "horse.pov"   
#include "pawn.pov" 
#include "rook.pov"
#include "bishop.pov"         
#include "queen.pov"   
#include "board.pov"  
#include "king.pov"

camera 
{
   location<-6,8,-6>      
   //location<0,5,0>
   look_at <6,-2,4>
}

plane{ <0,2,0>, -0.012 texture{Aluminum} translate <0,-1,0>}          

light_source
{
    < 2, 4, -1.5> color <.6,.97,.92>
} 
light_source 
{
    < 2, 4, 6> color rgb <.6,.97,.92>
} 
light_source 
{
    < -1.5, 4, -1.5> color rgb <.6,.97,.92>
} 
light_source
{
    < -1.5, 4, 7> color rgb <.6,.97,.92>
}            
                                 
light_source //Silver 
{
    < 7.5, 4, -1.5> color rgb  <.607,0,.172>
}   
light_source //Silver 
{
    < 7.5, 4, 6> color rgb <.607,0,.172>
}   
light_source //Silver 
{
    < 9, 4, -1.5> color rgb <.607,0,.172>
}   
light_source //Silver 
{
    < 9, 4, 6> color rgb <.607,0,.172>
}                                             
      
      
//gold pawns        
object{pawn_gold scale .4 translate <0,0,-3> }   
object{pawn_gold scale .4 translate <0,0,-1.5>}
object{pawn_gold scale .4}
object{pawn_gold scale .4 translate <0,0,1.5>}
object{pawn_gold scale .4 translate <0,0,3>}
object{pawn_gold scale .4 translate <0,0,4.5>}
object{pawn_gold scale .4 translate <0,0,6>}    
object{pawn_gold scale .4 translate <0,0,7.5>}  

//gold higher ups   
object{rook_gold scale .5 translate <-1.5,0,-3>}   
object{horse_gold scale .5 translate <-1.5,0,-1.5>}
object{bishop_gold scale .3 rotate<180,0,0> translate <-1.5,4.6,0>}
object{queen_red scale.7  translate <-1.5,0,1.5>}
object{king_red scale.7  translate <-1.5,0,3>}
object{bishop_gold scale .3 rotate<180,0,0> translate <-1.5,4.6,4.5>}
object{horse_gold scale .5 translate <-1.5,0,6>}    
object{rook_gold scale .5 translate <-1.5,0,7.5>} 

//silver pawns
object{pawn_silver scale .4 translate <7.5,0,-3>}   
object{pawn_silver scale .4 translate <7.5,0,-1.5>}
object{pawn_silver scale .4 translate <7.5,0,0>}
object{pawn_silver scale .4 translate <7.5,0,1.5>}
object{pawn_silver scale .4 translate <7.5,0,3>}
object{pawn_silver scale .4 translate <7.5,0,4.5>}
object{pawn_silver scale .4 translate <7.5,0,6>}    
object{pawn_silver scale .4 translate <7.5,0,7.5>} 
        
//silver higher ups  
object{rook_silver scale.5 translate <9,0,-3>}   
object{horse_silver scale .5 translate <9,0,-1.5>}
object{bishop_silver scale .3 rotate<180,0,0> translate <9,4.6,0>}
object{king_Silver scale.7 translate <9,0,1.5>}
object{queen_Silver scale.7 translate <9,0,3>}
object{bishop_silver scale .3 rotate<180,0,0> translate <9,4.6,4.5>}
object{horse_silver scale .5 translate <9,0,6>}    
object{rook_silver scale.5 translate <9,0,7.5>}       
                                            
//Chess Board
object{chessBoard translate <-1.5,0,-2.5> scale 1.5}   