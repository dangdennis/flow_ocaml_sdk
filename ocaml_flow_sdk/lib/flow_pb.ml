[@@@ocaml.warning "-27-30-39"]

type block_header_mutable = {
  mutable id : bytes;
  mutable parent_id : bytes;
  mutable height : int64;
}

let default_block_header_mutable () : block_header_mutable = {
  id = Bytes.create 0;
  parent_id = Bytes.create 0;
  height = 0L;
}

type block_header_response_mutable = {
  mutable block : Flow_types.block_header option;
}

let default_block_header_response_mutable () : block_header_response_mutable = {
  block = None;
}

type get_latest_block_header_request_mutable = {
  mutable is_sealed : bool;
}

let default_get_latest_block_header_request_mutable () : get_latest_block_header_request_mutable = {
  is_sealed = false;
}

type get_block_header_by_id_request_mutable = {
  mutable id : bytes;
}

let default_get_block_header_by_id_request_mutable () : get_block_header_by_id_request_mutable = {
  id = Bytes.create 0;
}

type get_block_header_by_height_request_mutable = {
  mutable height : int64;
}

let default_get_block_header_by_height_request_mutable () : get_block_header_by_height_request_mutable = {
  height = 0L;
}

type timestamp_mutable = {
  mutable seconds : int64;
  mutable nanos : int32;
}

let default_timestamp_mutable () : timestamp_mutable = {
  seconds = 0L;
  nanos = 0l;
}

type collection_guarantee_mutable = {
  mutable collection_id : bytes;
  mutable signatures : bytes list;
}

let default_collection_guarantee_mutable () : collection_guarantee_mutable = {
  collection_id = Bytes.create 0;
  signatures = [];
}

type block_seal_mutable = {
  mutable block_id : bytes;
  mutable execution_receipt_id : bytes;
  mutable execution_receipt_signatures : bytes list;
  mutable result_approval_signatures : bytes list;
}

let default_block_seal_mutable () : block_seal_mutable = {
  block_id = Bytes.create 0;
  execution_receipt_id = Bytes.create 0;
  execution_receipt_signatures = [];
  result_approval_signatures = [];
}

type block_mutable = {
  mutable id : bytes;
  mutable parent_id : bytes;
  mutable height : int64;
  mutable timestamp : Flow_types.timestamp option;
  mutable collection_guarantees : Flow_types.collection_guarantee list;
  mutable block_seals : Flow_types.block_seal list;
  mutable signatures : bytes list;
}

let default_block_mutable () : block_mutable = {
  id = Bytes.create 0;
  parent_id = Bytes.create 0;
  height = 0L;
  timestamp = None;
  collection_guarantees = [];
  block_seals = [];
  signatures = [];
}

type block_response_mutable = {
  mutable block : Flow_types.block option;
}

let default_block_response_mutable () : block_response_mutable = {
  block = None;
}

type get_latest_block_request_mutable = {
  mutable is_sealed : bool;
}

let default_get_latest_block_request_mutable () : get_latest_block_request_mutable = {
  is_sealed = false;
}

type get_block_by_id_request_mutable = {
  mutable id : bytes;
}

let default_get_block_by_id_request_mutable () : get_block_by_id_request_mutable = {
  id = Bytes.create 0;
}

type get_block_by_height_request_mutable = {
  mutable height : int64;
}

let default_get_block_by_height_request_mutable () : get_block_by_height_request_mutable = {
  height = 0L;
}

type collection_mutable = {
  mutable id : bytes;
  mutable transaction_ids : bytes list;
}

let default_collection_mutable () : collection_mutable = {
  id = Bytes.create 0;
  transaction_ids = [];
}

type collection_response_mutable = {
  mutable collection : Flow_types.collection option;
}

let default_collection_response_mutable () : collection_response_mutable = {
  collection = None;
}

type get_collection_by_id_request_mutable = {
  mutable id : bytes;
}

let default_get_collection_by_id_request_mutable () : get_collection_by_id_request_mutable = {
  id = Bytes.create 0;
}

type send_transaction_response_mutable = {
  mutable id : bytes;
}

let default_send_transaction_response_mutable () : send_transaction_response_mutable = {
  id = Bytes.create 0;
}

type transaction_proposal_key_mutable = {
  mutable address : bytes;
  mutable key_id : int32;
  mutable sequence_number : int64;
}

let default_transaction_proposal_key_mutable () : transaction_proposal_key_mutable = {
  address = Bytes.create 0;
  key_id = 0l;
  sequence_number = 0L;
}

type transaction_signature_mutable = {
  mutable address : bytes;
  mutable key_id : int32;
  mutable signature : bytes;
}

let default_transaction_signature_mutable () : transaction_signature_mutable = {
  address = Bytes.create 0;
  key_id = 0l;
  signature = Bytes.create 0;
}

type transaction_mutable = {
  mutable script : bytes;
  mutable arguments : bytes list;
  mutable reference_block_id : bytes;
  mutable gas_limit : int64;
  mutable proposal_key : Flow_types.transaction_proposal_key option;
  mutable payer : bytes;
  mutable authorizers : bytes list;
  mutable payload_signatures : Flow_types.transaction_signature list;
  mutable envelope_signatures : Flow_types.transaction_signature list;
}

let default_transaction_mutable () : transaction_mutable = {
  script = Bytes.create 0;
  arguments = [];
  reference_block_id = Bytes.create 0;
  gas_limit = 0L;
  proposal_key = None;
  payer = Bytes.create 0;
  authorizers = [];
  payload_signatures = [];
  envelope_signatures = [];
}

type send_transaction_request_mutable = {
  mutable transaction : Flow_types.transaction option;
}

let default_send_transaction_request_mutable () : send_transaction_request_mutable = {
  transaction = None;
}

type get_transaction_request_mutable = {
  mutable id : bytes;
}

let default_get_transaction_request_mutable () : get_transaction_request_mutable = {
  id = Bytes.create 0;
}

type transaction_response_mutable = {
  mutable transaction : Flow_types.transaction option;
}

let default_transaction_response_mutable () : transaction_response_mutable = {
  transaction = None;
}

type event_mutable = {
  mutable type_ : string;
  mutable transaction_id : bytes;
  mutable transaction_index : int32;
  mutable event_index : int32;
  mutable payload : bytes;
}

let default_event_mutable () : event_mutable = {
  type_ = "";
  transaction_id = Bytes.create 0;
  transaction_index = 0l;
  event_index = 0l;
  payload = Bytes.create 0;
}

type transaction_result_response_mutable = {
  mutable status : Flow_types.transaction_status;
  mutable status_code : int32;
  mutable error_message : string;
  mutable events : Flow_types.event list;
}

