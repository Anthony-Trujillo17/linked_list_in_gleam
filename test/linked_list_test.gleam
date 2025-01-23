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

const single_element_list = Ls(1, El)

const multi_elements_list = Ls(1, Ls(2, Ls(3, El)))

pub fn append_test() {
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
  single_element_list
  |> linked_list.pop
  |> should.equal(El)

  multi_elements_list
  |> linked_list.pop
  |> should.equal(Ls(2, Ls(3, El)))
}

pub fn pop_n_test() {
  multi_elements_list
  |> linked_list.pop_n(2)
  |> should.equal(Ls(3, El))

  multi_elements_list
  |> linked_list.pop_n(-2)
  |> should.equal(Ls(1, El))

  multi_elements_list
  |> linked_list.pop_n(10)
  |> should.equal(El)

  multi_elements_list
  |> linked_list.pop_n(-10)
  |> should.equal(El)
}

pub fn reverse_test() {
  multi_elements_list
  |> linked_list.reverse
  |> should.equal(Ls(3, Ls(2, Ls(1, El))))
}

pub fn map_test() {
  single_element_list
  |> linked_list.map(fn(x) { x * 2 })
  |> should.equal(Ls(2, El))

  multi_elements_list
  |> linked_list.map(fn(x) { x * 10 })
  |> should.equal(Ls(10, Ls(20, Ls(30, El))))
}
