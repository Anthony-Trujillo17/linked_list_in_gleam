import gleam/bool
import gleam/io

pub fn main() {
  io.println("Hello from linked_list!")
}

pub type Ls(a) {
  El
  Ls(value: a, next: Ls(a))
}

/// returns a new emplty Ls
///
pub fn new() -> Ls(a) {
  El
}

/// returns a new Ls(a) with a single 'a' elem
///
pub fn wrap(x: a) -> Ls(a) {
  Ls(x, El)
}

/// returns True if Ls(a) is empty (or else, returns False)
///
pub fn is_empty(ls: Ls(a)) -> Bool {
  // case ls {
  //   El -> True
  //   Ls(_, _) -> False
  // }
  // case ls {
  //   El -> True
  //   _ -> False
  // }
  use <- bool.guard(ls == El, True)
  False
}

/// appends a new element at the end of the list
///
pub fn append(ls: Ls(a), x: a) -> Ls(a) {
  case ls {
    El -> wrap(x)
    Ls(value, next) -> Ls(value, append(next, x))
  }
}

/// prepends a new element at the beginning of the list
///
pub fn prepend(ls: Ls(a), x: a) -> Ls(a) {
  Ls(x, ls)
}

/// pops (removes) the first element of the list
///
pub fn pop(ls: Ls(a)) -> Ls(a) {
  case ls {
    El -> El
    Ls(_, next) -> next
  }
}

/// pops the N first elements of the list
/// if n < 0, it should remove the N last elements of the list
///
pub fn pop_n(ls: Ls(a), n: Int) -> Ls(a) {
  todo
}

/// fully reverses a Ls
///
pub fn reverse(ls: Ls(a)) -> Ls(a) {
  tail_reverse(ls, El)
}

fn tail_reverse(ls: Ls(a), res: Ls(a)) -> Ls(a) {
  case ls {
    El -> res
    Ls(value, next) -> tail_reverse(next, Ls(value, res))
  }
}

/// applies a 'fn(a) -> b' closure, to update each element of an Ls(a)
/// transforming the Ls(a) into an Ls(b)
///
pub fn map(ls: Ls(a), f: fn(a) -> b) -> Ls(b) {
  tail_map(ls, El, f) |> reverse
}

fn tail_map(ls: Ls(a), res: Ls(b), f: fn(a) -> b) -> Ls(b) {
  case ls {
    El -> res
    Ls(value, next) -> tail_map(next, Ls(f(value), res), f)
  }
}

/// applies a 'fn(a) -> b' closure, on each element of an Ls(a)
/// ignoring each result of this function (fire and forget)
/// the 'each' function returns Nil eventually
///
pub fn each(ls: Ls(a), f: fn(a) -> b) -> Nil {
  todo
}

/// BONI: when live checking the previous functions
//

/// returns the nth element of an Ls(a)
/// you should decide of the best return type for this function
///
// pub fn get(ls: Ls(a), index n: Int) -> ???{}

/// returns concatenated lists l1 ++ l2
///
pub fn concat(l1: Ls(a), l2: Ls(a)) -> Ls(a) {
  todo
}
