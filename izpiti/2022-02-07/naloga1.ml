(* 1. a) *)
let je_idempotent _ = failwith "TODO"

(* 1. b) *)
let produkt list =
  let rec produkt_aux acc = 
    function
    | [] -> acc
    | x :: xs -> if x <> 0 then produkt_aux (acc * x) xs 
    else produkt_aux acc xs 
  in produkt_aux 1 list

(* 1. c) *)
let rec stalinSort = function
  | [] -> []
  | [x] -> [x]
  | x :: y :: tail -> if x <= y  then  x :: stalinSort (y :: tail) else stalinSort (x :: tail)
(* 1. d) *)

