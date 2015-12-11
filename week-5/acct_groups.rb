=begin
MVP
-Takes an array of all the people in squirrels 2016 (not including guides) and breaks them into groups of no less than 3 people per group (preferably 4-5 per group).
-Assigns each group a number
-prints the groups to screen in a pretty format. 

Pseudocode
- Create array of people in squirrels and shuffle it. 
- Iterate over array and split it at every 5th person.
- check the length of the last group in new array. 
- If last group is less than 4 remove one person several other groups and add them to last. 
- Iterate over new array of arrays(acct groups) and assign each one in tern to a new hash called groups.
- Name each new key in the hash "Accountability Group n" where n increases with each iteration. 
- Print hash to screen in format
   Accountability group n:
   Name
   Name
   Name
   Name
   Name
=end

squirrels = [
"Alex Folrger",
"Alexander Nelson",
"Karen Ball",
"Christopher Bovio",
"Gino Paul Capio",
"Jonathan Chin",
"Claire Samuels",
"Ray Curran",
"David Louie",
"David Spivey",
"Max Davis",
"Devin Mandelbaum",
"Afton Downey",
"Jordan Fox",
"Rebecca Gahart",
"Gary Wong",
"Hodges Glenn",
"Everett Golden",
"Christopher Graf",
"Alana Hanson",
"LeeAnne Hawley",
"Sabri helal",
"Thomas Huang",
"Jeff Schneider",
"Jillian Dunleavy",
"Kevin Huang",
"Khamla Phimmachack",
"KT Khoo",
"Andrew s Kim",
"Joseph Kim",
"Michal Klimek",
"Nathan knockeart",
"Brigitte Kozena",
"Donald Lang",
"Tiffany Larson",
"Liam Mackey",
"Johanna Lonn",
"Tyler McKenzie",
"Katie Meyer",
"Meagan Munch",
"Lucas Nagle",
"Lydia Nash",
"Jovanka Nikolovski",
"James O'Neal",
"Greg Park",
"Patrick Oliphant",
"Peter Lowe",
"Lauren Reid",
"Roche Janken",
"David Rothschild",
"Susan Savariar",
"Kurt Schlueter",
"Sharon Claitor",
"Marshall Sosland",
"Catie Stallings",
"Steven King",
"Eric Tenza",
"Timur Catakli",
"Todd Seller",
"Dan Turcza",
"Lindsey Ullman",
"Raj Vashist",
"Violet Dang",
"Chris Wong",
"Angelika Yoder",
"Michelle Zulli"
]

angry_squirrels = squirrels.shuffle

def assign_groups(cohort)
	divided = cohort.each_slice(5).to_a
	i=0
	until divided[-1].length >= 4
		divided[-1] << divided[i].pop
		i += 1
	end
	groups = Hash.new
	divided.each_with_index {|v,i| groups["Accountability Group #{i + 1}"] = v}
	return groups
end

groups = assign_groups(angry_squirrels)


def print_groups(groups)
	groups.each do |key,value|
		puts "#{key}:"
		puts value
		puts ""
	end
end

print_groups(groups)

=begin
What was the most interesting and most difficult part of this challenge?


Do you feel you are improving in your ability to write pseudocode and break the problem down?

  Yes. My initial solution was broken down into seperate methods for each major stage of my pseudocode. This meant
  I could test each spet seperately.

Was your approach for automating this task a good solution? What could have made it even better?

  I think my appraoch was a good one.  It would be better if it produced the same result each time.  This could be done
  by removing line 92 but I wanted to mix up the names before assigning groups and angry-squirrels was too funny
  to get rid of.

What data structure did you decide to store the accountability groups in and why?

   I decided to use a Hash to store the groups because I wanted the groups to have names rather than just numbers. 
   It also made the exercise more challenging and interesting if I had to convert the array into a hash. 

What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?

  I leared the method .each_with_index which iterates through each value in an array and allows you to work with 
  both the index and the value.  I initialy used a seperate variable for the group number and increased it with 
  each iteration. 
=end