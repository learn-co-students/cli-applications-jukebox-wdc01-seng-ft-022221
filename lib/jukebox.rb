# Add your code here

#def say_hello(name)
#  "Hi #{name}!"
#end

#puts "Enter your name:"
#users_name = gets.strip

#puts say_hello(users_name)


def help 
  puts "I accept the following commands:"
  puts "- help : displays this help message" 
  puts "- list : displays a list of songs you can play" 
  puts "- play : lets you choose a song to play" 
  puts "- exit : exits this program"
  
end 

def list(songs)
  songs.each_with_index {|song, i| puts "#{i+1}. #{song}"}
end

def play(songs)
  puts "Please enter a song name or number:"
  selection = gets.strip
  
  if selection.to_i != 0 && selection.to_i < songs.length
    puts "Playing #{songs[selection.to_i-1]}"
  elsif songs.include?(selection)
    puts "Playing #{selection}"
  else 
    puts "Invalid input, please try again"
  end 
end 

def exit_jukebox
  puts "Goodbye"
end 

def run(songs)
  
  command = nil 
  
  while command != "exit"
    puts "Please enter a command:"
    command = gets.strip
  
    case command
      when "list"
        list(songs)
      when "play" 
        play(songs)
      when "help" 
        help
      when "exit"
        exit_jukebox
      else
        puts "Invalid command"
    end
  end
end 