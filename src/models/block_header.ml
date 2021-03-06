(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

type t = {
    (* A 32-byte unique identifier for an entity. *)
    id: string;
    (* A 32-byte unique identifier for an entity. *)
    parent_id: string;
    height: string;
    timestamp: string;
    (* A variable length signature. *)
    parent_voter_signature: string;
} [@@deriving yojson { strict = false }, show ];;

let create (id : string) (parent_id : string) (height : string) (timestamp : string) (parent_voter_signature : string) : t = {
    id = id;
    parent_id = parent_id;
    height = height;
    timestamp = timestamp;
    parent_voter_signature = parent_voter_signature;
}

