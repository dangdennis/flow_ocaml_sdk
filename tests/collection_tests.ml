open Flow_ocaml_sdk
open Lwt.Infix

  let test_get_by_id _ () = 
      Flow.Collections.get_by_id ~id:"412" ~network:Network.Testnet () >|=
          (fun collection -> 
            print_endline (Collection.show collection);
            Alcotest.(check string) "same id" "412" collection.id)


let () =
  let open Alcotest_lwt in
  Lwt_main.run
  @@ run "collections" ~verbose:true
       [
         ( "collections",
           [
             (* test_case "get_by_id" `Quick test_get_by_id; *)
           ] );
       ]
