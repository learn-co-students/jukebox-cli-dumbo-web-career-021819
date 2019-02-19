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

# def say_hello(name)
#   "Hi #{name}!"
# end
#
# puts "Enter your name:"
# users_name = gets.chomp
#
# puts say_hello(users_name)

def help
  puts "I accept the following commands:"
  puts"- help : displays this help message"
  puts"- list : displays a list of songs you can play"
  puts"- play : lets you choose a song to play"
  puts"- exit : exits this program"

end

def list(song_array)
  song_array.each_with_index do |song, index|
    puts "#{index + 1}. #{song}"
  end
end

def play(song_array)
  puts "Please enter a song name of number:"
  selection = gets.chomp

  song_array.each_with_index do |song, index|
    if selection == song || selection.to_i == (index+1)
      puts "Playing #{song}"
    else
      puts "Invalid input, please try again"
    end
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(song_array)
  help
  loop do
    puts "Please enter a command:"
    response = gets.chomp
    if response == "help"
      help()
    elsif response == "play"
      play(song_array)
    elsif response == "list"
      list(song_array)
    else response == "exit"
    exit_jukebox()
    break
    end
  end
end

# First, this method should call on the help method to show the user the available commands. Then, it should puts out the prompt: "Please enter a command:". It should capture the user's response using gets.chomp or gets.strip.
#
# We need to keep our program running as long as the user's input is not "exit". Use a loop to continue asking the user for input until or unless their input is "exit". Use if or case statements to determine how your program will respond to a user's input. For example, if their input is "list", call the list method, if their input is "play", call the play method, if their input is "help", call the help method and if their input is "exit", call the exit_jukebox method and break out of your loop to stop the program.
