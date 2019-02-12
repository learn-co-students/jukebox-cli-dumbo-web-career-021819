#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer

my_songs = {
"Go Go GO" => '/home/campbelllssoup/jukebox-cli-dumbo-web-career-021819/audio/Emerald-Park/01.mp3',
"LiberTeens" => '/home/campbelllssoup/jukebox-cli-dumbo-web-career-021819/audio/Emerald-Park/02.mp3',
"Hamburg" =>  '/home/campbelllssoup/jukebox-cli-dumbo-web-career-021819/audio/Emerald-Park/03.mp3',
"Guiding Light" => '/home/campbelllssoup/jukebox-cli-dumbo-web-career-021819/audio/Emerald-Park/04.mp3',
"Wolf" => '/home/campbelllssoup/jukebox-cli-dumbo-web-career-021819/audio/Emerald-Park/05.mp3',
"Blue" => '/home/campbelllssoup/jukebox-cli-dumbo-web-career-021819/audio/Emerald-Park/06.mp3',
"Graduation Failed" => '/home/campbelllssoup/jukebox-cli-dumbo-web-career-021819/audio/Emerald-Park/07.mp3'
}

def help
  puts " I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(my_songs)
  song_list = []
  my_songs.map do |song_name, song_location|
    song_list.push(song_name)
  end
  song_list.each_with_index do |song_name, i|
    puts "#{i+1}. #{song_name}"
  end
end

def play(my_songs)
  #this method is slightly different!
  #you should still ask the user for input and collect their song choice
  #this time, only allow user's to input a song name
  #check to see if the name they give is in fact a key of the my_songs hash
  #if it isn't, tell them their choice is invalid
  #if it is, play the song using the system 'open <file path>' syntax
  #get the file path of the song by looking it up in the my_songs hash
  
  puts "Please enter a song name or number:"
  input = gets.chomp
  if my_songs.include?(input)
    puts "#{my_songs[input]}"
    system "open #{my_songs[input]}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(my_songs)
  help
  puts "Please enter a command:"
  command = gets.chomp
  loop do
    case command
    when "list"
      list(my_songs)
    when "play"
      play(my_songs)
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

list(my_songs)