# Add your code here
require 'pry'
require_relative "../lib/jukebox"

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def play(songs)
  puts "Please enter a song name or number:"
  user_input = gets.chomp
  counter = 0
  while counter < songs.length
    if user_input.to_i== counter+1
      puts "Playing #{songs[counter]}"
    end
    counter+=1
  end
  if !songs.include?(user_input)
    puts "Invalid input, please try again"
  else
    puts "Now playing #{user_input}"
  end
end

def list(songs)
  songs.each_with_index do |song, i|
   puts "#{i + 1}. #{song}"
  end
end

def exit_jukebox
  puts "Goodbye!"
end

def run(songs)
  user_input = ""
  while user_input
    puts "Please enter a command:"
    user_input=gets.downcase.strip
    case user_input
      when "list"
        list(songs)
      when "play"
        list(songs)
        play(songs)
      when "help"
        help
      when "exit"
        exit_jukebox
        break
      else
        help
      end
    end
end
