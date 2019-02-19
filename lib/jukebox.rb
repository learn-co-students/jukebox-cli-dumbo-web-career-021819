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
  songs.each_with_index do |song, idx|
    num = idx + 1
    puts "#{num}. #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  song = gets.chomp
  nums = "1234567890"
  if nums.include?(song)
    song = song.to_i
    song_idx = song - 1
    title = songs[song_idx]
    puts "Playing #{title}"
  else
    if songs.include?(song)
      puts "Playing #{song}"
    else
      puts "Invalid input, please try again."
    end
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  while true
    puts "Please enter a command:"
    command = gets.chomp
    if command == "list"
      list(songs)
    elsif command == "play"
      play(songs)
    elsif command == "help"
      help
    elsif command == "exit"
      exit_jukebox
      break
    else
      help
    end
  end
end
