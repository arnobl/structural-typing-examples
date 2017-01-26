
## OCaml

OCaml has a strong, static, nominal, and structural typing system. OCaml, however, does not directly coerce sub-classes so that you have to explicitly use the coercion operator that will check whether `wolf` can be considered as a `duck`:

```ocaml
let theDuck : duck = (thewolf :> duck);;
```
