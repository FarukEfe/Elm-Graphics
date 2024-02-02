module RecursiveSquares exposing (..)

import GraphicSVG exposing (..)
import GraphicSVG.App exposing (..)

-- Lifecycle
type Msg
    = Tick Float GetKeyState

type alias Model = { angle : Float, speed : Float }

-- Update function is set to take in msg and model parameters so that gameApp can call it
update msg model =
    case msg of
        _ -> model

view model =
  [
    myFunction 5
  ]

main =
    gameApp Tick
        { model = init
        , update = update
        , view = view
        }
-- Lifecycle Ends

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