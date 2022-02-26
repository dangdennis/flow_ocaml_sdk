(** flow.proto Binary Encoding *)


(** {2 Protobuf Encoding} *)

val encode_block_header : Flow_types.block_header -> Pbrt.Encoder.t -> unit
(** [encode_block_header v encoder] encodes [v] with the given [encoder] *)

val encode_block_header_response : Flow_types.block_header_response -> Pbrt.Encoder.t -> unit
(** [encode_block_header_response v encoder] encodes [v] with the given [encoder] *)

val encode_get_latest_block_header_request : Flow_types.get_latest_block_header_request -> Pbrt.Encoder.t -> unit
(** [encode_get_latest_block_header_request v encoder] encodes [v] with the given [encoder] *)

val encode_get_block_header_by_id_request : Flow_types.get_block_header_by_id_request -> Pbrt.Encoder.t -> unit
(** [encode_get_block_header_by_id_request v encoder] encodes [v] with the given [encoder] *)

val encode_get_block_header_by_height_request : Flow_types.get_block_header_by_height_request -> Pbrt.Encoder.t -> unit
(** [encode_get_block_header_by_height_request v encoder] encodes [v] with the given [encoder] *)

val encode_timestamp : Flow_types.timestamp -> Pbrt.Encoder.t -> unit
(** [encode_timestamp v encoder] encodes [v] with the given [encoder] *)

val encode_collection_guarantee : Flow_types.collection_guarantee -> Pbrt.Encoder.t -> unit
(** [encode_collection_guarantee v encoder] encodes [v] with the given [encoder] *)

val encode_block_seal : Flow_types.block_seal -> Pbrt.Encoder.t -> unit
(** [encode_block_seal v encoder] encodes [v] with the given [encoder] *)

val encode_block : Flow_types.block -> Pbrt.Encoder.t -> unit
(** [encode_block v encoder] encodes [v] with the given [encoder] *)

val encode_block_response : Flow_types.block_response -> Pbrt.Encoder.t -> unit
(** [encode_block_response v encoder] encodes [v] with the given [encoder] *)

val encode_get_latest_block_request : Flow_types.get_latest_block_request -> Pbrt.Encoder.t -> unit
(** [encode_get_latest_block_request v encoder] encodes [v] with the given [encoder] *)

val encode_get_block_by_id_request : Flow_types.get_block_by_id_request -> Pbrt.Encoder.t -> unit
(** [encode_get_block_by_id_request v encoder] encodes [v] with the given [encoder] *)

val encode_get_block_by_height_request : Flow_types.get_block_by_height_request -> Pbrt.Encoder.t -> unit
(** [encode_get_block_by_height_request v encoder] encodes [v] with the given [encoder] *)

val encode_collection : Flow_types.collection -> Pbrt.Encoder.t -> unit
(** [encode_collection v encoder] encodes [v] with the given [encoder] *)

val encode_collection_response : Flow_types.collection_response -> Pbrt.Encoder.t -> unit
(** [encode_collection_response v encoder] encodes [v] with the given [encoder] *)

val encode_get_collection_by_id_request : Flow_types.get_collection_by_id_request -> Pbrt.Encoder.t -> unit
(** [encode_get_collection_by_id_request v encoder] encodes [v] with the given [encoder] *)

val encode_send_transaction_response : Flow_types.send_transaction_response -> Pbrt.Encoder.t -> unit
(** [encode_send_transaction_response v encoder] encodes [v] with the given [encoder] *)

val encode_transaction_proposal_key : Flow_types.transaction_proposal_key -> Pbrt.Encoder.t -> unit
(** [encode_transaction_proposal_key v encoder] encodes [v] with the given [encoder] *)

val encode_transaction_signature : Flow_types.transaction_signature -> Pbrt.Encoder.t -> unit
(** [encode_transaction_signature v encoder] encodes [v] with the given [encoder] *)

val encode_transaction : Flow_types.transaction -> Pbrt.Encoder.t -> unit
(** [encode_transaction v encoder] encodes [v] with the given [encoder] *)

val encode_send_transaction_request : Flow_types.send_transaction_request -> Pbrt.Encoder.t -> unit
(** [encode_send_transaction_request v encoder] encodes [v] with the given [encoder] *)

val encode_get_transaction_request : Flow_types.get_transaction_request -> Pbrt.Encoder.t -> unit
(** [encode_get_transaction_request v encoder] encodes [v] with the given [encoder] *)

val encode_transaction_response : Flow_types.transaction_response -> Pbrt.Encoder.t -> unit
(** [encode_transaction_response v encoder] encodes [v] with the given [encoder] *)

