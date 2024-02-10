let je_sodo = function
  | n when n mod 2 = 0 -> true
  | _ -> false


let seznam_sodih =
  List.filter je_sodo
  


type oznaceno = Sodo | Liho

let oznaci seznam =
  let oznaci_element x =
    if x mod 2 = 0 then
      Sodo
    else
      Liho 
  in
  List.map oznaci_element seznam




(*let vsoti_kvadratov seznam =
  let rec vsota_kvadratov_acc seznam acc_sodo acc_liho =
    match seznam with
    | [] -> (acc_sodo, acc_liho)
    | x :: xs ->
        match x with
        | Sodo -> vsota_kvadratov_acc xs (acc_sodo + x * x) acc_liho
        | Liho -> vsota_kvadratov_acc xs acc_sodo (acc_liho + x * x)
  in
  vsota_kvadratov_acc seznam 0 0
*)

    

  