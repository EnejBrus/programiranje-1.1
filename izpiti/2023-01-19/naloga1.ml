(* 1. a) *)
let permutacije a b c = [(a, b, c); (a, c, b); (b, a, c); (b, c, a); (c, a, b); (c, b, a)]
  
(* 1. b) *)
let rec zip_opt sez1 sez2 = 
  match sez1, sez2 with
  |[], [] -> []
  |[], (y :: ys) -> (None, Some y) :: zip_opt [] ys
  |(x :: xs), [] -> (Some x, None) :: zip_opt xs []
  |(x :: xs), (y :: ys) -> (Some x, Some y) :: zip_opt xs ys 


(* 1. c) *)
let rec zip_default sez1 sez2 a b =
  match sez1, sez2 with
  |[], [] -> []
  |[], (y :: ys) -> (a,  y) :: zip_default [] ys a b
  |(x :: xs), [] -> ( x,  b) :: zip_default xs [] a b
  |(x :: xs), (y :: ys) -> (x, y) :: zip_default xs ys a b


(* 1. d) *)

type response = Left | Middle | Right

let distribute f sez =
 let rec dis f sez left middle right =
  match sez with
  |[] -> (List.rev left, List.rev middle, List.rev right)
  |x :: xs -> 
    match f x with
    |Left -> dis f xs (x::left) middle right
    |Middle -> dis f xs left (x::middle) right
    |Right -> dis f xs left middle (x::right)
in dis f sez [] [] []

(* 1. e) *)

type ('a, 'b) sum = Left of 'a | Right of 'b