let default_transaction_result_response_mutable () : transaction_result_response_mutable = {
  status = Flow_types.default_transaction_status ();
  status_code = 0l;
  error_message = "";
  events = [];
}

type account_key_mutable = {
  mutable id : int32;
  mutable public_key : bytes;
  mutable sign_algo : int32;
  mutable hash_algo : int32;
  mutable weight : int32;
  mutable sequence_number : int32;
  mutable revoked : bool;
}

let default_account_key_mutable () : account_key_mutable = {
  id = 0l;
  public_key = Bytes.create 0;
  sign_algo = 0l;
  hash_algo = 0l;
  weight = 0l;
  sequence_number = 0l;
  revoked = false;
}

type account_mutable = {
  mutable address : bytes;
  mutable balance : int64;
  mutable code : bytes;
  mutable keys : Flow_types.account_key list;
  mutable contracts : (string * bytes) list;
}

let default_account_mutable () : account_mutable = {
  address = Bytes.create 0;
  balance = 0L;
  code = Bytes.create 0;
  keys = [];
  contracts = [];
}

type account_response_mutable = {
  mutable account : Flow_types.account option;
}

let default_account_response_mutable () : account_response_mutable = {
  account = None;
}

type get_account_at_latest_block_request_mutable = {
  mutable address : bytes;
}

let default_get_account_at_latest_block_request_mutable () : get_account_at_latest_block_request_mutable = {
  address = Bytes.create 0;
}

type get_account_at_block_height_request_mutable = {
  mutable address : bytes;
  mutable block_height : int64;
}

let default_get_account_at_block_height_request_mutable () : get_account_at_block_height_request_mutable = {
  address = Bytes.create 0;
  block_height = 0L;
}

type execute_script_response_mutable = {
  mutable value : bytes;
}

let default_execute_script_response_mutable () : execute_script_response_mutable = {
  value = Bytes.create 0;
}

type execute_script_at_latest_block_request_mutable = {
  mutable script : bytes;
  mutable arguments : bytes list;
}

let default_execute_script_at_latest_block_request_mutable () : execute_script_at_latest_block_request_mutable = {
  script = Bytes.create 0;
  arguments = [];
}

type execute_script_at_block_id_request_mutable = {
  mutable block_id : bytes;
  mutable script : bytes;
  mutable arguments : bytes list;
}

let default_execute_script_at_block_id_request_mutable () : execute_script_at_block_id_request_mutable = {
  block_id = Bytes.create 0;
  script = Bytes.create 0;
  arguments = [];
}

type execute_script_at_block_height_request_mutable = {
  mutable block_height : int64;
  mutable script : bytes;
  mutable arguments : bytes list;
}

let default_execute_script_at_block_height_request_mutable () : execute_script_at_block_height_request_mutable = {
  block_height = 0L;
  script = Bytes.create 0;
  arguments = [];
}

type events_response_result_mutable = {
  mutable block_id : bytes;
  mutable block_height : int64;
  mutable events : Flow_types.event list;
  mutable block_timestamp : Flow_types.timestamp option;
}

let default_events_response_result_mutable () : events_response_result_mutable = {
  block_id = Bytes.create 0;
  block_height = 0L;
  events = [];
  block_timestamp = None;
}

type events_response_mutable = {
  mutable results : Flow_types.events_response_result list;
}

let default_events_response_mutable () : events_response_mutable = {
  results = [];
}

type get_events_for_height_range_request_mutable = {
  mutable type_ : string;
  mutable start_height : int64;
  mutable end_height : int64;
}

let default_get_events_for_height_range_request_mutable () : get_events_for_height_range_request_mutable = {
  type_ = "";
  start_height = 0L;
  end_height = 0L;
}

type get_events_for_block_ids_request_mutable = {
  mutable type_ : string;
  mutable block_ids : bytes list;
}

let default_get_events_for_block_ids_request_mutable () : get_events_for_block_ids_request_mutable = {
  type_ = "";
  block_ids = [];
}

type get_network_parameters_response_mutable = {
  mutable chain_id : string;
}

let default_get_network_parameters_response_mutable () : get_network_parameters_response_mutable = {
  chain_id = "";
}

type protocol_state_snapshot_response_mutable = {
  mutable serialized_snapshot : bytes;
}

let default_protocol_state_snapshot_response_mutable () : protocol_state_snapshot_response_mutable = {
  serialized_snapshot = Bytes.create 0;
}

type chunk_mutable = {
  mutable start_state : bytes;
  mutable event_collection : bytes;
  mutable block_id : bytes;
  mutable total_computation_used : int64;
  mutable number_of_transactions : int64;
  mutable index : int64;
  mutable end_state : bytes;
}

let default_chunk_mutable () : chunk_mutable = {
  start_state = Bytes.create 0;
  event_collection = Bytes.create 0;
  block_id = Bytes.create 0;
  total_computation_used = 0L;
  number_of_transactions = 0L;
  index = 0L;
  end_state = Bytes.create 0;
}

type service_event_mutable = {
  mutable type_ : string;
  mutable payload : bytes;
}

let default_service_event_mutable () : service_event_mutable = {
  type_ = "";
  payload = Bytes.create 0;
}

type execution_result_mutable = {
  mutable previous_result_id : bytes;
  mutable block_id : bytes;
  mutable chunks : Flow_types.chunk list;
  mutable service_events : Flow_types.service_event list;
}

let default_execution_result_mutable () : execution_result_mutable = {
  previous_result_id = Bytes.create 0;
  block_id = Bytes.create 0;
  chunks = [];
  service_events = [];
}

type execution_result_for_block_id_response_mutable = {
  mutable execution_result : Flow_types.execution_result option;
}

let default_execution_result_for_block_id_response_mutable () : execution_result_for_block_id_response_mutable = {
  execution_result = None;
}

type get_execution_result_for_block_id_request_mutable = {
  mutable block_id : bytes;
}

let default_get_execution_result_for_block_id_request_mutable () : get_execution_result_for_block_id_request_mutable = {
  block_id = Bytes.create 0;
}


let rec decode_block_header d =
  let v = default_block_header_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.id <- Pbrt.Decoder.bytes d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(block_header), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.parent_id <- Pbrt.Decoder.bytes d;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(block_header), field(2)" pk
    | Some (3, Pbrt.Varint) -> begin
      v.height <- Pbrt.Decoder.int64_as_varint d;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(block_header), field(3)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Flow_types.id = v.id;
    Flow_types.parent_id = v.parent_id;
    Flow_types.height = v.height;
  } : Flow_types.block_header)

let rec decode_block_header_response d =
  let v = default_block_header_response_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.block <- Some (decode_block_header (Pbrt.Decoder.nested d));
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(block_header_response), field(1)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Flow_types.block = v.block;
  } : Flow_types.block_header_response)

