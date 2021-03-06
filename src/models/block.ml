(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

type t = {
    header: Block_header.t;
    payload: Block_payload.t option [@default None];
    execution_result: Execution_result.t option [@default None];
    _expandable: Block__expandable.t;
    _links: Links.t option [@default None];
} [@@deriving yojson { strict = false }, show ];;

let create (header : Block_header.t) (_expandable : Block__expandable.t) : t = {
    header = header;
    payload = None;
    execution_result = None;
    _expandable = _expandable;
    _links = None;
}

