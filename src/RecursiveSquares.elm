module RecursiveSquares exposing (..)

import GraphicSVG exposing (..)

myShapes model =
  [
    myFunction 5
  ]

myFunction n = 
  if n <= 1 then
    group []
  else
    group
      [
        square (50/2^(5-n))
          |> outlined (solid 0.5) black
        , 
        myFunction (n-1)
          |> move (50/2^(6-n),50/2^(6-n))
        ,
        myFunction (n-1)
          |> move (-50/2^(6-n),50/2^(6-n))
        ,
        myFunction (n-1)
          |> move (50/2^(6-n),-50/2^(6-n))
        ,
        myFunction (n-1)
          |> move (-50/2^(6-n),-50/2^(6-n))
        
      ]