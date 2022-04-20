(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

let blocks_get ?(height = []) ?start_height ?end_height ?(expand = []) ?(select = []) () =
    let open Lwt in
    let uri = Request.build_uri "/blocks" in
    let headers = Request.default_headers in
    let uri = Request.add_query_param_list uri "height" (List.map .show) height in
    let uri = Request.maybe_add_query_param uri "start_height" .show start_height in
    let uri = Request.maybe_add_query_param uri "end_height" .show end_height in
    let uri = Request.add_query_param_list uri "expand" (List.map (fun x -> x)) expand in
    let uri = Request.add_query_param_list uri "select" (List.map (fun x -> x)) select in
    Cohttp_lwt_unix.Client.call `GET uri ~headers >>= fun (resp, body) ->
    Request.read_json_body_as_list_of (JsonSupport.unwrap Block.of_yojson) resp body

let blocks_id_get ~id ?(expand = []) ?(select = []) () =
    let open Lwt in
    let uri = Request.build_uri "/blocks/{id}" in
    let headers = Request.default_headers in
    let uri = Request.replace_path_param uri "id" (List.map (fun x -> x)) id in
    let uri = Request.add_query_param_list uri "expand" (List.map (fun x -> x)) expand in
    let uri = Request.add_query_param_list uri "select" (List.map (fun x -> x)) select in
    Cohttp_lwt_unix.Client.call `GET uri ~headers >>= fun (resp, body) ->
    Request.read_json_body_as_list_of (JsonSupport.unwrap Block.of_yojson) resp body

