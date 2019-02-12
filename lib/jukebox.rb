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
  puts " I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  statement = ""
  songs.each_with_index do |song, i|
    statement += "#{i+1}. #{song}\n"
  end
  puts statement
end

def play(songs)
  puts "Please enter a song name or number:"
  input = gets.chomp
  if songs.include?(input) 
    puts "Playing #{input}"
  elsif ( ((input.to_i)-1 != -1) && (songs[(input.to_i) - 1] != nil) )
    puts "Playing #{songs[(input.to_i) - 1]}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox 
  puts "Goodbye"
end

def run(songs_list)
  help
  puts "Please enter a command:"
  command = gets.chomp
  loop do
    case command
    when "list"
      list(songs_list)
    when "play"
      play(songs_list)
    when "help"
      help
    when "exit"
      exit_jukebox
      break
    else
      puts "Type in a valid command:"
    end
    puts "Please enter a command:"
    command = gets.chomp
  end
end