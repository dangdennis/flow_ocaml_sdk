(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

type t = {
    (* A 32-byte unique identifier for an entity. *)
    block_id: string;
    (* A 32-byte unique identifier for an entity. *)
    result_id: string;
    (* The root hash of the state tree. *)
    final_state: string;
    aggregated_approval_signatures: Aggregated_signature.t list;
} [@@deriving yojson { strict = false }, show ];;

let create (block_id : string) (result_id : string) (final_state : string) (aggregated_approval_signatures : Aggregated_signature.t list) : t = {
    block_id = block_id;
    result_id = result_id;
    final_state = final_state;
    aggregated_approval_signatures = aggregated_approval_signatures;
}
