open Flow_ocaml_sdk

let _ = print_endline "hi"

let t = Lwt.bind (Flow.Accounts.get_by_address ~address:"0x1eca663797366196" ~network:Testnet ()) 
        (fun hi -> 
            print_endline (Account.show hi);
            Lwt.return_unit)


let () = Lwt_main.run t