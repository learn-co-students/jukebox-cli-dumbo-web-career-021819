# Here is the song hash you will be working with
# Each key is a song name and each value is the location of its mp3 file
# Make sure to edit the value of each key to replace <path to this directory>
# with the correct path to this directory on your computer

# my_songs = {
# "Go Go GO" => "/home/spectacular-page-9209/jukebox-cli-dumbo-web-career-021819/audio/Emerald-Park/01.mp3",
# "LiberTeens" => "/home/spectacular-page-9209/jukebox-cli-dumbo-web-career-021819/audio/Emerald-Park/02.mp3",
# "Hamburg" => "/home/spectacular-page-9209/jukebox-cli-dumbo-web-career-021819/audio/Emerald-Park/03.mp3",
# "Guiding Light" => "/home/spectacular-page-9209/jukebox-cli-dumbo-web-career-021819/audio/Emerald-Park/04.mp3",
# "Wolf" => "/home/spectacular-page-9209/jukebox-cli-dumbo-web-career-021819/audio/Emerald-Park/05.mp3",
# "Blue" => "/home/spectacular-page-9209/jukebox-cli-dumbo-web-career-021819/audio/Emerald-Park/06.mp3",
# "Graduation Failed" => "/home/spectacular-page-9209/jukebox-cli-dumbo-web-career-021819/audio/Emerald-Park/07.mp3"
# }


def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end


def list(my_songs)
  # Collect the keys of the my_songs hash
  # List the songs by name
  song_names_array = my_songs.keys
  song_names_array.each_with_index do |song_name, index|
    puts "#{index + 1}. #{song_name}"
  end
end


def play(my_songs)
  # You should still ask the user for input and collect their song choice
  # Only allow the user to input a song name
  # Check to see, if the name they give is, in fact, a key of the my_songs hash
  # If it isn't, tell them their choice is invalid
  # If it is, play the song, using the system 'open <file path>' syntax
  # Get the file path of the song by looking it up in the my_songs hash
  puts "Please enter a song name:"
  user_response = gets.chomp
  if my_songs.has_key?(user_response)
    path_to_file = my_songs[user_response]
    file_name = path_to_file[-6..-1]
    system "open #{file_name}"
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
  user_response = gets.chomp
  while user_response != "exit"
    if user_response == "help"
      help
      puts "Please enter a command:"
      user_response = gets.chomp
    elsif user_response == "list"
      list(my_songs)
      puts "Please enter a command:"
      user_response = gets.chomp
    elsif user_response == "play"
      play(my_songs)
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

