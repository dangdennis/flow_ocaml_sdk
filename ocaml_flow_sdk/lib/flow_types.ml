[@@@ocaml.warning "-27-30-39"]


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

let rec default_block_header 
  ?id:((id:bytes) = Bytes.create 0)
  ?parent_id:((parent_id:bytes) = Bytes.create 0)
  ?height:((height:int64) = 0L)
  () : block_header  = {
  id;
  parent_id;
  height;
}

let rec default_block_header_response 
  ?block:((block:block_header option) = None)
  () : block_header_response  = {
  block;
}

let rec default_get_latest_block_header_request 
  ?is_sealed:((is_sealed:bool) = false)
  () : get_latest_block_header_request  = {
  is_sealed;
}

let rec default_get_block_header_by_id_request 
  ?id:((id:bytes) = Bytes.create 0)
  () : get_block_header_by_id_request  = {
  id;
}

let rec default_get_block_header_by_height_request 
  ?height:((height:int64) = 0L)
  () : get_block_header_by_height_request  = {
  height;
}

let rec default_timestamp 
  ?seconds:((seconds:int64) = 0L)
  ?nanos:((nanos:int32) = 0l)
  () : timestamp  = {
  seconds;
  nanos;
}

let rec default_collection_guarantee 
  ?collection_id:((collection_id:bytes) = Bytes.create 0)
  ?signatures:((signatures:bytes list) = [])
  () : collection_guarantee  = {
  collection_id;
  signatures;
}

let rec default_block_seal 
  ?block_id:((block_id:bytes) = Bytes.create 0)
  ?execution_receipt_id:((execution_receipt_id:bytes) = Bytes.create 0)
  ?execution_receipt_signatures:((execution_receipt_signatures:bytes list) = [])
  ?result_approval_signatures:((result_approval_signatures:bytes list) = [])
  () : block_seal  = {
  block_id;
  execution_receipt_id;
  execution_receipt_signatures;
  result_approval_signatures;
}

let rec default_block 
  ?id:((id:bytes) = Bytes.create 0)
  ?parent_id:((parent_id:bytes) = Bytes.create 0)
  ?height:((height:int64) = 0L)
  ?timestamp:((timestamp:timestamp option) = None)
  ?collection_guarantees:((collection_guarantees:collection_guarantee list) = [])
  ?block_seals:((block_seals:block_seal list) = [])
  ?signatures:((signatures:bytes list) = [])
  () : block  = {
  id;
  parent_id;
  height;
  timestamp;
  collection_guarantees;
  block_seals;
  signatures;
}

let rec default_block_response 
  ?block:((block:block option) = None)
  () : block_response  = {
  block;
}

let rec default_get_latest_block_request 
  ?is_sealed:((is_sealed:bool) = false)
  () : get_latest_block_request  = {
  is_sealed;
}

let rec default_get_block_by_id_request 
  ?id:((id:bytes) = Bytes.create 0)
  () : get_block_by_id_request  = {
  id;
}

let rec default_get_block_by_height_request 
  ?height:((height:int64) = 0L)
  () : get_block_by_height_request  = {
  height;
}

let rec default_collection 
  ?id:((id:bytes) = Bytes.create 0)
  ?transaction_ids:((transaction_ids:bytes list) = [])
  () : collection  = {
  id;
  transaction_ids;
}

let rec default_collection_response 
  ?collection:((collection:collection option) = None)
  () : collection_response  = {
  collection;
}

let rec default_get_collection_by_id_request 
  ?id:((id:bytes) = Bytes.create 0)
  () : get_collection_by_id_request  = {
  id;
}

let rec default_send_transaction_response 
  ?id:((id:bytes) = Bytes.create 0)
  () : send_transaction_response  = {
  id;
}

let rec default_transaction_proposal_key 
  ?address:((address:bytes) = Bytes.create 0)
  ?key_id:((key_id:int32) = 0l)
  ?sequence_number:((sequence_number:int64) = 0L)
  () : transaction_proposal_key  = {
  address;
  key_id;
  sequence_number;
}

