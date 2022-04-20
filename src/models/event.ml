(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

type t = {
    (* The qualified event type. *)
    _type: string;
    (* A 32-byte unique identifier for an entity. *)
    transaction_id: string;
    transaction_index: string;
    event_index: string;
    payload: string;
} [@@deriving yojson { strict = false }, show ];;

let create (_type : string) (transaction_id : string) (transaction_index : string) (event_index : string) (payload : string) : t = {
    _type = _type;
    transaction_id = transaction_id;
    transaction_index = transaction_index;
    event_index = event_index;
    payload = payload;
}
