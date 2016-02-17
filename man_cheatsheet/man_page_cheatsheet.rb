class Manpage
	 Make_selection = "****Make a selection****"
	 def get_from_file
	 	file = File.open("manfiles.rb")
	 	filename = file.read
	  puts filename.split("\n") 
	 end
	 def send_to_file(command)
	 	newfile = File.open("filename","a")
	 	newfile.puts `#{command}`
	 	newfile.close
	 end
	 def command_line_menu
	 		while(true)
	 			command_line_array = ["-----COMMAND LINE----","1) cp","2) mv","3) cd","4) Main menu"]
				command_line_array.each do |i|
				puts "#{i}"
			end
				puts Make_selection
				selection_2 = gets.strip.to_i
				case selection_2
					when 1
						puts `man cp`
						send_to_file('man cp')
					when 2
						puts `man mv`
						send_to_file('man mv')
					when 3
						puts `man cd`
						send_to_file('man cd')
					when 4
						run
					when 5 
						get_from_file
					else 
						puts "WHAT THE WHAT?!?!"
				end
			end	
	 end
	
	 def search_line_menu
	   puts "Enter Command to search:"
		 input = gets.strip
		 puts `man #{input}`
		 puts Manpage
	 end
	
	 def run
		 while (true)
			 	cheat_sheet_array = ["----CHEATSHEET----","1) Command line","2) Search","3) Exit"]
			 	cheat_sheet_array.each do |list|
			 		puts "#{list}"
			 	end
			 puts Make_selection 
			 selection_1 =  gets.strip.to_i
			 
			 case selection_1
			   when 1
					 command_line_menu
				 when 2
					 search_line_menu	
				 when 3
				   exit(0)
			  end
		 end
  end
end

manpage = Manpage.new
manpage.run

