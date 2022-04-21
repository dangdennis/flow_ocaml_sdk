open Flow_ocaml_sdk
open Lwt.Infix

let test_scripts _ () = 
  (Flow.Scripts.send_script ~inline_object_1_t: {arguments = []; script = Some ""} ~network:Testnet ()) >|=
    (fun (response: Inline_response_200.t) -> 
      print_endline (Inline_response_200.show response);
      Alcotest.(check string) "same type" "66494830" (Option.get response.value))


let () =
  let open Alcotest_lwt in
  Lwt_main.run
  @@ run "scripts" ~verbose:true
       [
          ( "scripts",
           [
             test_case "send_script" `Quick test_scripts;
           ] 
          );
       ]
