import Html exposing (Html, button, div, text)
import Html.App as Html
import Html.Events exposing (onClick)



main =
  Html.beginnerProgram
    { model = model
    , view = view
    , update = update
    }



-- MODEL


type alias Model = { number : Int }


model : Model
model =
  { number = 12 }



-- UPDATE


type Msg
  = Increment
  | Decrement
  | Reset


update : Msg -> Model -> Model
update msg model =
  case msg of
    Increment ->
      { number = model.number + 1 }

    Decrement ->
      { number = model.number - 1 }

    Reset ->
      { number = 0 }


-- VIEW


view : Model -> Html Msg
view model =
  div []
    [ button [ onClick Decrement ] [ text "-" ]
    , div [] [ text (toString model.number) ]
    , button [ onClick Increment ] [ text "+" ]
    , div [] []
    , button [ onClick Reset ] [ text "=0" ]
    ]
