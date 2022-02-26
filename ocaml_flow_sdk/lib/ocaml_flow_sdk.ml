open Lwt.Syntax
open Cohttp_lwt_unix

type t = { network_addr : string }

module Network = struct
  type t = Testnet | Mainnet

  let of_string network =
    match network with
    | Testnet -> "https://rest-testnet.onflow.org/v1/"
    | Mainnet -> "https://rest-mainnet.onflow.org/v1/"
end

let make addr = { network_addr = addr }

let send_script network _script =
  let p =
    let net_url = Network.of_string network in
    let body =
      Cohttp_lwt.Body.of_string
        {|
      {
        "script": "cHViIGZ1biBtYWluKCk6IEludCB7IHJldHVybiAxIH0=",
        "arguments": []
    }
    |}
    in
    let headers =
      Cohttp.Header.of_list [ ("Content-Type", "application/json") ]
    in
    let* _res, res_body =
      Client.post ~body ~headers (Uri.of_string (net_url ^ "/scripts"))
    in
    let* str = Cohttp_lwt.Body.to_string res_body in
    print_endline str;
    Lwt.return_unit
  in
  let _ = Lwt_main.run p in
  ()
