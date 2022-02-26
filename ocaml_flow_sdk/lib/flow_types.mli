(** flow.proto Types *)



(** {2 Types} *)

type block_header = {
  id : bytes;
  parent_id : bytes;
  height : int64;
}

type block_header_response = {
  block : block_header option;
}

type get_latest_block_header_request = {
  is_sealed : bool;
}

type get_block_header_by_id_request = {
  id : bytes;
}

type get_block_header_by_height_request = {
  height : int64;
}

type timestamp = {
  seconds : int64;
  nanos : int32;
}

type collection_guarantee = {
  collection_id : bytes;
  signatures : bytes list;
}

type block_seal = {
  block_id : bytes;
  execution_receipt_id : bytes;
  execution_receipt_signatures : bytes list;
  result_approval_signatures : bytes list;
}

type block = {
  id : bytes;
  parent_id : bytes;
  height : int64;
  timestamp : timestamp option;
  collection_guarantees : collection_guarantee list;
  block_seals : block_seal list;
  signatures : bytes list;
}

type block_response = {
  block : block option;
}

type get_latest_block_request = {
  is_sealed : bool;
}

type get_block_by_id_request = {
  id : bytes;
}

type get_block_by_height_request = {
  height : int64;
}

type collection = {
  id : bytes;
  transaction_ids : bytes list;
}

type collection_response = {
  collection : collection option;
}

type get_collection_by_id_request = {
  id : bytes;
}

type send_transaction_response = {
  id : bytes;
}

type transaction_proposal_key = {
  address : bytes;
  key_id : int32;
  sequence_number : int64;
}

type transaction_signature = {
  address : bytes;
  key_id : int32;
  signature : bytes;
}

type transaction = {
  script : bytes;
  arguments : bytes list;
  reference_block_id : bytes;
  gas_limit : int64;
  proposal_key : transaction_proposal_key option;
  payer : bytes;
  authorizers : bytes list;
  payload_signatures : transaction_signature list;
  envelope_signatures : transaction_signature list;
}

type send_transaction_request = {
  transaction : transaction option;
}

type get_transaction_request = {
  id : bytes;
}

type transaction_response = {
  transaction : transaction option;
}

type transaction_status =
  | Unknown 
  | Pending 
  | Finalized 
  | Executed 
  | Sealed 
  | Expired 

type event = {
  type_ : string;
  transaction_id : bytes;
  transaction_index : int32;
  event_index : int32;
  payload : bytes;
}

type transaction_result_response = {
  status : transaction_status;
  status_code : int32;
  error_message : string;
  events : event list;
}

type account_key = {
  id : int32;
  public_key : bytes;
  sign_algo : int32;
  hash_algo : int32;
  weight : int32;
  sequence_number : int32;
  revoked : bool;
}

type account = {
  address : bytes;
  balance : int64;
  code : bytes;
  keys : account_key list;
  contracts : (string * bytes) list;
}

type account_response = {
  account : account option;
}

type get_account_at_latest_block_request = {
  address : bytes;
}

type get_account_at_block_height_request = {
  address : bytes;
  block_height : int64;
}

type execute_script_response = {
  value : bytes;
}

type execute_script_at_latest_block_request = {
  script : bytes;
  arguments : bytes list;
}

type execute_script_at_block_id_request = {
  block_id : bytes;
  script : bytes;
  arguments : bytes list;
}

type execute_script_at_block_height_request = {
  block_height : int64;
  script : bytes;
  arguments : bytes list;
}

type events_response_result = {
  block_id : bytes;
  block_height : int64;
  events : event list;
  block_timestamp : timestamp option;
}

type events_response = {
  results : events_response_result list;
}

type get_events_for_height_range_request = {
  type_ : string;
  start_height : int64;
  end_height : int64;
}

type get_events_for_block_ids_request = {
  type_ : string;
  block_ids : bytes list;
}

type get_network_parameters_response = {
  chain_id : string;
}

type protocol_state_snapshot_response = {
  serialized_snapshot : bytes;
}

type chunk = {
  start_state : bytes;
  event_collection : bytes;
  block_id : bytes;
  total_computation_used : int64;
  number_of_transactions : int64;
  index : int64;
  end_state : bytes;
}

type service_event = {
  type_ : string;
  payload : bytes;
}

type execution_result = {
  previous_result_id : bytes;
  block_id : bytes;
  chunks : chunk list;
  service_events : service_event list;
}

type execution_result_for_block_id_response = {
  execution_result : execution_result option;
}

type get_execution_result_for_block_id_request = {
  block_id : bytes;
}


(** {2 Default values} *)

val default_block_header : 
  ?id:bytes ->
  ?parent_id:bytes ->
  ?height:int64 ->
  unit ->
  block_header
(** [default_block_header ()] is the default value for type [block_header] *)

val default_block_header_response : 
  ?block:block_header option ->
  unit ->
  block_header_response
(** [default_block_header_response ()] is the default value for type [block_header_response] *)

val default_get_latest_block_header_request : 
  ?is_sealed:bool ->
  unit ->
  get_latest_block_header_request
