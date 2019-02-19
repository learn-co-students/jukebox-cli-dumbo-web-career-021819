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
	puts "I accept the following commands:",
		"- help : displays this help message",
		"- list : displays a list of songs you can play",
		"- play : lets you choose a song to play",
		"- exit : exits the program"
end

def list (songs)
  songs.each_with_index do |song, i|
		puts "#{i+1}. #{song}"
	end
end

def play(songs)
  response = gets.chomp
  songs.each_with_index do |song, i|
    if response.to_i == (i+1) || response == song
      puts "Playing #{song}"
      break
    else
      puts "Invalid input, please try again"
      break
  end
end
end


def run(songs)
	help
	input = nil
	while input != "exit"
		puts "Please enter a command:"
		input = gets.chomp
		case
		when input == "help"
			help
		when input == "list"
			list(songs)
		when input == "play"
			play(songs)
		else
			puts "Invalid input, please try again"
		end
	end
	exit_jukebox
end

def exit_jukebox
	puts "Goodbye"
end
