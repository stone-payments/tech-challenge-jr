#String
    length: String.length("The quick brown fox jumps over the lazy dog")
    interpolation: "Hello #{name}"
    concatenation: "Hello " <> "World"
#Division
    integer: div(10, 4) = 2
    remainder: rem(10, 3) = 1
#Triple equal comparison
    2 === 2.0 = false
#List (lists in Elixir are linked lists)
    sintax: [3.14, :pie, "Apple"]
    adding item: list = [31]++list
        *list ++ [31] is slower because accessing list length is an O(n) operation
    removing item: list = [1,2,2,3,2,3] -- [1,2,3,2] = [2, 3]
        *it removes from left each element on right
    head: hd list
    tail: tl list
    splitting into head and tail: [x,y] = list
#Tuples
    sintax: {3.14, :pie, "Apple"}
        *it is faster to access length but expensive to modify
#Keyword list
    sintax: list = [foo: "bar", hello: "world"]
    sintax: list = [{:foo, "bar"}, {:hello, "world"}]
#Maps
    sintax: map = %{:foo => "bar", "hello" => :world}
        *adding duplicated item, replaces the first item
    access: map["hello"]
    sintax for only atom keys: map = %{foo: "bar", hello: "world"}
        *special access: map.foo
    update: map = %{map | foo: "baz"}
#Enum
    All the collections but tuples, are enumerables
    all?/2: true if all itens meet a condition
        *Ex for a list: Enum.all?(["foo", "bar", "hello"], fn(s) -> String.length(s) == 3 end)
    any?/2: true if at least one item meet a condition
        *Ex for a map: Enum.any?(list, fn {key,val} -> String.length(val)>3 end)
    chunk_every/2: chunk the collection int group with length of second argument
    each/2: iterates without producing new values
    map/2: apply a function to each item producing a new collection
    min/1: finds the minimal value in the collection
    min/2: a function produce a minimum value in case of collection be empty
    max/1: returns the maximal value in the collection
    max/2: a function produce a maximum value in case of collection be empty
    reduce/3: reduce the colletion to a sigle value
        *Ex: Enum.reduce([1, 2, 3], 10, fn(x, acc) -> x + acc end) = 16
    sort/1: sort the collection
    sort/2: sort based on a function
        *Ex: Enum.sort([%{:val => 4}, %{:val => 1}], fn(x, y) -> x[:val] > y[:val] end)
    uniq_by/2: remove duplicates
    