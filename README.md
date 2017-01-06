# Development setup

  1. Install docker
  2. Run file `start_docker.sh`. It's included ghc, ghci, stack, cabal, ...


# Source code index

Save example that we are done. You can search by Table Index.

## Examples

### Core feature

 - [Hello world](src/examples/hello_world.hs)
 - [Simple Math](src/examples/simple_mathermatics.hs)
 - [Boolean](src/examples/boolean.hs)
 - [Function calling](src/examples/function_calling.hs)
 - [Function define](src/examples/function_define.hs)
 - [List](src/examples/list.hs)
 - [List Comprehension](src/examples/list_comprehension.hs)
 - [Tuple](src/examples/tuple.hs)
 - [Matching Pattern](src/examples/matching_pattern.hs)
 - [Guard](src/examples/guard.hs)
 - [Let](src/examples/let.hs)
 - [Recursive](src/examples/recursive.hs)
 - [Curried Function](src/examples/curried_function.hs)
 - [Lambdas](src/examples/lambdas.hs)
 - [Fold](src/examples/fold.hs)
 - [Function Application](src/examples/function_application.hs)
 - [Import](src/examples/import.hs)
 - [Maybe](src/examples/maybe.hs)
 - [Define Data Type](src/examples/define_data_type.hs)
 - [Derived Instance](src/examples/derived_instance.hs)
 - [Type Synonym](src/examples/type_synonym.hs)
 - [Either](src/examples/either.hs)
 - [Recursive data type](src/examples/recursive_data_type.hs)
 - [New instance of type class](src/examples/instance_of_type_class.hs)
 - [Functor](src/examples/functor.hs)
 - [I/O](src/examples/io.hs)
 - [Stream](src/examples/stream.hs)
 - [Read file](src/examples/read_file.hs)
 - [Argument](src/examples/argument.hs)
 - [Random](src/examples/random.hs)
 - [Bytestrings](src/examples/bytestring.hs)
 - [Applicative functor](src/examples/applicative_functor.hs)
 - [Zip list](src/examples/zip_list.hs)
 - [Monad](src/examples/monad.hs)

### Library

 - [Data.Char](src/examples/libraries/Data.Char.hs)
 - [Data.Map](src/examples/libraries/Data.Map.hs)
 - [Data.List](src/examples/libraries/Data.List.hs)

### Others

 - [Data.Char](src/examples/others/intToArrayInt.hs)

## Re-implement

### Prelude

 - [And](src/pre-implement/prelude/and.hs)
 - [Elem](src/pre-implement/prelude/elem.hs)
 - [Filter](src/pre-implement/prelude/filter.hs)
 - [Flip](src/pre-implement/prelude/flip.hs)
 - [Map](src/pre-implement/prelude/map.hs)
 - [Product](src/pre-implement/prelude/product.hs)
 - [Replicate](src/pre-implement/prelude/replicate.hs)
 - [Reverse](src/pre-implement/prelude/reverse.hs)
 - [Repeat](src/pre-implement/prelude/repeat.hs)
 - [Take](src/pre-implement/prelude/take.hs)
 - [Zip](src/pre-implement/prelude/zip.hs)
 - [ZipWith](src/pre-implement/prelude/zipWith.hs)

### Encoding
  
 - [Caesar](src/pre-implement/encoding/caesar.hs)

### Sort
  
 - [Quick Sort](src/pre-implement/sorts/quick_sort.hs)

## Play a game

### 99 Questions

Based on [Ninety-Nine Haskell Problems](https://wiki.haskell.org/H-99:_Ninety-Nine_Haskell_Problems) with 11 parts from haskell.org

#### Part 1: Lists

 - [Problem 1: Find the last element of a list](src/99-questions/problem-01.hs)
 - [Problem 2: Find the last but one element of a list](src/99-questions/problem-02.hs)
 - [Problem 3: Find the K'th element of a list](src/99-questions/problem-03.hs)
 - [Problem 4: Find the number of elements of a list](src/99-questions/problem-04.hs)
 - [Problem 5: Reverse a list](src/99-questions/problem-05.hs)
 - [Problem 6: Find out whether a list is a palindrome](src/99-questions/problem-06.hs)
 - [Problem 7: Flatten a nested list structure](src/99-questions/problem-07.hs)
 - [Problem 8: Eliminate consecutive duplicates of list elements](src/99-questions/problem-08.hs)
 - [Problem 9: Pack consecutive duplicates of list elements into sublists](src/99-questions/problem-09.hs)
 - [Problem 10: Run-length encoding of a list](src/99-questions/problem-10.hs)
 - [Problem 11: Modified run-length encoding](src/99-questions/problem-11.hs)
 - [Problem 12: Decode a run-length encoded list](src/99-questions/problem-12.hs)
 - [Problem 13: Run-length encoding of a list (direct solution)](src/99-questions/problem-13.hs)
 - [Problem 14: Duplicate the elements of a list](src/99-questions/problem-14.hs)
 - [Problem 15: Replicate the elements of a list a given number of times](src/99-questions/problem-15.hs)
 - [Problem 16: Drop every N'th element from a list](src/99-questions/problem-16.hs)
 - [Problem 17: Split a list into two parts; the length of the first part is given](src/99-questions/problem-17.hs)
 - [Problem 18: Extract a slice from a list](src/99-questions/problem-18.hs)
 - [Problem 19: Rotate a list N places to the left](src/99-questions/problem-19.hs)
 - [Problem 20: Remove the K'th element from a list](src/99-questions/problem-20.hs)
 - [Problem 21: Insert an element at a given position into a list](src/99-questions/problem-21.hs)
 - [Problem 22: Create a list containing all integers within a given range](src/99-questions/problem-22.hs)
 - [Problem 23: Extract a given number of randomly selected elements from a list](src/99-questions/problem-23.hs)
 - [Problem 24: Lotto: Draw N different random numbers from the set 1..M](src/99-questions/problem-24.hs)
 - [Problem 25: Generate a random permutation of the elements of a list.](src/99-questions/problem-25.hs)
 - [Problem 26: Generate the combinations of K distinct objects chosen from the N elements of a list](src/99-questions/problem-26.hs)
 - [Problem 27: Group the elements of a set into disjoint subsets](src/99-questions/problem-27.hs)
 - [Problem 28: Sorting a list of lists according to length of sublists](src/99-questions/problem-28.hs)

# Articles

 - [The Incomplete Guide to Lazy Evaluation](https://hackhands.com/guide-lazy-evaluation-haskell/)
 - [Making Efficient use of memory in Haskell](https://blog.pusher.com/making-efficient-use-of-memory-in-haskell/)
 - [Functors, Applicatives, And Monads In Pictures](http://adit.io/posts/2013-04-17-functors,_applicatives,_and_monads_in_pictures.html)
 - [List Processing with Higher-Order Functions](https://medium.com/@ericjim/list-processing-with-higher-order-functions-3ce420ab133#.e2x0rvhxu)
 - [Haskell Pitfalls](http://lorepub.com/post/2016-12-17-Haskell-Pitfalls)
 - [Twelve Monads of Christmas](https://medium.com/twelve-days-of-monad)
