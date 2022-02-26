(* open Lwt.Syntax *)
module F = Ocaml_flow_sdk

let () =
  print_endline "hi";
  let _ = F.send_script F.Network.Testnet "pub fun main(): Int { return 1 }" in
  ()
