

module Network = struct 
let canary = "https://rest-canary.onflow.org/v1/"
let testnet = "https://rest-testnet.onflow.org/v1"
let mainnet = "https://rest-mainnet.onflow.org/v1"

type t = 
| Canary
| Testnet
| Mainnet
| Custom of string

let toString t =
  match t with
    | Canary ->  canary
    | Testnet -> testnet
    | Mainnet -> mainnet
    | Custom url -> url
  
end



module Blocks = struct
  let get_by_height = Blocks_api.blocks_get
  let get_by_id = Blocks_api.blocks_id_get
end

module Transactions = struct
  let get_by_id = Transactions_api.transactions_id_get
  let get_transaction_result_by_id = Transactions_api.transaction_results_transaction_id_get
  let send_transaction = Transactions_api.transactions_post
end

module Collections = struct
  let get_by_id = Collections_api.collections_id_get
end

module ExecutionResults = struct
  let get_by_block_id = Execution_results_api.execution_results_get
  let get_by_id = Execution_results_api.execution_results_id_get
end


module Accounts = struct
  let get_by_address = Accounts_api.accounts_address_get
end

module Scripts = struct
  let execute_script = Scripts_api.scripts_post
end

module Events = struct
  let get_events = Events_api.events_get
end