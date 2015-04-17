


  void lijn() 
  {
    // Trying to make a invisible line under the player. 
    // This will detect the ground if that is true or not. 
    stroke(0);
    line((MainPlayer.Location.x+(MainPlayer.breedte/2)), MainPlayer.Location.y+MainPlayer.hoogte,(MainPlayer.Location.x+(MainPlayer.breedte/2)),MainPlayer.yInvisible_Line);    
  }