val encode_transaction_status : Flow_types.transaction_status -> Pbrt.Encoder.t -> unit
(** [encode_transaction_status v encoder] encodes [v] with the given [encoder] *)

val encode_event : Flow_types.event -> Pbrt.Encoder.t -> unit
(** [encode_event v encoder] encodes [v] with the given [encoder] *)

val encode_transaction_result_response : Flow_types.transaction_result_response -> Pbrt.Encoder.t -> unit
(** [encode_transaction_result_response v encoder] encodes [v] with the given [encoder] *)

val encode_account_key : Flow_types.account_key -> Pbrt.Encoder.t -> unit
(** [encode_account_key v encoder] encodes [v] with the given [encoder] *)

val encode_account : Flow_types.account -> Pbrt.Encoder.t -> unit
(** [encode_account v encoder] encodes [v] with the given [encoder] *)

val encode_account_response : Flow_types.account_response -> Pbrt.Encoder.t -> unit
(** [encode_account_response v encoder] encodes [v] with the given [encoder] *)

val encode_get_account_at_latest_block_request : Flow_types.get_account_at_latest_block_request -> Pbrt.Encoder.t -> unit
(** [encode_get_account_at_latest_block_request v encoder] encodes [v] with the given [encoder] *)

val encode_get_account_at_block_height_request : Flow_types.get_account_at_block_height_request -> Pbrt.Encoder.t -> unit
(** [encode_get_account_at_block_height_request v encoder] encodes [v] with the given [encoder] *)

val encode_execute_script_response : Flow_types.execute_script_response -> Pbrt.Encoder.t -> unit
(** [encode_execute_script_response v encoder] encodes [v] with the given [encoder] *)

val encode_execute_script_at_latest_block_request : Flow_types.execute_script_at_latest_block_request -> Pbrt.Encoder.t -> unit
(** [encode_execute_script_at_latest_block_request v encoder] encodes [v] with the given [encoder] *)

val encode_execute_script_at_block_id_request : Flow_types.execute_script_at_block_id_request -> Pbrt.Encoder.t -> unit
(** [encode_execute_script_at_block_id_request v encoder] encodes [v] with the given [encoder] *)

val encode_execute_script_at_block_height_request : Flow_types.execute_script_at_block_height_request -> Pbrt.Encoder.t -> unit
(** [encode_execute_script_at_block_height_request v encoder] encodes [v] with the given [encoder] *)

val encode_events_response_result : Flow_types.events_response_result -> Pbrt.Encoder.t -> unit
(** [encode_events_response_result v encoder] encodes [v] with the given [encoder] *)

val encode_events_response : Flow_types.events_response -> Pbrt.Encoder.t -> unit
(** [encode_events_response v encoder] encodes [v] with the given [encoder] *)

val encode_get_events_for_height_range_request : Flow_types.get_events_for_height_range_request -> Pbrt.Encoder.t -> unit
(** [encode_get_events_for_height_range_request v encoder] encodes [v] with the given [encoder] *)

val encode_get_events_for_block_ids_request : Flow_types.get_events_for_block_ids_request -> Pbrt.Encoder.t -> unit
(** [encode_get_events_for_block_ids_request v encoder] encodes [v] with the given [encoder] *)

val encode_get_network_parameters_response : Flow_types.get_network_parameters_response -> Pbrt.Encoder.t -> unit
(** [encode_get_network_parameters_response v encoder] encodes [v] with the given [encoder] *)

val encode_protocol_state_snapshot_response : Flow_types.protocol_state_snapshot_response -> Pbrt.Encoder.t -> unit
(** [encode_protocol_state_snapshot_response v encoder] encodes [v] with the given [encoder] *)

val encode_chunk : Flow_types.chunk -> Pbrt.Encoder.t -> unit
(** [encode_chunk v encoder] encodes [v] with the given [encoder] *)

val encode_service_event : Flow_types.service_event -> Pbrt.Encoder.t -> unit
(** [encode_service_event v encoder] encodes [v] with the given [encoder] *)

val encode_execution_result : Flow_types.execution_result -> Pbrt.Encoder.t -> unit
(** [encode_execution_result v encoder] encodes [v] with the given [encoder] *)

val encode_execution_result_for_block_id_response : Flow_types.execution_result_for_block_id_response -> Pbrt.Encoder.t -> unit
(** [encode_execution_result_for_block_id_response v encoder] encodes [v] with the given [encoder] *)

val encode_get_execution_result_for_block_id_request : Flow_types.get_execution_result_for_block_id_request -> Pbrt.Encoder.t -> unit
(** [encode_get_execution_result_for_block_id_request v encoder] encodes [v] with the given [encoder] *)


