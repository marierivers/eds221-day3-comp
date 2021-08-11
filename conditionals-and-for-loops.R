# Conditionals and loops
# this is an R script. Use '#' for comments
# if you use 4 dashes on the end of your comment, it creates an outline ----
# you dont need to add a code chunk in an R script
# refresh out memory on boolean operators
#use command + return to run any line

#add the packages you need at the top
library(tidyverse)

pinyon_pine <- 14
lodgepole_pine <- 46

pinyon_pine == 10 # does pinyon_pine match a value of 10?
lodgepole_pine > pinyon_pine

pinyon_pine != 25

# create some basic if statements

burrito <- 2.4

if (burrito > 2) {
  print("I love burritos!")
}

if (burrito == 2.4) {
  print("add guac")
}

if (burrito < 1.5) {
  print("tacos")
}

# gray whale, blue whale, whale
sbc_observations <- c("blue whale", "gray whale", "whale", "gray wale", "dolphin", "sea lion", "blue whale")

# type ?str_detec in the console to learn more. It's in the stringr package which is in the tidyverse
str_detect(sbc_observations, pattern = "whale")

# an example of str_detect() within a conditional statement
phrase <- "I reallly love data science!"
if (str_detect(phrase, "data")) {
  print("cool")
}

# if-else statements
pika <- 45
if (pika > 60) {
  print("large pike")
} else {
  print("small pika")
}

# create a string 'food <- "I love enchiladas!" ' and write an if-else statement that prints "yay burritos" if the string "burritos" is detected in `food` or prints "what about burriots?" otherwise.

food <- "I love enchiladas!"
if (str_detect(food, pattern = "burritos")) {
  print("yay burriotos")
} else {
  print("what about burritos?")
}
str_detect(food, pattern = "burrito")

# create a new stored object called `marmot` with a value of 2.8. Write an if - elseif - else statement that returns: "small marmot" if marmot is less than 0.5, "medium marmot" if marmot is >= 0.5 AND < 3, and "large marmot" if marmot is >= 3.

marmot <- 2.8
if (marmot < .5) {
  print("small marmot")
} else if (marmot >= 0.5 & marmot < 3) {
  print("medium marmot")
} else if (marmot >= 3) {
  print("large marmot")
}

species <- "dog"

switch(species, 
       "cat" = print("meow"),
       "lion" = print("roar"),
       "owl" = print("screech"),
       "fox" = print("obnmoxious"),
       print("something else"))

