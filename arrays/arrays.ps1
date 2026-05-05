# arrays practice

# arrays have multiple things
# arrays are just variables with multiple values

$oldPerson = 25, "James", "Male"

$oldPerson

# arrays use subexpression operators

$newPerson = @(27, "Chris", "Jason")

# prints first and third item and not in between

$newPerson[0,2]

# you can use multiple indices for many items

$anotherPerson = $newPerson[1,2,3]

# ... prints everything in between

$newPerson[0..2]

# ... can go backwards with reverse range trick

$newPerson[2..0]

# negative numbers go backwards to but starts at -1

$newPerson[-2]

# foreach allows you to do the same thing on each item
# this gives us length of each item
# PSitem is a stand in value for items

$newPerson.ForEach({ $PSItem.Length })




