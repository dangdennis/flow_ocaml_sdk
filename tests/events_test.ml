open Flow_ocaml_sdk
open Lwt.Infix

let test_get_events _ () = 
  (Flow.Events.get_events ~_type:"A.605afde941b97b55.OriginFraction.Withdraw" ~start_height:66494830 ~network:Testnet ()) >|=
    (fun (event: Block_events.t) -> 
      print_endline (Block_events.show event);
      Alcotest.(check string) "same type" "66494830" (Option.get event.block_height))


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