let rec default_transaction_signature 
  ?address:((address:bytes) = Bytes.create 0)
  ?key_id:((key_id:int32) = 0l)
  ?signature:((signature:bytes) = Bytes.create 0)
  () : transaction_signature  = {
  address;
  key_id;
  signature;
}

let rec default_transaction 
  ?script:((script:bytes) = Bytes.create 0)
  ?arguments:((arguments:bytes list) = [])
  ?reference_block_id:((reference_block_id:bytes) = Bytes.create 0)
  ?gas_limit:((gas_limit:int64) = 0L)
  ?proposal_key:((proposal_key:transaction_proposal_key option) = None)
  ?payer:((payer:bytes) = Bytes.create 0)
  ?authorizers:((authorizers:bytes list) = [])
  ?payload_signatures:((payload_signatures:transaction_signature list) = [])
  ?envelope_signatures:((envelope_signatures:transaction_signature list) = [])
  () : transaction  = {
  script;
  arguments;
  reference_block_id;
  gas_limit;
  proposal_key;
  payer;
  authorizers;
  payload_signatures;
  envelope_signatures;
}

let rec default_send_transaction_request 
  ?transaction:((transaction:transaction option) = None)
  () : send_transaction_request  = {
  transaction;
}

let rec default_get_transaction_request 
  ?id:((id:bytes) = Bytes.create 0)
  () : get_transaction_request  = {
  id;
}

let rec default_transaction_response 
  ?transaction:((transaction:transaction option) = None)
  () : transaction_response  = {
  transaction;
}

let rec default_transaction_status () = (Unknown:transaction_status)

let rec default_event 
  ?type_:((type_:string) = "")
  ?transaction_id:((transaction_id:bytes) = Bytes.create 0)
  ?transaction_index:((transaction_index:int32) = 0l)
  ?event_index:((event_index:int32) = 0l)
  ?payload:((payload:bytes) = Bytes.create 0)
  () : event  = {
  type_;
  transaction_id;
  transaction_index;
  event_index;
  payload;
}

let rec default_transaction_result_response 
  ?status:((status:transaction_status) = default_transaction_status ())
  ?status_code:((status_code:int32) = 0l)
  ?error_message:((error_message:string) = "")
  ?events:((events:event list) = [])
  () : transaction_result_response  = {
  status;
  status_code;
  error_message;
  events;
}

let rec default_account_key 
  ?id:((id:int32) = 0l)
  ?public_key:((public_key:bytes) = Bytes.create 0)
  ?sign_algo:((sign_algo:int32) = 0l)
  ?hash_algo:((hash_algo:int32) = 0l)
  ?weight:((weight:int32) = 0l)
  ?sequence_number:((sequence_number:int32) = 0l)
  ?revoked:((revoked:bool) = false)
  () : account_key  = {
  id;
  public_key;
  sign_algo;
  hash_algo;
  weight;
  sequence_number;
  revoked;
}

let rec default_account 
  ?address:((address:bytes) = Bytes.create 0)
  ?balance:((balance:int64) = 0L)
  ?code:((code:bytes) = Bytes.create 0)
  ?keys:((keys:account_key list) = [])
  ?contracts:((contracts:(string * bytes) list) = [])
  () : account  = {
  address;
  balance;
  code;
  keys;
  contracts;
}

let rec default_account_response 
  ?account:((account:account option) = None)
  () : account_response  = {
  account;
}

let rec default_get_account_at_latest_block_request 
  ?address:((address:bytes) = Bytes.create 0)
  () : get_account_at_latest_block_request  = {
  address;
}

let rec default_get_account_at_block_height_request 
  ?address:((address:bytes) = Bytes.create 0)
  ?block_height:((block_height:int64) = 0L)
  () : get_account_at_block_height_request  = {
  address;
  block_height;
}

