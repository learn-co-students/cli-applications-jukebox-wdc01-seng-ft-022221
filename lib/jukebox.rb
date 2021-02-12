require 'pry'

songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]


def help 
puts "I accept the following commands:"
puts "- help : displays this help message"
puts "- list : displays a list of songs you can play"
puts "- play : lets you choose a song to play"
puts "- exit : exits this program"
end

def list(songs) 
  songs.each_with_index do |song, index|
    puts "#{index + 1}. #{song}" 
  end
end

def play(songs) 
  puts "Please enter a song name or number:"
  user_response = gets.strip 
  if user_response == "1" || user_response == "Phoenix - 1901"
    puts "Playing Phoenix - 1901"
    elsif user_response == "2" || user_response == "Police Club - Wait Up"
      puts "Playing Tokyo Police Club - Wait Up"
      elsif user_response == "3" || user_response == "Sufjan Stevens - Too Much"
      puts "Playing Sufjan Stevens - Too Much"
      elsif user_response == "4" || user_response == "The Naked and the Famous - Young Blood"
      puts "Playing The Naked and the Famous - Young Blood"
      elsif user_response == "5" || user_response == "(Far From) Home - Tiga"
      puts "Playing (Far From) Home - Tiga"
      elsif user_response == "6" || user_response == "The Cults - Abducted"
      puts "Playing The Cults - Abducted"
      elsif user_response == "7" || user_response == "Phoenix - Consolation Prizes"
      puts "Playing Phoenix - Consolation Prizes"
      elsif user_response == "8" || user_response == "Harry Chapin - Cats in the Cradle"
      puts "Playing Harry Chapin - Cats in the Cradle"
      elsif user_response == "9" || user_response == "Amos Lee - Keep It Loose, Keep It Tight"
      puts "Playing Amos Lee - Keep It Loose, Keep It Tight"
    else puts "Invalid input, please try again"
  end
end

def exit_jukebox 
  puts "Goodbye"
end

def run(songs)
  puts "Please enter a command:"
  user_command = ""
  while user_command != "exit" do
     user_command = gets.strip 
    if user_command == "list"
    list(songs)
    elsif user_command == "help"
    help
    elsif user_command == "play"
    play(songs)
    end
  end
  if user_command == "exit"
    exit_jukebox
  end
end