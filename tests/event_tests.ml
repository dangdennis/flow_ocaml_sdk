open Flow_ocaml_sdk
open Lwt.Infix

  let test_get_events _ () = 
    (Flow.Events.get_events ~_type:"A.605afde941b97b55.OriginFraction.Withdraw" ~start_height:66494830 ~network:Testnet ()) 
      >>=
      (fun event -> 
        print_endline (Block_events.show event);
        Lwt.return_unit
        )


let () =
  let open Alcotest_lwt in
  Lwt_main.run
  @@ run "events" ~verbose:true
       [
         ( "events",
           [
             test_case "get_events" `Quick test_get_events;
           ] );
       ]
