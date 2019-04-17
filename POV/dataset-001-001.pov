#include "colors.inc"
#include "textures.inc"

#declare _texMaskTarget = texture {
  pigment { color Black }
}

#declare RndSeed = seed(clock);
#declare _posCamera = <0.0,10.0,0.0>;
#declare _lookAt = <0.0,0.0,0.0>;

#macro rnd(A,B)
  (A+(B-A)*rand(RndSeed))
#end
camera {
  location    <rnd(30.0, 50.0),rnd(30.0, 50.0),rnd(30.0, 50.0)>
  look_at     <0.0,0.0,0.0>
  right x
}

light_source {
  <rnd(-5.0, 5.0), 10.0, rnd(-5.0, 5.0)>
  color rgb 1.0
}

background { color rgb <1.0, 1.0, 1.0> }

#include "C:\Users\yamad\code\SDSIA\POV\pot.inc"
#declare Target = object {
  m_4m5mmqtw
  rotate <rnd(-90.0, 90.0), rnd(-90.0, 90.0), rnd(-90.0, 90.0)>
  translate x * rnd(-3, 3)
  translate z * rnd(-3, 3)
  #if (Mask = 0)
    pigment { color White }
  #else
    texture {_texMaskTarget}
  #end
};

object { Target }
