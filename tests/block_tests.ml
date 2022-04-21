open Flow_ocaml_sdk

  let test_get_by_heights _ () = 
      Lwt.bind (Flow.Blocks.get_by_height ~height:[66494830] ~network:Testnet ()) 
          (fun blocks -> 
            let () = blocks |> List.iter (fun (b: Block.t) -> 
              let _ = Alcotest.(check string) "same height" "66494830" b.header.height in
              ()
              ) 
            in 
            Lwt.return_unit) 


let () =
  let open Alcotest_lwt in
  Lwt_main.run
  @@ run "blocks" ~verbose:true
       [
         ( "blocks",
           [
             test_case "get_by_height" `Quick test_get_by_heights;
           ] );
       ]
