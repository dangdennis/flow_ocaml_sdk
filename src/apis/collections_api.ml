(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

let collections_id_get ~id ?(network = Network.Testnet) () =
    let open Lwt in
    let uri = Request.build_uri "/collections/{id}" ~network () in
    let headers = Request.default_headers in
    let uri = Request.replace_path_param uri "id" (fun x -> x) id in
    Cohttp_lwt_unix.Client.call `GET uri ~headers >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.unwrap Collection.of_yojson) resp body

