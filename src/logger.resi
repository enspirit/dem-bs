let default_buffer: Buffer.t
let format_js_exn: Js.Exn.t => string
let format_exn: exn => string
let format_js_exn: Js_exn.t => string
let debug: (~buffer: Buffer.t=?, string) => unit
let info: (~buffer: Buffer.t=?, string) => unit
let warn: (~buffer: Buffer.t=?, string) => unit
let error: (~buffer: Buffer.t=?, string) => unit
let fatal: (~buffer: Buffer.t=?, string) => unit
let save: (~buffer: Buffer.t=?, ~filename: string=?, unit) => unit
let print_stderr: (~buffer: Buffer.t=?, unit) => unit
