(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

let scripts_post ~inline_object_1_t ?block_id ?block_height () =
    let open Lwt in
    let uri = Request.build_uri "/scripts" in
    let headers = Request.default_headers in
    let uri = Request.maybe_add_query_param uri "block_id" (fun x -> x) block_id in
    let uri = Request.maybe_add_query_param uri "block_height" string_of_int block_height in
    let body = Request.write_as_json_body Inline_object_1.to_yojson inline_object_1_t in
    Cohttp_lwt_unix.Client.call `POST uri ~headers ~body >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.unwrap Inline_response_200.of_yojson) resp body

