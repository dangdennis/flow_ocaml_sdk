(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

type t = {
    code: int32 option [@default None];
    message: string option [@default None];
} [@@deriving yojson { strict = false }, show ];;

let create () : t = {
    code = None;
    message = None;
}

