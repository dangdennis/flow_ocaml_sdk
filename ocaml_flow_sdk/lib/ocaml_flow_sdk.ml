open Lwt.Syntax
open Cohttp_lwt_unix

type t = { network_addr : string }

let trim_quotes str = String.sub str 1 (String.length str - 2)

module Network = struct
  type t = Testnet | Mainnet

  let to_string network =
    match network with
    | Testnet -> "https://rest-testnet.onflow.org/v1/"
    | Mainnet -> "https://rest-mainnet.onflow.org/v1/"
end

module Endpoint = struct
  type t = Scripts

  let to_url network endpoint =
    let net = Network.to_string network in
    match endpoint with Scripts -> net ^ "scripts"
end

let make addr = { network_addr = addr }

let send_script network script =
  match Base64.encode script with
  | Error (`Msg e) -> Lwt.return_error e
  | Ok res ->
      let req_body =
        res
        |> Format.sprintf
             {|
                  {
                    "script": "%s",
                    "arguments": []
                  }
                |}
        |> Cohttp_lwt.Body.of_string
      in

      let headers =
        Cohttp.Header.of_list [ ("Content-Type", "application/json") ]
      in

      let* res, res_body =
        Client.post ~body:req_body ~headers
          (Uri.of_string (Endpoint.to_url network Endpoint.Scripts))
      in

      let status_code = Cohttp.Response.status res in

      let* res_body_str = Cohttp_lwt.Body.to_string res_body in

      Printf.printf "statusCode %s\n" (Cohttp.Code.string_of_status status_code);
      print_endline "start resp";
      print_endline (trim_quotes res_body_str);
      print_endline "end resp";

      Lwt.return_ok "hi"

(* match
     Base64.decode
       (String.sub res_body_str 1 (String.length res_body_str - 2))
   with
   | Error err -> match err with `Msg e -> Lwt.return_error e
   | Ok res -> *)