let rec decode_get_latest_block_header_request d =
  let v = default_get_latest_block_header_request_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Varint) -> begin
      v.is_sealed <- Pbrt.Decoder.bool d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(get_latest_block_header_request), field(1)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Flow_types.is_sealed = v.is_sealed;
  } : Flow_types.get_latest_block_header_request)

let rec decode_get_block_header_by_id_request d =
  let v = default_get_block_header_by_id_request_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.id <- Pbrt.Decoder.bytes d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(get_block_header_by_id_request), field(1)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Flow_types.id = v.id;
  } : Flow_types.get_block_header_by_id_request)

let rec decode_get_block_header_by_height_request d =
  let v = default_get_block_header_by_height_request_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Varint) -> begin
      v.height <- Pbrt.Decoder.int64_as_varint d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(get_block_header_by_height_request), field(1)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Flow_types.height = v.height;
  } : Flow_types.get_block_header_by_height_request)

let rec decode_timestamp d =
  let v = default_timestamp_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Varint) -> begin
      v.seconds <- Pbrt.Decoder.int64_as_varint d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(timestamp), field(1)" pk
    | Some (2, Pbrt.Varint) -> begin
      v.nanos <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(timestamp), field(2)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Flow_types.seconds = v.seconds;
    Flow_types.nanos = v.nanos;
  } : Flow_types.timestamp)

let rec decode_collection_guarantee d =
  let v = default_collection_guarantee_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.signatures <- List.rev v.signatures;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.collection_id <- Pbrt.Decoder.bytes d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(collection_guarantee), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.signatures <- (Pbrt.Decoder.bytes d) :: v.signatures;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(collection_guarantee), field(2)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Flow_types.collection_id = v.collection_id;
    Flow_types.signatures = v.signatures;
  } : Flow_types.collection_guarantee)

let rec decode_block_seal d =
  let v = default_block_seal_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.result_approval_signatures <- List.rev v.result_approval_signatures;
      v.execution_receipt_signatures <- List.rev v.execution_receipt_signatures;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.block_id <- Pbrt.Decoder.bytes d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(block_seal), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.execution_receipt_id <- Pbrt.Decoder.bytes d;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(block_seal), field(2)" pk
    | Some (3, Pbrt.Bytes) -> begin
      v.execution_receipt_signatures <- (Pbrt.Decoder.bytes d) :: v.execution_receipt_signatures;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(block_seal), field(3)" pk
    | Some (4, Pbrt.Bytes) -> begin
      v.result_approval_signatures <- (Pbrt.Decoder.bytes d) :: v.result_approval_signatures;
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(block_seal), field(4)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Flow_types.block_id = v.block_id;
    Flow_types.execution_receipt_id = v.execution_receipt_id;
    Flow_types.execution_receipt_signatures = v.execution_receipt_signatures;
    Flow_types.result_approval_signatures = v.result_approval_signatures;
  } : Flow_types.block_seal)

let rec decode_block d =
  let v = default_block_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.signatures <- List.rev v.signatures;
      v.block_seals <- List.rev v.block_seals;
      v.collection_guarantees <- List.rev v.collection_guarantees;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.id <- Pbrt.Decoder.bytes d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(block), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.parent_id <- Pbrt.Decoder.bytes d;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(block), field(2)" pk
    | Some (3, Pbrt.Varint) -> begin
      v.height <- Pbrt.Decoder.int64_as_varint d;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(block), field(3)" pk
    | Some (4, Pbrt.Bytes) -> begin
      v.timestamp <- Some (decode_timestamp (Pbrt.Decoder.nested d));
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(block), field(4)" pk
    | Some (5, Pbrt.Bytes) -> begin
      v.collection_guarantees <- (decode_collection_guarantee (Pbrt.Decoder.nested d)) :: v.collection_guarantees;
    end
    | Some (5, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(block), field(5)" pk
    | Some (6, Pbrt.Bytes) -> begin
      v.block_seals <- (decode_block_seal (Pbrt.Decoder.nested d)) :: v.block_seals;
    end
    | Some (6, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(block), field(6)" pk
    | Some (7, Pbrt.Bytes) -> begin
      v.signatures <- (Pbrt.Decoder.bytes d) :: v.signatures;
    end
    | Some (7, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(block), field(7)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Flow_types.id = v.id;
    Flow_types.parent_id = v.parent_id;
    Flow_types.height = v.height;
    Flow_types.timestamp = v.timestamp;
    Flow_types.collection_guarantees = v.collection_guarantees;
    Flow_types.block_seals = v.block_seals;
    Flow_types.signatures = v.signatures;
  } : Flow_types.block)

let rec decode_block_response d =
  let v = default_block_response_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.block <- Some (decode_block (Pbrt.Decoder.nested d));
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(block_response), field(1)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Flow_types.block = v.block;
  } : Flow_types.block_response)

let rec decode_get_latest_block_request d =
  let v = default_get_latest_block_request_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Varint) -> begin
      v.is_sealed <- Pbrt.Decoder.bool d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(get_latest_block_request), field(1)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Flow_types.is_sealed = v.is_sealed;
  } : Flow_types.get_latest_block_request)

let rec decode_get_block_by_id_request d =
  let v = default_get_block_by_id_request_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.id <- Pbrt.Decoder.bytes d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(get_block_by_id_request), field(1)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Flow_types.id = v.id;
  } : Flow_types.get_block_by_id_request)

let rec decode_get_block_by_height_request d =
  let v = default_get_block_by_height_request_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Varint) -> begin
      v.height <- Pbrt.Decoder.int64_as_varint d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(get_block_by_height_request), field(1)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Flow_types.height = v.height;
  } : Flow_types.get_block_by_height_request)

let rec decode_collection d =
  let v = default_collection_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.transaction_ids <- List.rev v.transaction_ids;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.id <- Pbrt.Decoder.bytes d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(collection), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.transaction_ids <- (Pbrt.Decoder.bytes d) :: v.transaction_ids;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(collection), field(2)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Flow_types.id = v.id;
    Flow_types.transaction_ids = v.transaction_ids;
  } : Flow_types.collection)

let rec decode_collection_response d =
  let v = default_collection_response_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.collection <- Some (decode_collection (Pbrt.Decoder.nested d));
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(collection_response), field(1)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Flow_types.collection = v.collection;
  } : Flow_types.collection_response)

let rec decode_get_collection_by_id_request d =
  let v = default_get_collection_by_id_request_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.id <- Pbrt.Decoder.bytes d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(get_collection_by_id_request), field(1)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Flow_types.id = v.id;
  } : Flow_types.get_collection_by_id_request)