(** [default_get_latest_block_header_request ()] is the default value for type [get_latest_block_header_request] *)

val default_get_block_header_by_id_request : 
  ?id:bytes ->
  unit ->
  get_block_header_by_id_request
(** [default_get_block_header_by_id_request ()] is the default value for type [get_block_header_by_id_request] *)

val default_get_block_header_by_height_request : 
  ?height:int64 ->
  unit ->
  get_block_header_by_height_request
(** [default_get_block_header_by_height_request ()] is the default value for type [get_block_header_by_height_request] *)

val default_timestamp : 
  ?seconds:int64 ->
  ?nanos:int32 ->
  unit ->
  timestamp
(** [default_timestamp ()] is the default value for type [timestamp] *)

val default_collection_guarantee : 
  ?collection_id:bytes ->
  ?signatures:bytes list ->
  unit ->
  collection_guarantee
(** [default_collection_guarantee ()] is the default value for type [collection_guarantee] *)

val default_block_seal : 
  ?block_id:bytes ->
  ?execution_receipt_id:bytes ->
  ?execution_receipt_signatures:bytes list ->
  ?result_approval_signatures:bytes list ->
  unit ->
  block_seal
(** [default_block_seal ()] is the default value for type [block_seal] *)

val default_block : 
  ?id:bytes ->
  ?parent_id:bytes ->
  ?height:int64 ->
  ?timestamp:timestamp option ->
  ?collection_guarantees:collection_guarantee list ->
  ?block_seals:block_seal list ->
  ?signatures:bytes list ->
  unit ->
  block
(** [default_block ()] is the default value for type [block] *)

val default_block_response : 
  ?block:block option ->
  unit ->
  block_response
(** [default_block_response ()] is the default value for type [block_response] *)

val default_get_latest_block_request : 
  ?is_sealed:bool ->
  unit ->
  get_latest_block_request
(** [default_get_latest_block_request ()] is the default value for type [get_latest_block_request] *)

val default_get_block_by_id_request : 
  ?id:bytes ->
  unit ->
  get_block_by_id_request
(** [default_get_block_by_id_request ()] is the default value for type [get_block_by_id_request] *)

val default_get_block_by_height_request : 
  ?height:int64 ->
  unit ->
  get_block_by_height_request
(** [default_get_block_by_height_request ()] is the default value for type [get_block_by_height_request] *)

val default_collection : 
  ?id:bytes ->
  ?transaction_ids:bytes list ->
  unit ->
  collection
(** [default_collection ()] is the default value for type [collection] *)

val default_collection_response : 
  ?collection:collection option ->
  unit ->
  collection_response
(** [default_collection_response ()] is the default value for type [collection_response] *)

val default_get_collection_by_id_request : 
  ?id:bytes ->
  unit ->
  get_collection_by_id_request
(** [default_get_collection_by_id_request ()] is the default value for type [get_collection_by_id_request] *)

val default_send_transaction_response : 
  ?id:bytes ->
  unit ->
  send_transaction_response
(** [default_send_transaction_response ()] is the default value for type [send_transaction_response] *)

val default_transaction_proposal_key : 
  ?address:bytes ->
  ?key_id:int32 ->
  ?sequence_number:int64 ->
  unit ->
  transaction_proposal_key
(** [default_transaction_proposal_key ()] is the default value for type [transaction_proposal_key] *)

val default_transaction_signature : 
  ?address:bytes ->
  ?key_id:int32 ->
  ?signature:bytes ->
  unit ->
  transaction_signature
(** [default_transaction_signature ()] is the default value for type [transaction_signature] *)

val default_transaction : 
  ?script:bytes ->
  ?arguments:bytes list ->
  ?reference_block_id:bytes ->
  ?gas_limit:int64 ->
  ?proposal_key:transaction_proposal_key option ->
  ?payer:bytes ->
  ?authorizers:bytes list ->
  ?payload_signatures:transaction_signature list ->
  ?envelope_signatures:transaction_signature list ->
  unit ->
  transaction
(** [default_transaction ()] is the default value for type [transaction] *)

val default_send_transaction_request : 
  ?transaction:transaction option ->
  unit ->
  send_transaction_request
(** [default_send_transaction_request ()] is the default value for type [send_transaction_request] *)

val default_get_transaction_request : 
  ?id:bytes ->
  unit ->
  get_transaction_request
(** [default_get_transaction_request ()] is the default value for type [get_transaction_request] *)

val default_transaction_response : 
  ?transaction:transaction option ->
  unit ->
  transaction_response
(** [default_transaction_response ()] is the default value for type [transaction_response] *)

val default_transaction_status : unit -> transaction_status
(** [default_transaction_status ()] is the default value for type [transaction_status] *)

val default_event : 
  ?type_:string ->
  ?transaction_id:bytes ->
  ?transaction_index:int32 ->
  ?event_index:int32 ->
  ?payload:bytes ->
  unit ->
  event
(** [default_event ()] is the default value for type [event] *)

val default_transaction_result_response : 
  ?status:transaction_status ->
  ?status_code:int32 ->
  ?error_message:string ->
  ?events:event list ->
  unit ->
  transaction_result_response
