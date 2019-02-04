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
  puts "- help : displays this help message."
  puts "- list : displays a list of songs you can play."
  puts "- play : lets you choose a song to play."
  puts "- exit : exits this program."
end

def list(songs)
  songs.each_with_index do  |ind_song, index|
    puts "#{index+1}. #{ind_song}"
  end
end

def play(songs)
  puts "Please enter a song song name or number:"
  user_song = gets.chomp
  match = false
  play_song = ""
  songs.each_with_index do |ind_song, index|
    if user_song == ind_song || user_song.to_i == (index + 1)
      match = true
      play_song = ind_song
    end
  end
  if match == true
    puts "Playing #{play_song}"
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
  command = gets.chomp

  while command != "exit"
    if command == "help"
      help
    elsif command == "list"
      list(songs)
    elsif command == "play"
      play(songs)
    end
    break
  end
  exit_jukebox
end
