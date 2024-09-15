#```ruby
# ```

person = [
  { national_id: 1, name: "Edward", age: 18 },
  { national_id: 2, name: "Mark", age: 19 },
  { national_id: 3, name: "Clair", age: 20 },
  { national_id: 4, name: "Czed", age: 18 },
  { national_id: 5, name: "Rose", age: 32 },
  { national_id: 6, name: "Cheysser", age: 32 },
  { national_id: 7, name: "Lance", age: 11 },
  { national_id: 8, name: "Usagi", age: 18 },
  { national_id: 9, name: "Fan", age: 18 },
  { national_id: 10, name: "Liu", age: 18 },
  { national_id: 11, name: "Long", age: 18 },
  { national_id: 12, name: "Kang", age: 30 },
  { national_id: 13, name: "Gina", age: 75 },
  { national_id: 14, name: "Karen", age: 60 },
  { national_id: 15, name: "Claudine", age: 80 },
  { national_id: 16, name: "Jeff", age: 90 },
  { national_id: 17, name: "Zain", age: 18 },
  { national_id: 18, name: "Loi", age: 15 },
  { national_id: 19, name: "Kath", age: 18 },
  { national_id: 20, name: "Sid", age: 21 }
]

continue = true

while continue
   puts "Would you like to add, remove, search, or type 'exit' to exit? (Add/Delete/Search/Exit)"
   reply = gets.chomp.downcase

   case reply
   when "exit"
      continue = false
      puts "Program stopped."

   when "delete"
      puts "Which national id would you like to delete?"
      national_id = gets.chomp
      if national_id == "exit"
         puts "Program stopped."
         break

      elsif
      national_id.to_i
         person.any? { |h| h[:national_id] == national_id }
         person = person.reject { |i| i[:national_id] == national_id }
         puts "Successfully deleted."

      else
         puts "User not found."
      end
      puts person.last(20)

   when "add"
      puts "What is your national id?"
      national_id = gets.chomp.to_i

      if person.any? { |h| h[:national_id] == national_id }
         puts "Failed to add: National ID already exists."
      else
         puts "What is your name?"
         name = gets.chomp

         if name == "exit"
            puts "Program stopped."
            break
         else
            puts "What is your age?"
            age = gets.chomp
            if age == "exit"
               puts "Program stopped."
               break
            else
               age = age.to_i

            new_user = { national_id: national_id, name: name, age: age }
            person.insert(0, new_user)
            puts "User added successfully!"
            puts person.first(20)
            end
         end
      end

   when "search"
      puts "Enter the national id of the person you want to search:"
      national_id = gets.chomp.to_i
      found_person = person.find { |p| p[:national_id] == national_id }

      if found_person
         puts "Person found: National ID: #{found_person[:national_id]}, Name: #{found_person[:name]}, Age: #{found_person[:age]}"
      else
         puts "User not found."
      end

   else
      puts "That seems to be invalid. Please try again."
   end
end