(** [default_transaction_result_response ()] is the default value for type [transaction_result_response] *)

val default_account_key : 
  ?id:int32 ->
  ?public_key:bytes ->
  ?sign_algo:int32 ->
  ?hash_algo:int32 ->
  ?weight:int32 ->
  ?sequence_number:int32 ->
  ?revoked:bool ->
  unit ->
  account_key
(** [default_account_key ()] is the default value for type [account_key] *)

val default_account : 
  ?address:bytes ->
  ?balance:int64 ->
  ?code:bytes ->
  ?keys:account_key list ->
  ?contracts:(string * bytes) list ->
  unit ->
  account
(** [default_account ()] is the default value for type [account] *)

val default_account_response : 
  ?account:account option ->
  unit ->
  account_response
(** [default_account_response ()] is the default value for type [account_response] *)

val default_get_account_at_latest_block_request : 
  ?address:bytes ->
  unit ->
  get_account_at_latest_block_request
(** [default_get_account_at_latest_block_request ()] is the default value for type [get_account_at_latest_block_request] *)

val default_get_account_at_block_height_request : 
  ?address:bytes ->
  ?block_height:int64 ->
  unit ->
  get_account_at_block_height_request
(** [default_get_account_at_block_height_request ()] is the default value for type [get_account_at_block_height_request] *)

val default_execute_script_response : 
  ?value:bytes ->
  unit ->
  execute_script_response
(** [default_execute_script_response ()] is the default value for type [execute_script_response] *)

val default_execute_script_at_latest_block_request : 
  ?script:bytes ->
  ?arguments:bytes list ->
  unit ->
  execute_script_at_latest_block_request
(** [default_execute_script_at_latest_block_request ()] is the default value for type [execute_script_at_latest_block_request] *)

val default_execute_script_at_block_id_request : 
  ?block_id:bytes ->
  ?script:bytes ->
  ?arguments:bytes list ->
  unit ->
  execute_script_at_block_id_request
(** [default_execute_script_at_block_id_request ()] is the default value for type [execute_script_at_block_id_request] *)

val default_execute_script_at_block_height_request : 
  ?block_height:int64 ->
  ?script:bytes ->
  ?arguments:bytes list ->
  unit ->
  execute_script_at_block_height_request
(** [default_execute_script_at_block_height_request ()] is the default value for type [execute_script_at_block_height_request] *)

val default_events_response_result : 
  ?block_id:bytes ->
  ?block_height:int64 ->
  ?events:event list ->
  ?block_timestamp:timestamp option ->
  unit ->
  events_response_result
(** [default_events_response_result ()] is the default value for type [events_response_result] *)

val default_events_response : 
  ?results:events_response_result list ->
  unit ->
  events_response
(** [default_events_response ()] is the default value for type [events_response] *)

val default_get_events_for_height_range_request : 
  ?type_:string ->
  ?start_height:int64 ->
  ?end_height:int64 ->
  unit ->
  get_events_for_height_range_request
(** [default_get_events_for_height_range_request ()] is the default value for type [get_events_for_height_range_request] *)

val default_get_events_for_block_ids_request : 
  ?type_:string ->
  ?block_ids:bytes list ->
  unit ->
  get_events_for_block_ids_request
(** [default_get_events_for_block_ids_request ()] is the default value for type [get_events_for_block_ids_request] *)

val default_get_network_parameters_response : 
  ?chain_id:string ->
  unit ->
  get_network_parameters_response
(** [default_get_network_parameters_response ()] is the default value for type [get_network_parameters_response] *)

val default_protocol_state_snapshot_response : 
  ?serialized_snapshot:bytes ->
  unit ->
  protocol_state_snapshot_response
(** [default_protocol_state_snapshot_response ()] is the default value for type [protocol_state_snapshot_response] *)

val default_chunk : 
  ?start_state:bytes ->
  ?event_collection:bytes ->
  ?block_id:bytes ->
  ?total_computation_used:int64 ->
  ?number_of_transactions:int64 ->
  ?index:int64 ->
  ?end_state:bytes ->
  unit ->
  chunk
(** [default_chunk ()] is the default value for type [chunk] *)

val default_service_event : 
  ?type_:string ->
  ?payload:bytes ->
  unit ->
  service_event
(** [default_service_event ()] is the default value for type [service_event] *)

val default_execution_result : 
  ?previous_result_id:bytes ->
  ?block_id:bytes ->
  ?chunks:chunk list ->
  ?service_events:service_event list ->
  unit ->
  execution_result
(** [default_execution_result ()] is the default value for type [execution_result] *)

val default_execution_result_for_block_id_response : 
  ?execution_result:execution_result option ->
  unit ->
  execution_result_for_block_id_response
(** [default_execution_result_for_block_id_response ()] is the default value for type [execution_result_for_block_id_response] *)

val default_get_execution_result_for_block_id_request : 
  ?block_id:bytes ->
  unit ->
  get_execution_result_for_block_id_request
(** [default_get_execution_result_for_block_id_request ()] is the default value for type [get_execution_result_for_block_id_request] *)
