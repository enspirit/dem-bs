let ensure_array: Js.Json.t => list<Js.Json.t>
let jsonToObj: Js.Json.t => {..}
let objToJson: {..} => Js.Json.t
let objToJsonList: {..} => list<Js.Json.t>
let node_require: string => {..}
let node_require_promise: string => Js.Promise.t<{..}>
let or_else: (option<'a>, 'a) => 'a
let has_key: (Js.Dict.t<'a>, Js.Dict.key) => bool
let promise: 'a => Js.Promise.t<'a>
let then_resolve: ('a => 'b, Js.Promise.t<'a>) => Js.Promise.t<'b>
let ignore_promise: (unit => Js.Promise.t<'a>, unit) => unit
