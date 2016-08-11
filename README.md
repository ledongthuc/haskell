Save example that we are done. You can search by Table Index.
    update """
      CREATE TYPE
        dispensary_status
      AS ENUM
        ('pending', 'reviewing', 'rejected', 'published');
    """
    add_column :tbl_dispensary, :status, :dispensary_status, default: 'published'

# Fundamental 

 - [Hello world](example/hello_world.hs)
 - [Math operators](example/math_operator.hs)
 - [Boolean](example/boolean.hs)
 - [Calling function](example/calling_function.hs)
 - [Function define](example/function_define.hs)
 - [List](example/list.hs)
 - [List Comprehension](example/list_comprehension.hs)
 - [Tuple](example/tuple.hs)
 - [Matching Pattern](example/matching_pattern.hs)
 - [Guard](example/guard.hs)
 - [Let](example/let.hs)
 - [Recursive](example/recursive.hs)

# Common functions 

 - [Replicate](example/common_functions/replicate.hs)
