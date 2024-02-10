type player = White | Black

type game_tree =
  | Winner of player
  | Tie
  | Decision of player * (float * game_tree) list

let primer =
  Decision
    ( White,
      [
        (0.3, Decision (Black, [ (0.5, Winner White); (0.5, Winner Black) ]));
        (0.7, Decision (Black, [ (0.5, Tie); (0.5, Winner Black) ]));
      ] )

(* 1. a) *)
let rec prestej_zmage = function
  | Winner White -> 1
  | Winner Black -> 0
  | Tie -> 0
  | Decision (_, options) ->
    let rec count_wins acc options =
      match options with
      | [] -> acc
      | (_, subtree) :: rest -> count_wins (acc + prestej_zmage subtree) rest
    in
    count_wins 0 options


(* 1. b) *)
type result = { white_wins : float; black_wins : float; ties : float }

(* 1. c) *)

(* 1. d) *)