let rec decode_send_transaction_response d =
  let v = default_send_transaction_response_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.id <- Pbrt.Decoder.bytes d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(send_transaction_response), field(1)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Flow_types.id = v.id;
  } : Flow_types.send_transaction_response)

let rec decode_transaction_proposal_key d =
  let v = default_transaction_proposal_key_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.address <- Pbrt.Decoder.bytes d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(transaction_proposal_key), field(1)" pk
    | Some (2, Pbrt.Varint) -> begin
      v.key_id <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(transaction_proposal_key), field(2)" pk
    | Some (3, Pbrt.Varint) -> begin
      v.sequence_number <- Pbrt.Decoder.int64_as_varint d;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(transaction_proposal_key), field(3)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Flow_types.address = v.address;
    Flow_types.key_id = v.key_id;
    Flow_types.sequence_number = v.sequence_number;
  } : Flow_types.transaction_proposal_key)

let rec decode_transaction_signature d =
  let v = default_transaction_signature_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.address <- Pbrt.Decoder.bytes d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(transaction_signature), field(1)" pk
    | Some (2, Pbrt.Varint) -> begin
      v.key_id <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(transaction_signature), field(2)" pk
    | Some (3, Pbrt.Bytes) -> begin
      v.signature <- Pbrt.Decoder.bytes d;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(transaction_signature), field(3)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Flow_types.address = v.address;
    Flow_types.key_id = v.key_id;
    Flow_types.signature = v.signature;
  } : Flow_types.transaction_signature)

let rec decode_transaction d =
  let v = default_transaction_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.envelope_signatures <- List.rev v.envelope_signatures;
      v.payload_signatures <- List.rev v.payload_signatures;
      v.authorizers <- List.rev v.authorizers;
      v.arguments <- List.rev v.arguments;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.script <- Pbrt.Decoder.bytes d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(transaction), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.arguments <- (Pbrt.Decoder.bytes d) :: v.arguments;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(transaction), field(2)" pk
    | Some (3, Pbrt.Bytes) -> begin
      v.reference_block_id <- Pbrt.Decoder.bytes d;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(transaction), field(3)" pk
    | Some (4, Pbrt.Varint) -> begin
      v.gas_limit <- Pbrt.Decoder.int64_as_varint d;
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(transaction), field(4)" pk
    | Some (5, Pbrt.Bytes) -> begin
      v.proposal_key <- Some (decode_transaction_proposal_key (Pbrt.Decoder.nested d));
    end
    | Some (5, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(transaction), field(5)" pk
    | Some (6, Pbrt.Bytes) -> begin
      v.payer <- Pbrt.Decoder.bytes d;
    end
    | Some (6, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(transaction), field(6)" pk
    | Some (7, Pbrt.Bytes) -> begin
      v.authorizers <- (Pbrt.Decoder.bytes d) :: v.authorizers;
    end
    | Some (7, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(transaction), field(7)" pk
    | Some (8, Pbrt.Bytes) -> begin
      v.payload_signatures <- (decode_transaction_signature (Pbrt.Decoder.nested d)) :: v.payload_signatures;
    end
    | Some (8, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(transaction), field(8)" pk
    | Some (9, Pbrt.Bytes) -> begin
      v.envelope_signatures <- (decode_transaction_signature (Pbrt.Decoder.nested d)) :: v.envelope_signatures;
    end
    | Some (9, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(transaction), field(9)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Flow_types.script = v.script;
    Flow_types.arguments = v.arguments;
    Flow_types.reference_block_id = v.reference_block_id;
    Flow_types.gas_limit = v.gas_limit;
    Flow_types.proposal_key = v.proposal_key;
    Flow_types.payer = v.payer;
    Flow_types.authorizers = v.authorizers;
    Flow_types.payload_signatures = v.payload_signatures;
    Flow_types.envelope_signatures = v.envelope_signatures;
  } : Flow_types.transaction)

let rec decode_send_transaction_request d =
  let v = default_send_transaction_request_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.transaction <- Some (decode_transaction (Pbrt.Decoder.nested d));
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(send_transaction_request), field(1)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Flow_types.transaction = v.transaction;
  } : Flow_types.send_transaction_request)

let rec decode_get_transaction_request d =
  let v = default_get_transaction_request_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.id <- Pbrt.Decoder.bytes d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(get_transaction_request), field(1)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Flow_types.id = v.id;
  } : Flow_types.get_transaction_request)

let rec decode_transaction_response d =
  let v = default_transaction_response_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.transaction <- Some (decode_transaction (Pbrt.Decoder.nested d));
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(transaction_response), field(1)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Flow_types.transaction = v.transaction;
  } : Flow_types.transaction_response)

let rec decode_transaction_status d = 
  match Pbrt.Decoder.int_as_varint d with
  | 0 -> (Flow_types.Unknown:Flow_types.transaction_status)
  | 1 -> (Flow_types.Pending:Flow_types.transaction_status)
  | 2 -> (Flow_types.Finalized:Flow_types.transaction_status)
  | 3 -> (Flow_types.Executed:Flow_types.transaction_status)
  | 4 -> (Flow_types.Sealed:Flow_types.transaction_status)
  | 5 -> (Flow_types.Expired:Flow_types.transaction_status)
  | _ -> Pbrt.Decoder.malformed_variant "transaction_status"

let rec decode_event d =
  let v = default_event_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.type_ <- Pbrt.Decoder.string d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(event), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.transaction_id <- Pbrt.Decoder.bytes d;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(event), field(2)" pk
    | Some (3, Pbrt.Varint) -> begin
      v.transaction_index <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(event), field(3)" pk
    | Some (4, Pbrt.Varint) -> begin
      v.event_index <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(event), field(4)" pk
    | Some (5, Pbrt.Bytes) -> begin
      v.payload <- Pbrt.Decoder.bytes d;
    end
    | Some (5, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(event), field(5)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Flow_types.type_ = v.type_;
    Flow_types.transaction_id = v.transaction_id;
    Flow_types.transaction_index = v.transaction_index;
    Flow_types.event_index = v.event_index;
    Flow_types.payload = v.payload;
  } : Flow_types.event)

let rec decode_transaction_result_response d =
  let v = default_transaction_result_response_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.events <- List.rev v.events;
    ); continue__ := false
    | Some (1, Pbrt.Varint) -> begin
      v.status <- decode_transaction_status d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(transaction_result_response), field(1)" pk
    | Some (2, Pbrt.Varint) -> begin
      v.status_code <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(transaction_result_response), field(2)" pk
    | Some (3, Pbrt.Bytes) -> begin
      v.error_message <- Pbrt.Decoder.string d;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(transaction_result_response), field(3)" pk
    | Some (4, Pbrt.Bytes) -> begin
      v.events <- (decode_event (Pbrt.Decoder.nested d)) :: v.events;
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(transaction_result_response), field(4)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Flow_types.status = v.status;
    Flow_types.status_code = v.status_code;
    Flow_types.error_message = v.error_message;
    Flow_types.events = v.events;
  } : Flow_types.transaction_result_response)

