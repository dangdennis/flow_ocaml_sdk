let testnet = "https://rest-testnet.onflow.org/v1"
let mainnet = "https://rest-mainnet.onflow.org/v1"
let emulator = "http://localhost:8888"

type t = 
| Testnet
| Mainnet
| Emulator 
| Custom of string

let toString t =
  match t with
    | Testnet -> testnet
    | Mainnet -> mainnet
    | Emulator -> emulator
    | Custom url -> url
  