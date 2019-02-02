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

def play(songs)
  puts "Please enter a song name or number:"
  name_num = gets.chomp
  songs.each_with_index do |song, index|
    if name_num == song || name_num == (index + 1).to_s
      puts "Playing #{song}" 
      break
    else 
      puts "Invalid input, please try again"
    end 
  end  
end 

def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index + 1}. #{song}"
  end 
end 

def exit_jukebox
  puts "Goodbye"
end 

def run(songs)
  help  
  command = ""
  while command != "exit"
    puts "Please enter a command:"
    command = gets.chomp
    help if command == "help"
    list(songs) if command == "list"
    play(songs) if command == "play"
    exit_jukebox if command == "exit"
  end
end 