let rec decode_account_key d =
  let v = default_account_key_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Varint) -> begin
      v.id <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(account_key), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.public_key <- Pbrt.Decoder.bytes d;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(account_key), field(2)" pk
    | Some (3, Pbrt.Varint) -> begin
      v.sign_algo <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(account_key), field(3)" pk
    | Some (4, Pbrt.Varint) -> begin
      v.hash_algo <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(account_key), field(4)" pk
    | Some (5, Pbrt.Varint) -> begin
      v.weight <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (5, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(account_key), field(5)" pk
    | Some (6, Pbrt.Varint) -> begin
      v.sequence_number <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (6, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(account_key), field(6)" pk
    | Some (7, Pbrt.Varint) -> begin
      v.revoked <- Pbrt.Decoder.bool d;
    end
    | Some (7, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(account_key), field(7)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Flow_types.id = v.id;
    Flow_types.public_key = v.public_key;
    Flow_types.sign_algo = v.sign_algo;
    Flow_types.hash_algo = v.hash_algo;
    Flow_types.weight = v.weight;
    Flow_types.sequence_number = v.sequence_number;
    Flow_types.revoked = v.revoked;
  } : Flow_types.account_key)

let rec decode_account d =
  let v = default_account_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.contracts <- List.rev v.contracts;
      v.keys <- List.rev v.keys;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.address <- Pbrt.Decoder.bytes d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(account), field(1)" pk
    | Some (2, Pbrt.Varint) -> begin
      v.balance <- Pbrt.Decoder.int64_as_varint d;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(account), field(2)" pk
    | Some (3, Pbrt.Bytes) -> begin
      v.code <- Pbrt.Decoder.bytes d;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(account), field(3)" pk
    | Some (4, Pbrt.Bytes) -> begin
      v.keys <- (decode_account_key (Pbrt.Decoder.nested d)) :: v.keys;
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(account), field(4)" pk
    | Some (5, Pbrt.Bytes) -> begin
      let decode_value = (fun d ->
        Pbrt.Decoder.bytes d
      ) in
      v.contracts <- (
        (Pbrt.Decoder.map_entry d ~decode_key:Pbrt.Decoder.string ~decode_value)::v.contracts;
      );
    end
    | Some (5, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(account), field(5)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Flow_types.address = v.address;
    Flow_types.balance = v.balance;
    Flow_types.code = v.code;
    Flow_types.keys = v.keys;
    Flow_types.contracts = v.contracts;
  } : Flow_types.account)

let rec decode_account_response d =
  let v = default_account_response_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.account <- Some (decode_account (Pbrt.Decoder.nested d));
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(account_response), field(1)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Flow_types.account = v.account;
  } : Flow_types.account_response)

let rec decode_get_account_at_latest_block_request d =
  let v = default_get_account_at_latest_block_request_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.address <- Pbrt.Decoder.bytes d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(get_account_at_latest_block_request), field(1)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Flow_types.address = v.address;
  } : Flow_types.get_account_at_latest_block_request)

let rec decode_get_account_at_block_height_request d =
  let v = default_get_account_at_block_height_request_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.address <- Pbrt.Decoder.bytes d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(get_account_at_block_height_request), field(1)" pk
    | Some (2, Pbrt.Varint) -> begin
      v.block_height <- Pbrt.Decoder.int64_as_varint d;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(get_account_at_block_height_request), field(2)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Flow_types.address = v.address;
    Flow_types.block_height = v.block_height;
  } : Flow_types.get_account_at_block_height_request)

let rec decode_execute_script_response d =
  let v = default_execute_script_response_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.value <- Pbrt.Decoder.bytes d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(execute_script_response), field(1)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Flow_types.value = v.value;
  } : Flow_types.execute_script_response)

let rec decode_execute_script_at_latest_block_request d =
  let v = default_execute_script_at_latest_block_request_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.arguments <- List.rev v.arguments;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.script <- Pbrt.Decoder.bytes d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(execute_script_at_latest_block_request), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.arguments <- (Pbrt.Decoder.bytes d) :: v.arguments;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(execute_script_at_latest_block_request), field(2)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Flow_types.script = v.script;
    Flow_types.arguments = v.arguments;
  } : Flow_types.execute_script_at_latest_block_request)

let rec decode_execute_script_at_block_id_request d =
  let v = default_execute_script_at_block_id_request_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.arguments <- List.rev v.arguments;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.block_id <- Pbrt.Decoder.bytes d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(execute_script_at_block_id_request), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.script <- Pbrt.Decoder.bytes d;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(execute_script_at_block_id_request), field(2)" pk
    | Some (3, Pbrt.Bytes) -> begin
      v.arguments <- (Pbrt.Decoder.bytes d) :: v.arguments;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(execute_script_at_block_id_request), field(3)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Flow_types.block_id = v.block_id;
    Flow_types.script = v.script;
    Flow_types.arguments = v.arguments;
  } : Flow_types.execute_script_at_block_id_request)

let rec decode_execute_script_at_block_height_request d =
  let v = default_execute_script_at_block_height_request_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.arguments <- List.rev v.arguments;
    ); continue__ := false
    | Some (1, Pbrt.Varint) -> begin
      v.block_height <- Pbrt.Decoder.int64_as_varint d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(execute_script_at_block_height_request), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.script <- Pbrt.Decoder.bytes d;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(execute_script_at_block_height_request), field(2)" pk
    | Some (3, Pbrt.Bytes) -> begin
      v.arguments <- (Pbrt.Decoder.bytes d) :: v.arguments;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(execute_script_at_block_height_request), field(3)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Flow_types.block_height = v.block_height;
    Flow_types.script = v.script;
    Flow_types.arguments = v.arguments;
  } : Flow_types.execute_script_at_block_height_request)

let rec decode_events_response_result d =
  let v = default_events_response_result_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.events <- List.rev v.events;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.block_id <- Pbrt.Decoder.bytes d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(events_response_result), field(1)" pk
    | Some (2, Pbrt.Varint) -> begin
      v.block_height <- Pbrt.Decoder.int64_as_varint d;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(events_response_result), field(2)" pk
    | Some (3, Pbrt.Bytes) -> begin
      v.events <- (decode_event (Pbrt.Decoder.nested d)) :: v.events;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(events_response_result), field(3)" pk
    | Some (4, Pbrt.Bytes) -> begin
      v.block_timestamp <- Some (decode_timestamp (Pbrt.Decoder.nested d));
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(events_response_result), field(4)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Flow_types.block_id = v.block_id;
    Flow_types.block_height = v.block_height;
    Flow_types.events = v.events;
    Flow_types.block_timestamp = v.block_timestamp;
  } : Flow_types.events_response_result)

