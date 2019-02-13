# songs = [
#   "Phoenix - 1901",
#   "Tokyo Police Club - Wait Up",
#   "Sufjan Stevens - Too Much",
#   "The Naked and the Famous - Young Blood",
#   "(Far From) Home - Tiga",
#   "The Cults - Abducted",
#   "Phoenix - Consolation Prizes",
#   "Harry Chapin - Cats in the Cradle",
#   "Amos Lee - Keep It Loose, Keep It Tight"
# ]

# def say_hello(name)
#   puts "Enter your name:"
#   users_name = gets.chomp
#   puts "Hi #{name}!"
# end

def help
puts "I accept the following commands:"
puts "- help : displays this help message"
puts "- list : displays a list of songs you can play"
puts "- play : lets you choose a song to play"
puts "- exit : exits this program"
end

def list(array)
  string = ""
  array.each_with_index do |ele,idx|
      string << " #{idx+1}. #{ele}\n"
  end
  puts string
end

def play(array)
  puts "Please enter a song name or number:"
  answer = gets.chomp
  song = "Invalid input, please try again"
  array.each_with_index do |ele,idx|
    if answer == (idx+1).to_s || answer == ele
      song = "Playing #{ele}"
    end
    end
  puts song
end

def exit_jukebox
  puts "Goodbye"
end

def run(array)
  help()
  puts "Please enter a command:"
  answer = gets.chomp
  until answer == "exit"
    help()
    puts "Please enter a command:"
    answer = gets.chomp
    case answer
     when "list"
       list(array)
     when "help"
       help()
     when "play"
       play(array)
     end
   end
   exit_jukebox()
end
