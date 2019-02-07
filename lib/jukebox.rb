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
  puts "Hi #{name}!"
end

puts "Enter your name:"
users_name = gets.chomp.strip

puts say_hello(users_name)
=end

def help() #This is the basic output of commands
  output = "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
puts output
end

def list(songs)#lists out the array of songs
  songs.each_with_index do |song,index|
  puts "#{index+1}. #{song}" #adds the index number to the beginning of track title
end
end

def play(songs)
  puts "Please enter a song name or number:"
  response = gets.chomp #takes in user input
  songs.each_with_index do |songname,index|
    if (index + 1).to_s == response #checks for a index number
      puts "Playing #{songname}"
    elsif songname.include? response #checks if the user has typed a song or artist from the list
      puts "Playing #{songname}"
    else
      puts "Invalid input, please try again"
end
end
end
$cond = true
def exit_jukebox()
  puts "Goodbye"
  $cond = false
end

def run(help)
while $cond

puts "Please enter a command:"
userinput = gets.chomp.strip
case userinput #using a case switch for commands typed in
when "help" , "HELP" , "Help"
  help
when "list" , "LIST" , "List"
  list(songs)
when "play", "PLAY", "Play"
  play(songs)
when "exit"
  exit_jukebox()

end
end
end