let rec decode_events_response d =
  let v = default_events_response_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.results <- List.rev v.results;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.results <- (decode_events_response_result (Pbrt.Decoder.nested d)) :: v.results;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(events_response), field(1)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Flow_types.results = v.results;
  } : Flow_types.events_response)

let rec decode_get_events_for_height_range_request d =
  let v = default_get_events_for_height_range_request_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.type_ <- Pbrt.Decoder.string d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(get_events_for_height_range_request), field(1)" pk
    | Some (2, Pbrt.Varint) -> begin
      v.start_height <- Pbrt.Decoder.int64_as_varint d;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(get_events_for_height_range_request), field(2)" pk
    | Some (3, Pbrt.Varint) -> begin
      v.end_height <- Pbrt.Decoder.int64_as_varint d;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(get_events_for_height_range_request), field(3)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Flow_types.type_ = v.type_;
    Flow_types.start_height = v.start_height;
    Flow_types.end_height = v.end_height;
  } : Flow_types.get_events_for_height_range_request)

let rec decode_get_events_for_block_ids_request d =
  let v = default_get_events_for_block_ids_request_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.block_ids <- List.rev v.block_ids;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.type_ <- Pbrt.Decoder.string d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(get_events_for_block_ids_request), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.block_ids <- (Pbrt.Decoder.bytes d) :: v.block_ids;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(get_events_for_block_ids_request), field(2)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Flow_types.type_ = v.type_;
    Flow_types.block_ids = v.block_ids;
  } : Flow_types.get_events_for_block_ids_request)

let rec decode_get_network_parameters_response d =
  let v = default_get_network_parameters_response_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.chain_id <- Pbrt.Decoder.string d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(get_network_parameters_response), field(1)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Flow_types.chain_id = v.chain_id;
  } : Flow_types.get_network_parameters_response)

let rec decode_protocol_state_snapshot_response d =
  let v = default_protocol_state_snapshot_response_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.serialized_snapshot <- Pbrt.Decoder.bytes d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(protocol_state_snapshot_response), field(1)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Flow_types.serialized_snapshot = v.serialized_snapshot;
  } : Flow_types.protocol_state_snapshot_response)

let rec decode_chunk d =
  let v = default_chunk_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.start_state <- Pbrt.Decoder.bytes d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(chunk), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.event_collection <- Pbrt.Decoder.bytes d;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(chunk), field(2)" pk
    | Some (3, Pbrt.Bytes) -> begin
      v.block_id <- Pbrt.Decoder.bytes d;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(chunk), field(3)" pk
    | Some (4, Pbrt.Varint) -> begin
      v.total_computation_used <- Pbrt.Decoder.int64_as_varint d;
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(chunk), field(4)" pk
    | Some (5, Pbrt.Varint) -> begin
      v.number_of_transactions <- Pbrt.Decoder.int64_as_varint d;
    end
    | Some (5, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(chunk), field(5)" pk
    | Some (6, Pbrt.Varint) -> begin
      v.index <- Pbrt.Decoder.int64_as_varint d;
    end
    | Some (6, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(chunk), field(6)" pk
    | Some (7, Pbrt.Bytes) -> begin
      v.end_state <- Pbrt.Decoder.bytes d;
    end
    | Some (7, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(chunk), field(7)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Flow_types.start_state = v.start_state;
    Flow_types.event_collection = v.event_collection;
    Flow_types.block_id = v.block_id;
    Flow_types.total_computation_used = v.total_computation_used;
    Flow_types.number_of_transactions = v.number_of_transactions;
    Flow_types.index = v.index;
    Flow_types.end_state = v.end_state;
  } : Flow_types.chunk)

let rec decode_service_event d =
  let v = default_service_event_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.type_ <- Pbrt.Decoder.string d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(service_event), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.payload <- Pbrt.Decoder.bytes d;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(service_event), field(2)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Flow_types.type_ = v.type_;
    Flow_types.payload = v.payload;
  } : Flow_types.service_event)

let rec decode_execution_result d =
  let v = default_execution_result_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.service_events <- List.rev v.service_events;
      v.chunks <- List.rev v.chunks;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.previous_result_id <- Pbrt.Decoder.bytes d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(execution_result), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.block_id <- Pbrt.Decoder.bytes d;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(execution_result), field(2)" pk
    | Some (3, Pbrt.Bytes) -> begin
      v.chunks <- (decode_chunk (Pbrt.Decoder.nested d)) :: v.chunks;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(execution_result), field(3)" pk
    | Some (4, Pbrt.Bytes) -> begin
      v.service_events <- (decode_service_event (Pbrt.Decoder.nested d)) :: v.service_events;
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(execution_result), field(4)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Flow_types.previous_result_id = v.previous_result_id;
    Flow_types.block_id = v.block_id;
    Flow_types.chunks = v.chunks;
    Flow_types.service_events = v.service_events;
  } : Flow_types.execution_result)

let rec decode_execution_result_for_block_id_response d =
  let v = default_execution_result_for_block_id_response_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.execution_result <- Some (decode_execution_result (Pbrt.Decoder.nested d));
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(execution_result_for_block_id_response), field(1)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Flow_types.execution_result = v.execution_result;
  } : Flow_types.execution_result_for_block_id_response)

let rec decode_get_execution_result_for_block_id_request d =
  let v = default_get_execution_result_for_block_id_request_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.block_id <- Pbrt.Decoder.bytes d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(get_execution_result_for_block_id_request), field(1)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Flow_types.block_id = v.block_id;
  } : Flow_types.get_execution_result_for_block_id_request)

let rec encode_block_header (v:Flow_types.block_header) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.bytes v.Flow_types.id encoder;
  Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.bytes v.Flow_types.parent_id encoder;
  Pbrt.Encoder.key (3, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int64_as_varint v.Flow_types.height encoder;
  ()

let rec encode_block_header_response (v:Flow_types.block_header_response) encoder = 
  begin match v.Flow_types.block with
  | Some x -> 
    Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_block_header x) encoder;
  | None -> ();
  end;
  ()

let rec encode_get_latest_block_header_request (v:Flow_types.get_latest_block_header_request) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Flow_types.is_sealed encoder;
  ()

let rec encode_get_block_header_by_id_request (v:Flow_types.get_block_header_by_id_request) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.bytes v.Flow_types.id encoder;
  ()

let rec encode_get_block_header_by_height_request (v:Flow_types.get_block_header_by_height_request) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int64_as_varint v.Flow_types.height encoder;
  ()

