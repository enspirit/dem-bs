let format_js_exn: Js.Exn.t => string;
let format_exn: exn => string;
let format_caml_js_exn: Caml_js_exceptions.t => string;
let debug: (~buffer: Buffer.t=?, string) => unit;
let info: (~buffer: Buffer.t=?, string) => unit;
let warn: (~buffer: Buffer.t=?, string) => unit;
let error: (~buffer: Buffer.t=?, string) => unit;
let fatal: (~buffer: Buffer.t=?, string) => unit;
let save: (~buffer: Buffer.t=?, ~filename: string=?, unit) => unit;
