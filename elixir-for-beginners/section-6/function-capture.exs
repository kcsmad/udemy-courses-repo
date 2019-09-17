## Function Captures
# notation for functions name/arity
# e.g. hd/1
# capture syntax can be used to create functions
# using the capture operator `&`
&is_nil/1
&hd/1

## Anonymous Function Capture
# at lease on &1 capture argument
#  fn x -> x + 1 end # explicit anonymous function
#  (  x -> x + 1 ) # remove do/end, and add brackets
# &(      &1 + 1 ) # replace x with capture arguments


## Return Complex Data Structures
# list = &[&1, &2]

## Referencing Module Functions
# &[module.] name/arity
# &String.upcase/1
# &String.upcase(&1)