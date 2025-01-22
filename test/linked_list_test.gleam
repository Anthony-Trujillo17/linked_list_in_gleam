import gleeunit
import gleeunit/should
import linked_list.{El, Ls}

pub fn main() {
  gleeunit.main()
}

pub fn hello_world_test() {
  1
  |> should.equal(1)
}

pub fn append_test() {
  let single_element_list = linked_list.wrap(1)
  single_element_list
  |> linked_list.append(2)
  |> should.equal(Ls(1, Ls(2, El)))
}

pub fn prepend_test() {
  let list = Ls(2, Ls(3, El))
  list
  |> linked_list.prepend(1)
  |> should.equal(Ls(1, Ls(2, Ls(3, El))))
}

pub fn pop_test() {
  let single_element_list = linked_list.wrap(42)
  single_element_list
  |> linked_list.pop
  |> should.equal(El)

  let multi_element_list = Ls(1, Ls(2, Ls(3, El)))
  multi_element_list
  |> linked_list.pop
  |> should.equal(Ls(2, Ls(3, El)))
}

pub fn reverse_test() {
  Ls(1, Ls(2, Ls(3, El)))
  |> linked_list.reverse
  |> should.equal(Ls(3, Ls(2, Ls(1, El))))
}

pub fn map_test() {
  let single_element_list = linked_list.wrap(1)
  let multiple_elements_list = Ls(1, Ls(2, Ls(3, El)))

  single_element_list
  |> linked_list.map(fn(x) { x * 2 })
  |> should.equal(Ls(2, El))

  multiple_elements_list
  |> linked_list.map(fn(x) { x * 10 })
  |> should.equal(Ls(10, Ls(20, Ls(30, El))))
}
