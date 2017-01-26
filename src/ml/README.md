
## OCaml

OCaml has a strong, static, nominal, and structural typing system. OCaml, however, does not directly coerce sub-classes so that you have to explicitly use the coercion operator:

```ocaml
let theDuck : duck = (thewolf :> duck);;
```
