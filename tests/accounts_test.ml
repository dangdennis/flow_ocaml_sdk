open Flow_ocaml_sdk
open Lwt.Infix

let test_get_by_address _ () = 
  Flow.Accounts.get_by_address ~address:"0x1eca663797366196" ~network:Testnet () >|=
    (fun account -> 
      print_endline (Account.show account);
      Alcotest.(check string) "received address" "1eca663797366196" account.address)

let () =
  let open Alcotest_lwt in
  Lwt_main.run
  @@ run "accounts"
    [
      ( "accounts",
        [
          test_case "get_by_address" `Quick test_get_by_address;
        ]
      );
    ]