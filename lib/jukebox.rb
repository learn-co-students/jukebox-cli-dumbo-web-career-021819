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
  user_response = gets.chomp.to_s
  if songs.include?(user_response)
    puts "Playing #{user_response}"
  elsif user_response.to_i > 0 && user_response.to_i <= songs.size
    index = user_response.to_i - 1
    song = songs[index]
    puts "Playing #{song}"
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
  user_response = gets.chomp
  while user_response != "exit"
    if user_response == "help"
      help
      puts "Please enter a command:"
      user_response = gets.chomp
    elsif user_response == "list"
      list(songs)
      puts "Please enter a command:"
      user_response = gets.chomp
    elsif user_response == "play"
      play(songs)
      puts "Please enter a command:"
      user_response = gets.chomp
    else
      puts "Invalid input!"
      puts "Please enter a command:"
      user_response = gets.chomp
    end
  end
  exit_jukebox
end

