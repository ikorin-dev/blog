module Main exposing (main)

import Browser
import Html exposing (Html, button, div, text, h1)
import Html.Events exposing (onClick)


main =
  Browser.sandbox { init = init, update = update, view = view }


-- MODEL

type alias Model = Int

init : Model
init =
  0


-- UPDATE

type Msg = Increment | Decrement

update : Msg -> Model -> Model
update msg model =
  case msg of
    Increment ->
      model + 1

    Decrement ->
      model - 1


-- VIEW

view : Model -> Html Msg
view model =
    div []
      [ h1 [] [text "ブログ予定地"]
      , button [ onClick Decrement ] [ text "-" ]
      , div [] [ text (String.fromInt model) ]
      , button [ onClick Increment ] [ text "+" ]
      ]