let rec encode_timestamp (v:Flow_types.timestamp) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int64_as_varint v.Flow_types.seconds encoder;
  Pbrt.Encoder.key (2, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Flow_types.nanos encoder;
  ()

let rec encode_collection_guarantee (v:Flow_types.collection_guarantee) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.bytes v.Flow_types.collection_id encoder;
  List.iter (fun x -> 
    Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.bytes x encoder;
  ) v.Flow_types.signatures;
  ()

let rec encode_block_seal (v:Flow_types.block_seal) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.bytes v.Flow_types.block_id encoder;
  Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.bytes v.Flow_types.execution_receipt_id encoder;
  List.iter (fun x -> 
    Pbrt.Encoder.key (3, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.bytes x encoder;
  ) v.Flow_types.execution_receipt_signatures;
  List.iter (fun x -> 
    Pbrt.Encoder.key (4, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.bytes x encoder;
  ) v.Flow_types.result_approval_signatures;
  ()

let rec encode_block (v:Flow_types.block) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.bytes v.Flow_types.id encoder;
  Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.bytes v.Flow_types.parent_id encoder;
  Pbrt.Encoder.key (3, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int64_as_varint v.Flow_types.height encoder;
  begin match v.Flow_types.timestamp with
  | Some x -> 
    Pbrt.Encoder.key (4, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_timestamp x) encoder;
  | None -> ();
  end;
  List.iter (fun x -> 
    Pbrt.Encoder.key (5, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_collection_guarantee x) encoder;
  ) v.Flow_types.collection_guarantees;
  List.iter (fun x -> 
    Pbrt.Encoder.key (6, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_block_seal x) encoder;
  ) v.Flow_types.block_seals;
  List.iter (fun x -> 
    Pbrt.Encoder.key (7, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.bytes x encoder;
  ) v.Flow_types.signatures;
  ()

let rec encode_block_response (v:Flow_types.block_response) encoder = 
  begin match v.Flow_types.block with
  | Some x -> 
    Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_block x) encoder;
  | None -> ();
  end;
  ()

let rec encode_get_latest_block_request (v:Flow_types.get_latest_block_request) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Flow_types.is_sealed encoder;
  ()

let rec encode_get_block_by_id_request (v:Flow_types.get_block_by_id_request) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.bytes v.Flow_types.id encoder;
  ()

let rec encode_get_block_by_height_request (v:Flow_types.get_block_by_height_request) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int64_as_varint v.Flow_types.height encoder;
  ()

let rec encode_collection (v:Flow_types.collection) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.bytes v.Flow_types.id encoder;
  List.iter (fun x -> 
    Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.bytes x encoder;
  ) v.Flow_types.transaction_ids;
  ()

let rec encode_collection_response (v:Flow_types.collection_response) encoder = 
  begin match v.Flow_types.collection with
  | Some x -> 
    Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_collection x) encoder;
  | None -> ();
  end;
  ()

let rec encode_get_collection_by_id_request (v:Flow_types.get_collection_by_id_request) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.bytes v.Flow_types.id encoder;
  ()

let rec encode_send_transaction_response (v:Flow_types.send_transaction_response) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.bytes v.Flow_types.id encoder;
  ()

let rec encode_transaction_proposal_key (v:Flow_types.transaction_proposal_key) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.bytes v.Flow_types.address encoder;
  Pbrt.Encoder.key (2, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Flow_types.key_id encoder;
  Pbrt.Encoder.key (3, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int64_as_varint v.Flow_types.sequence_number encoder;
  ()

let rec encode_transaction_signature (v:Flow_types.transaction_signature) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.bytes v.Flow_types.address encoder;
  Pbrt.Encoder.key (2, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Flow_types.key_id encoder;
  Pbrt.Encoder.key (3, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.bytes v.Flow_types.signature encoder;
  ()

let rec encode_transaction (v:Flow_types.transaction) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.bytes v.Flow_types.script encoder;
  List.iter (fun x -> 
    Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.bytes x encoder;
  ) v.Flow_types.arguments;
  Pbrt.Encoder.key (3, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.bytes v.Flow_types.reference_block_id encoder;
  Pbrt.Encoder.key (4, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int64_as_varint v.Flow_types.gas_limit encoder;
  begin match v.Flow_types.proposal_key with
  | Some x -> 
    Pbrt.Encoder.key (5, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_transaction_proposal_key x) encoder;
  | None -> ();
  end;
  Pbrt.Encoder.key (6, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.bytes v.Flow_types.payer encoder;
  List.iter (fun x -> 
    Pbrt.Encoder.key (7, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.bytes x encoder;
  ) v.Flow_types.authorizers;
  List.iter (fun x -> 
    Pbrt.Encoder.key (8, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_transaction_signature x) encoder;
  ) v.Flow_types.payload_signatures;
  List.iter (fun x -> 
    Pbrt.Encoder.key (9, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_transaction_signature x) encoder;
  ) v.Flow_types.envelope_signatures;
  ()

let rec encode_send_transaction_request (v:Flow_types.send_transaction_request) encoder = 
  begin match v.Flow_types.transaction with
  | Some x -> 
    Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_transaction x) encoder;
  | None -> ();
  end;
  ()

let rec encode_get_transaction_request (v:Flow_types.get_transaction_request) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.bytes v.Flow_types.id encoder;
  ()

let rec encode_transaction_response (v:Flow_types.transaction_response) encoder = 
  begin match v.Flow_types.transaction with
  | Some x -> 
    Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_transaction x) encoder;
  | None -> ();
  end;
  ()

let rec encode_transaction_status (v:Flow_types.transaction_status) encoder =
  match v with
  | Flow_types.Unknown -> Pbrt.Encoder.int_as_varint (0) encoder
  | Flow_types.Pending -> Pbrt.Encoder.int_as_varint 1 encoder
  | Flow_types.Finalized -> Pbrt.Encoder.int_as_varint 2 encoder
  | Flow_types.Executed -> Pbrt.Encoder.int_as_varint 3 encoder
  | Flow_types.Sealed -> Pbrt.Encoder.int_as_varint 4 encoder
  | Flow_types.Expired -> Pbrt.Encoder.int_as_varint 5 encoder

let rec encode_event (v:Flow_types.event) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Flow_types.type_ encoder;
  Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.bytes v.Flow_types.transaction_id encoder;
  Pbrt.Encoder.key (3, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Flow_types.transaction_index encoder;
  Pbrt.Encoder.key (4, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Flow_types.event_index encoder;
  Pbrt.Encoder.key (5, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.bytes v.Flow_types.payload encoder;
  ()

let rec encode_transaction_result_response (v:Flow_types.transaction_result_response) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Varint) encoder; 
  encode_transaction_status v.Flow_types.status encoder;
  Pbrt.Encoder.key (2, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Flow_types.status_code encoder;
  Pbrt.Encoder.key (3, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Flow_types.error_message encoder;
  List.iter (fun x -> 
    Pbrt.Encoder.key (4, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_event x) encoder;
  ) v.Flow_types.events;
  ()

let rec encode_account_key (v:Flow_types.account_key) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Flow_types.id encoder;
  Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.bytes v.Flow_types.public_key encoder;
  Pbrt.Encoder.key (3, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Flow_types.sign_algo encoder;
  Pbrt.Encoder.key (4, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Flow_types.hash_algo encoder;
  Pbrt.Encoder.key (5, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Flow_types.weight encoder;
  Pbrt.Encoder.key (6, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Flow_types.sequence_number encoder;
  Pbrt.Encoder.key (7, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Flow_types.revoked encoder;
  ()

let rec encode_account (v:Flow_types.account) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.bytes v.Flow_types.address encoder;
  Pbrt.Encoder.key (2, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int64_as_varint v.Flow_types.balance encoder;
  Pbrt.Encoder.key (3, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.bytes v.Flow_types.code encoder;
  List.iter (fun x -> 
    Pbrt.Encoder.key (4, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_account_key x) encoder;
  ) v.Flow_types.keys;
  let encode_key = Pbrt.Encoder.string in
  let encode_value = (fun x encoder ->
    Pbrt.Encoder.bytes x encoder;
  ) in
  List.iter (fun (k, v) ->
    Pbrt.Encoder.key (5, Pbrt.Bytes) encoder; 
    let map_entry = (k, Pbrt.Bytes), (v, Pbrt.Bytes) in
    Pbrt.Encoder.map_entry ~encode_key ~encode_value map_entry encoder
  ) v.Flow_types.contracts;
  ()

let rec encode_account_response (v:Flow_types.account_response) encoder = 
  begin match v.Flow_types.account with
  | Some x -> 
    Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_account x) encoder;
  | None -> ();
  end;
  ()

let rec encode_get_account_at_latest_block_request (v:Flow_types.get_account_at_latest_block_request) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.bytes v.Flow_types.address encoder;
  ()

let rec encode_get_account_at_block_height_request (v:Flow_types.get_account_at_block_height_request) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.bytes v.Flow_types.address encoder;
  Pbrt.Encoder.key (2, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int64_as_varint v.Flow_types.block_height encoder;
  ()

let rec encode_execute_script_response (v:Flow_types.execute_script_response) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.bytes v.Flow_types.value encoder;
  ()

let rec encode_execute_script_at_latest_block_request (v:Flow_types.execute_script_at_latest_block_request) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.bytes v.Flow_types.script encoder;
  List.iter (fun x -> 
    Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.bytes x encoder;
  ) v.Flow_types.arguments;
  ()

let rec encode_execute_script_at_block_id_request (v:Flow_types.execute_script_at_block_id_request) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.bytes v.Flow_types.block_id encoder;
  Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.bytes v.Flow_types.script encoder;
  List.iter (fun x -> 
    Pbrt.Encoder.key (3, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.bytes x encoder;
  ) v.Flow_types.arguments;
  ()

let rec encode_execute_script_at_block_height_request (v:Flow_types.execute_script_at_block_height_request) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int64_as_varint v.Flow_types.block_height encoder;
  Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.bytes v.Flow_types.script encoder;
  List.iter (fun x -> 
    Pbrt.Encoder.key (3, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.bytes x encoder;
  ) v.Flow_types.arguments;
  ()

let rec encode_events_response_result (v:Flow_types.events_response_result) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.bytes v.Flow_types.block_id encoder;
  Pbrt.Encoder.key (2, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int64_as_varint v.Flow_types.block_height encoder;
  List.iter (fun x -> 
    Pbrt.Encoder.key (3, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_event x) encoder;
  ) v.Flow_types.events;
  begin match v.Flow_types.block_timestamp with
  | Some x -> 
    Pbrt.Encoder.key (4, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_timestamp x) encoder;
  | None -> ();
  end;
  ()

let rec encode_events_response (v:Flow_types.events_response) encoder = 
  List.iter (fun x -> 
    Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_events_response_result x) encoder;
  ) v.Flow_types.results;
  ()

let rec encode_get_events_for_height_range_request (v:Flow_types.get_events_for_height_range_request) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Flow_types.type_ encoder;
  Pbrt.Encoder.key (2, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int64_as_varint v.Flow_types.start_height encoder;
  Pbrt.Encoder.key (3, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int64_as_varint v.Flow_types.end_height encoder;
  ()

let rec encode_get_events_for_block_ids_request (v:Flow_types.get_events_for_block_ids_request) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Flow_types.type_ encoder;
  List.iter (fun x -> 
    Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.bytes x encoder;
  ) v.Flow_types.block_ids;
  ()

let rec encode_get_network_parameters_response (v:Flow_types.get_network_parameters_response) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Flow_types.chain_id encoder;
  ()

let rec encode_protocol_state_snapshot_response (v:Flow_types.protocol_state_snapshot_response) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.bytes v.Flow_types.serialized_snapshot encoder;
  ()

let rec encode_chunk (v:Flow_types.chunk) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.bytes v.Flow_types.start_state encoder;
  Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.bytes v.Flow_types.event_collection encoder;
  Pbrt.Encoder.key (3, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.bytes v.Flow_types.block_id encoder;
  Pbrt.Encoder.key (4, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int64_as_varint v.Flow_types.total_computation_used encoder;
  Pbrt.Encoder.key (5, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int64_as_varint v.Flow_types.number_of_transactions encoder;
  Pbrt.Encoder.key (6, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int64_as_varint v.Flow_types.index encoder;
  Pbrt.Encoder.key (7, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.bytes v.Flow_types.end_state encoder;
  ()

let rec encode_service_event (v:Flow_types.service_event) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Flow_types.type_ encoder;
  Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.bytes v.Flow_types.payload encoder;
  ()

let rec encode_execution_result (v:Flow_types.execution_result) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.bytes v.Flow_types.previous_result_id encoder;
  Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.bytes v.Flow_types.block_id encoder;
  List.iter (fun x -> 
    Pbrt.Encoder.key (3, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_chunk x) encoder;
  ) v.Flow_types.chunks;
  List.iter (fun x -> 
    Pbrt.Encoder.key (4, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_service_event x) encoder;
  ) v.Flow_types.service_events;
  ()

let rec encode_execution_result_for_block_id_response (v:Flow_types.execution_result_for_block_id_response) encoder = 
  begin match v.Flow_types.execution_result with
  | Some x -> 
    Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_execution_result x) encoder;
  | None -> ();
  end;
  ()

let rec encode_get_execution_result_for_block_id_request (v:Flow_types.get_execution_result_for_block_id_request) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.bytes v.Flow_types.block_id encoder;
  ()
