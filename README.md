# Flow OCaml SDK 🚧 WIP

This OCaml package is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: 1.0.0
- Package version: 1.0.0
- Build package: org.openapitools.codegen.languages.OCamlClientCodegen

## Requirements.

OCaml 4.x

## Installation

Please run the following commands to build the package `openapi`:

```sh
opam install ppx_deriving_yojson cohttp ppx_deriving cohttp-lwt-unix pin ocaml-migrate-parsetree 1.3.1
eval $(opam env)
dune build
```

## Getting Started

I had to manually patch Block_height.t because the generator creates an empty record, an illegal declaration in OCaml.
Because I forced Block_height.t to be a no-op int, necessary places where block_height is used as a string or string list had to be forced to just a single string. I hope to fix this.
