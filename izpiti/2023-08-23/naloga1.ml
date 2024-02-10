(* 1. a) *)
let vzporedna (x1, y1) (x2, y2) =
  y1 / x1 = y2 / x2

(* 1. b) *)
let rec zlozi_pocez list1 list2 =
  match list1, list2 with
  | [], [] -> []
  | x :: xs, y :: ys -> (x, y) :: zlozi_pocez xs ys
  | _, _ -> failwith "Seznama nista sode dolzine, ali seznama nista enakih dolzin" 

(* 1. c) *)


  
(*let rec kompozitumi f n =
  if 
    n < 0 then failwith "n ne sme biti negativen"
  else 
    match n with
    | 0 -> []
    | n -> f :: kompozitumi (f . f) (n-1)*)






  


(* 1. d) *)
let rec tails = function
  | [] -> [[]]
  | _::xs' as xs -> xs::tails xs'

let rec tails' = function
  | [] -> [[]]
  | x :: xs -> (x :: xs) :: tails' xs

(* 1. e) *)