(** {2 Protobuf Decoding} *)

val decode_block_header : Pbrt.Decoder.t -> Flow_types.block_header
(** [decode_block_header decoder] decodes a [block_header] value from [decoder] *)

val decode_block_header_response : Pbrt.Decoder.t -> Flow_types.block_header_response
(** [decode_block_header_response decoder] decodes a [block_header_response] value from [decoder] *)

val decode_get_latest_block_header_request : Pbrt.Decoder.t -> Flow_types.get_latest_block_header_request
(** [decode_get_latest_block_header_request decoder] decodes a [get_latest_block_header_request] value from [decoder] *)

val decode_get_block_header_by_id_request : Pbrt.Decoder.t -> Flow_types.get_block_header_by_id_request
(** [decode_get_block_header_by_id_request decoder] decodes a [get_block_header_by_id_request] value from [decoder] *)

val decode_get_block_header_by_height_request : Pbrt.Decoder.t -> Flow_types.get_block_header_by_height_request
(** [decode_get_block_header_by_height_request decoder] decodes a [get_block_header_by_height_request] value from [decoder] *)

val decode_timestamp : Pbrt.Decoder.t -> Flow_types.timestamp
(** [decode_timestamp decoder] decodes a [timestamp] value from [decoder] *)

val decode_collection_guarantee : Pbrt.Decoder.t -> Flow_types.collection_guarantee
(** [decode_collection_guarantee decoder] decodes a [collection_guarantee] value from [decoder] *)

val decode_block_seal : Pbrt.Decoder.t -> Flow_types.block_seal
(** [decode_block_seal decoder] decodes a [block_seal] value from [decoder] *)

val decode_block : Pbrt.Decoder.t -> Flow_types.block
(** [decode_block decoder] decodes a [block] value from [decoder] *)

val decode_block_response : Pbrt.Decoder.t -> Flow_types.block_response
(** [decode_block_response decoder] decodes a [block_response] value from [decoder] *)

val decode_get_latest_block_request : Pbrt.Decoder.t -> Flow_types.get_latest_block_request
(** [decode_get_latest_block_request decoder] decodes a [get_latest_block_request] value from [decoder] *)

val decode_get_block_by_id_request : Pbrt.Decoder.t -> Flow_types.get_block_by_id_request
(** [decode_get_block_by_id_request decoder] decodes a [get_block_by_id_request] value from [decoder] *)

val decode_get_block_by_height_request : Pbrt.Decoder.t -> Flow_types.get_block_by_height_request
(** [decode_get_block_by_height_request decoder] decodes a [get_block_by_height_request] value from [decoder] *)

val decode_collection : Pbrt.Decoder.t -> Flow_types.collection
(** [decode_collection decoder] decodes a [collection] value from [decoder] *)

val decode_collection_response : Pbrt.Decoder.t -> Flow_types.collection_response
(** [decode_collection_response decoder] decodes a [collection_response] value from [decoder] *)

val decode_get_collection_by_id_request : Pbrt.Decoder.t -> Flow_types.get_collection_by_id_request
(** [decode_get_collection_by_id_request decoder] decodes a [get_collection_by_id_request] value from [decoder] *)

val decode_send_transaction_response : Pbrt.Decoder.t -> Flow_types.send_transaction_response
(** [decode_send_transaction_response decoder] decodes a [send_transaction_response] value from [decoder] *)

val decode_transaction_proposal_key : Pbrt.Decoder.t -> Flow_types.transaction_proposal_key
(** [decode_transaction_proposal_key decoder] decodes a [transaction_proposal_key] value from [decoder] *)

val decode_transaction_signature : Pbrt.Decoder.t -> Flow_types.transaction_signature
(** [decode_transaction_signature decoder] decodes a [transaction_signature] value from [decoder] *)

val decode_transaction : Pbrt.Decoder.t -> Flow_types.transaction
(** [decode_transaction decoder] decodes a [transaction] value from [decoder] *)

val decode_send_transaction_request : Pbrt.Decoder.t -> Flow_types.send_transaction_request
(** [decode_send_transaction_request decoder] decodes a [send_transaction_request] value from [decoder] *)

val decode_get_transaction_request : Pbrt.Decoder.t -> Flow_types.get_transaction_request
(** [decode_get_transaction_request decoder] decodes a [get_transaction_request] value from [decoder] *)

val decode_transaction_response : Pbrt.Decoder.t -> Flow_types.transaction_response
(** [decode_transaction_response decoder] decodes a [transaction_response] value from [decoder] *)

val decode_transaction_status : Pbrt.Decoder.t -> Flow_types.transaction_status
(** [decode_transaction_status decoder] decodes a [transaction_status] value from [decoder] *)

