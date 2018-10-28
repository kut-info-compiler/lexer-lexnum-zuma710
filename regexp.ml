type rexpair = {r: regexp; s: regexp}
 and regexp =
  | Epsilon
  | Symbol of string (* 1文字の文字列 *)
  | Union of rexpair
  | Concat of rexpair
  | Star of regexp

let r_epsilon = Epsilon
let r_ab = Concat {r = Symbol "a"; s = Symbol "b" }
let r_abc = Concat {r = r_ab; s = Symbol "c"}
let r_astar = Star (Symbol "a")
let r_abc_astar = Union {r = r_abc; s = r_astar}

fe
