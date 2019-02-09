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

=begin
def say_hello(name)
  "Hi #{name}!"  
end

puts "Enter your name:"
users_name = gets.chomp

puts say_hello(users_name)
=end

def help
  puts "I accept the following commands\n
  - help : displays this help message\n
  - list : displays a list of songs you can play\n
  - play : lets you choose a song to play\n
  - exit : exits this program"
end

def list(songs)
  songs.each_with_index { |song, i|
    puts "#{i + 1}. #{song}"
  }
end

def play(songs)
  puts "Please enter a song name or number:"
  song_request = gets.chomp
  if song_request.to_i > 0 && song_request.to_i <= songs.length 
    puts "Playing #{songs[song_request.to_i - 1]}"
    return
  elsif
    songs.include?(song_request)
    puts "Playing #{song_request}"
    return
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
  command_request = gets.chomp
  if command_request == "help"
    help
    run(songs)
  elsif command_request == "list"
    list(songs)
    run(songs)
  elsif command_request == "play"
    play(songs)
    run(songs)
  elsif command_request == "exit"
    exit_jukebox
  end
  
  return
end

