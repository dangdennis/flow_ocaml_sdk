(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

type t = {
    (* A 32-byte unique identifier for an entity. *)
    id: string;
    transactions: Transaction.t list;
    _expandable: Collection__expandable.t;
    _links: Links.t option [@default None];
} [@@deriving yojson { strict = false }, show ];;

let create (id : string) (_expandable : Collection__expandable.t) : t = {
    id = id;
    transactions = [];
    _expandable = _expandable;
    _links = None;
}
