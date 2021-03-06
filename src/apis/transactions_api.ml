(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

let transaction_results_transaction_id_get ~transaction_id ?(expand = []) ?(select = []) ?(network = Network.Testnet) () =
    let open Lwt in
    let uri = Request.build_uri "/transaction_results/{transaction_id}" ~network () in
    let headers = Request.default_headers in
    let uri = Request.replace_path_param uri "transaction_id" (fun x -> x) transaction_id in
    let uri = Request.add_query_param_list uri "expand" (List.map (fun x -> x)) expand in
    let uri = Request.add_query_param_list uri "select" (List.map (fun x -> x)) select in
    Cohttp_lwt_unix.Client.call `GET uri ~headers >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.unwrap Transaction_result.of_yojson) resp body

let transactions_id_get ~id ?(expand = []) ?(select = []) ?(network = Network.Testnet) () =
    let open Lwt in
    let uri = Request.build_uri "/transactions/{id}" ~network () in
    let headers = Request.default_headers in
    let uri = Request.replace_path_param uri "id" (fun x -> x) id in
    let uri = Request.add_query_param_list uri "expand" (List.map (fun x -> x)) expand in
    let uri = Request.add_query_param_list uri "select" (List.map (fun x -> x)) select in
    Cohttp_lwt_unix.Client.call `GET uri ~headers >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.unwrap Transaction.of_yojson) resp body

let transactions_post ~inline_object_t ?(network = Network.Testnet) () =
    let open Lwt in
    let uri = Request.build_uri "/transactions" ~network () in
    let headers = Request.default_headers in
    let body = Request.write_as_json_body Inline_object.to_yojson inline_object_t in
    Cohttp_lwt_unix.Client.call `POST uri ~headers ~body >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.unwrap Transaction.of_yojson) resp body

