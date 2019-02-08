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
  puts "- help: displays this help message"
  puts "- list: displays a list of songs you can play"
  puts "- play: lets you choose a song to play"
  puts "- exit: exits this program"
end

def list(songs)
  songs.each_with_index do |value, index|
    puts "#{index+1}. #{value}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  usr_response = gets.chomp
  numbers = 1..(songs.length)
  numbers = numbers.to_a
  if songs.include?(usr_response)
    puts "Playing #{usr_response}"
  elsif numbers.include?(usr_response.to_i)
    usr_response = usr_response.to_i
    puts "Playing #{songs[usr_response-1]}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"
  usr_response = gets.chomp

  while true
    case usr_response
    when "help"
      help
    when "play"
      play(songs)
    when "list"
      list(songs)
    when "exit"
      exit_jukebox
      break
    else
      puts "I don't know what to do with #{usr_response}."
      puts ""
      puts ""
      help
    end
    puts "Please enter a command:"
    usr_response = gets.chomp
    puts ""
    puts ""
  end
end
