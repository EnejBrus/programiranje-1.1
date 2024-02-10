(* 1. a) *)
let sum_two_smallest (a, b, c) =
   min a b + min (max a b) c
  
  
(* 1. b) *)
let flatten : 'a option option -> 'a option = function
  | None -> None
  | Some None -> None
  | Some (Some x) -> Some x

(* 1. c) *)
let dot_product [x1; y1] [x2; y2] = 
  (x1 * x2) + (y1 * y2)


(* 1. d) *)
let smallest_modulo nums divisor =
  match nums with
  | [] -> None
  | _ ->
    let min_remainder = List.fold_left (fun acc x ->
      let remainder = x mod divisor in
      match acc with
      | None -> Some remainder
      | Some min_rem -> Some (min min_rem remainder)
    ) None nums in
    min_remainder

(* 1. e) *)
let rec find_product_pair acc = function
  | [] -> None
  | x :: xs ->
    let product = x * x in
    if List.mem product acc then Some (x, Some x) else find_product_pair (product :: acc) xs

let target_product lst =
  match find_product_pair [] lst with
  | Some (x, Some y) -> (x, Some y)
  | _ -> (0, None)