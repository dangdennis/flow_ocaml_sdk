module F = Ocaml_flow_sdk

let _ =
  print_endline "start /script tests";

  let _ =
    F.send_script F.Network.Testnet "pub fun main(): Int { return 1 }"
    |> Lwt_main.run
  in

  print_endline "end /script tests"
