(* 1. a) *)
let zamenjaj (a, b) (c, d) =
  ((a, c), (b, d)) 

(* 1. b) *)
let modus (a, b, c) = 
  if a = b then Some a
  else 
    if b = c then Some b
    else 
      if a = c then Some a
      else None
  
(* 1. c) *)
let uncons sez = 
  match sez with
  |[] -> None
  |x :: xs -> Some (x, xs)

(* 1. d) *)
let rec vstavljaj a sez =
  match sez with
  |[] -> [] 
  |x :: [] -> [x]
  |x :: xs -> x :: a :: vstavljaj a xs

(* 1. e) *)
let reverse list =
  let rec reverse_aux acc = function
    | [] -> acc
    | x :: xs -> reverse_aux (x :: acc) xs
  in reverse_aux [] list


let popolnoma_obrni list =
  let rec pop_obrni_aux acc = function
    | [] -> acc
    | x :: xs -> pop_obrni_aux (reverse list) xs
in pop_obrni_aux [] list