let rec default_execute_script_response 
  ?value:((value:bytes) = Bytes.create 0)
  () : execute_script_response  = {
  value;
}

let rec default_execute_script_at_latest_block_request 
  ?script:((script:bytes) = Bytes.create 0)
  ?arguments:((arguments:bytes list) = [])
  () : execute_script_at_latest_block_request  = {
  script;
  arguments;
}

let rec default_execute_script_at_block_id_request 
  ?block_id:((block_id:bytes) = Bytes.create 0)
  ?script:((script:bytes) = Bytes.create 0)
  ?arguments:((arguments:bytes list) = [])
  () : execute_script_at_block_id_request  = {
  block_id;
  script;
  arguments;
}

let rec default_execute_script_at_block_height_request 
  ?block_height:((block_height:int64) = 0L)
  ?script:((script:bytes) = Bytes.create 0)
  ?arguments:((arguments:bytes list) = [])
  () : execute_script_at_block_height_request  = {
  block_height;
  script;
  arguments;
}

let rec default_events_response_result 
  ?block_id:((block_id:bytes) = Bytes.create 0)
  ?block_height:((block_height:int64) = 0L)
  ?events:((events:event list) = [])
  ?block_timestamp:((block_timestamp:timestamp option) = None)
  () : events_response_result  = {
  block_id;
  block_height;
  events;
  block_timestamp;
}

let rec default_events_response 
  ?results:((results:events_response_result list) = [])
  () : events_response  = {
  results;
}

let rec default_get_events_for_height_range_request 
  ?type_:((type_:string) = "")
  ?start_height:((start_height:int64) = 0L)
  ?end_height:((end_height:int64) = 0L)
  () : get_events_for_height_range_request  = {
  type_;
  start_height;
  end_height;
}

let rec default_get_events_for_block_ids_request 
  ?type_:((type_:string) = "")
  ?block_ids:((block_ids:bytes list) = [])
  () : get_events_for_block_ids_request  = {
  type_;
  block_ids;
}

let rec default_get_network_parameters_response 
  ?chain_id:((chain_id:string) = "")
  () : get_network_parameters_response  = {
  chain_id;
}

let rec default_protocol_state_snapshot_response 
  ?serialized_snapshot:((serialized_snapshot:bytes) = Bytes.create 0)
  () : protocol_state_snapshot_response  = {
  serialized_snapshot;
}

let rec default_chunk 
  ?start_state:((start_state:bytes) = Bytes.create 0)
  ?event_collection:((event_collection:bytes) = Bytes.create 0)
  ?block_id:((block_id:bytes) = Bytes.create 0)
  ?total_computation_used:((total_computation_used:int64) = 0L)
  ?number_of_transactions:((number_of_transactions:int64) = 0L)
  ?index:((index:int64) = 0L)
  ?end_state:((end_state:bytes) = Bytes.create 0)
  () : chunk  = {
  start_state;
  event_collection;
  block_id;
  total_computation_used;
  number_of_transactions;
  index;
  end_state;
}

let rec default_service_event 
  ?type_:((type_:string) = "")
  ?payload:((payload:bytes) = Bytes.create 0)
  () : service_event  = {
  type_;
  payload;
}

let rec default_execution_result 
  ?previous_result_id:((previous_result_id:bytes) = Bytes.create 0)
  ?block_id:((block_id:bytes) = Bytes.create 0)
  ?chunks:((chunks:chunk list) = [])
  ?service_events:((service_events:service_event list) = [])
  () : execution_result  = {
  previous_result_id;
  block_id;
  chunks;
  service_events;
}

let rec default_execution_result_for_block_id_response 
  ?execution_result:((execution_result:execution_result option) = None)
  () : execution_result_for_block_id_response  = {
  execution_result;
}

let rec default_get_execution_result_for_block_id_request 
  ?block_id:((block_id:bytes) = Bytes.create 0)
  () : get_execution_result_for_block_id_request  = {
  block_id;
}