val decode_event : Pbrt.Decoder.t -> Flow_types.event
(** [decode_event decoder] decodes a [event] value from [decoder] *)

val decode_transaction_result_response : Pbrt.Decoder.t -> Flow_types.transaction_result_response
(** [decode_transaction_result_response decoder] decodes a [transaction_result_response] value from [decoder] *)

val decode_account_key : Pbrt.Decoder.t -> Flow_types.account_key
(** [decode_account_key decoder] decodes a [account_key] value from [decoder] *)

val decode_account : Pbrt.Decoder.t -> Flow_types.account
(** [decode_account decoder] decodes a [account] value from [decoder] *)

val decode_account_response : Pbrt.Decoder.t -> Flow_types.account_response
(** [decode_account_response decoder] decodes a [account_response] value from [decoder] *)

val decode_get_account_at_latest_block_request : Pbrt.Decoder.t -> Flow_types.get_account_at_latest_block_request
(** [decode_get_account_at_latest_block_request decoder] decodes a [get_account_at_latest_block_request] value from [decoder] *)

val decode_get_account_at_block_height_request : Pbrt.Decoder.t -> Flow_types.get_account_at_block_height_request
(** [decode_get_account_at_block_height_request decoder] decodes a [get_account_at_block_height_request] value from [decoder] *)

val decode_execute_script_response : Pbrt.Decoder.t -> Flow_types.execute_script_response
(** [decode_execute_script_response decoder] decodes a [execute_script_response] value from [decoder] *)

val decode_execute_script_at_latest_block_request : Pbrt.Decoder.t -> Flow_types.execute_script_at_latest_block_request
(** [decode_execute_script_at_latest_block_request decoder] decodes a [execute_script_at_latest_block_request] value from [decoder] *)

val decode_execute_script_at_block_id_request : Pbrt.Decoder.t -> Flow_types.execute_script_at_block_id_request
(** [decode_execute_script_at_block_id_request decoder] decodes a [execute_script_at_block_id_request] value from [decoder] *)

val decode_execute_script_at_block_height_request : Pbrt.Decoder.t -> Flow_types.execute_script_at_block_height_request
(** [decode_execute_script_at_block_height_request decoder] decodes a [execute_script_at_block_height_request] value from [decoder] *)

val decode_events_response_result : Pbrt.Decoder.t -> Flow_types.events_response_result
(** [decode_events_response_result decoder] decodes a [events_response_result] value from [decoder] *)

val decode_events_response : Pbrt.Decoder.t -> Flow_types.events_response
(** [decode_events_response decoder] decodes a [events_response] value from [decoder] *)

val decode_get_events_for_height_range_request : Pbrt.Decoder.t -> Flow_types.get_events_for_height_range_request
(** [decode_get_events_for_height_range_request decoder] decodes a [get_events_for_height_range_request] value from [decoder] *)

val decode_get_events_for_block_ids_request : Pbrt.Decoder.t -> Flow_types.get_events_for_block_ids_request
(** [decode_get_events_for_block_ids_request decoder] decodes a [get_events_for_block_ids_request] value from [decoder] *)

val decode_get_network_parameters_response : Pbrt.Decoder.t -> Flow_types.get_network_parameters_response
(** [decode_get_network_parameters_response decoder] decodes a [get_network_parameters_response] value from [decoder] *)

val decode_protocol_state_snapshot_response : Pbrt.Decoder.t -> Flow_types.protocol_state_snapshot_response
(** [decode_protocol_state_snapshot_response decoder] decodes a [protocol_state_snapshot_response] value from [decoder] *)

val decode_chunk : Pbrt.Decoder.t -> Flow_types.chunk
(** [decode_chunk decoder] decodes a [chunk] value from [decoder] *)

val decode_service_event : Pbrt.Decoder.t -> Flow_types.service_event
(** [decode_service_event decoder] decodes a [service_event] value from [decoder] *)

val decode_execution_result : Pbrt.Decoder.t -> Flow_types.execution_result
(** [decode_execution_result decoder] decodes a [execution_result] value from [decoder] *)

val decode_execution_result_for_block_id_response : Pbrt.Decoder.t -> Flow_types.execution_result_for_block_id_response
(** [decode_execution_result_for_block_id_response decoder] decodes a [execution_result_for_block_id_response] value from [decoder] *)

val decode_get_execution_result_for_block_id_request : Pbrt.Decoder.t -> Flow_types.get_execution_result_for_block_id_request
(** [decode_get_execution_result_for_block_id_request decoder] decodes a [get_execution_result_for_block_id_request] value from [decoder] *)
