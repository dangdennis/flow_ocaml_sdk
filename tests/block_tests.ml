open Flow_ocaml_sdk
open Lwt.Infix

let test_get_by_heights _ () = 
  Flow.Blocks.get_by_height ~height:[66494830] ~network:Testnet () >|=
    (fun blocks -> 
      blocks |> List.iter (fun (b: Block.t) -> 
        Alcotest.(check string) "same height" "66494830" b.header.height))


let () =
  let open Alcotest_lwt in
  Lwt_main.run
  @@ run "blocks"
       [
         ( "blocks",
           [
             test_case "get_by_height" `Quick test_get_by_heights;
           ] );
       ]
