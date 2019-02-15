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

#def say_hello(name)
#  "Hi #{name}!"
#end

#puts "Enter your name:"
#users_name = gets.chomp

#puts say_hello(users_name)
def help
  puts "I accept the following commands:\n
  - help : displays this help message\n
  - list : displays a list of songs you can play\n
  - play : lets you choose a song to play\n
  - exit : exits this program"
end

def list(songs)
  song_list = ""
  songs.each_with_index do |val, i|
    song_list << "#{i+1}. #{val}\n"
  end
puts song_list
end

def play(songs)
  puts "Please enter a song name or number:"
  song = gets.chomp
  invalid_input = "Invalid input, please try again"
  songs.each_with_index do |val, i|
    if val == song.to_s || song == (i + 1).to_s
      puts "Playing #{val}"
    else
      puts invalid_input
    end
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(array)
  help()
  puts "Please enter a command:"
  user_input = gets.chomp
  until user_input == "exit"
    puts "Please enter a command:"
    user_input = gets.chomp
    case user_input
    when "list"
      list(songs)
    when "help"
      help()
    when "play"
      play(songs)
    end
  end
  exit_jukebox()
end
