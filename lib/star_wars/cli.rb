class CLI
 
  #class method
  def start #instance method/ creates the flow of the program/starts
    self.welcome
    self.get_film_list
    self.menu
    self.goodbye
  end
  #instance method
  def welcome #display the welcome message
    puts "Welcome to The Star Wars Films List"
  end
  def menu #displays the menu
    input = nil
    while input != "exit"
      puts "Enter the number of the movie you want more info on or type list to exit or type exit."
      input = gets.strip.downcase #removes whitespace
        case input
      when '1'
        film = Film.all[0] #start of film title arrays/puts film title by number selected in array in Film class
        puts film.opening_crawl #displays response for the description of film
      when '2'
        film = Film.all[1]
        puts film.opening_crawl
      when '3'
        film = Film.all[2]
        puts film.opening_crawl
      when '4'
        film = Film.all[3]
        puts film.opening_crawl
      when '5'
        film = Film.all[4]
        puts film.opening_crawl
      when '6'
        film = Film.all[5]
        puts film.opening_crawl
      when '7'
        film = Film.all[6]
        puts film.opening_crawl
      when "list"
        display_film_list #runs display_film_list method
      end
    end
  end
  def goodbye
    puts "See you later, may the FORCE be with you!!"
  end
  def get_film_list #display films from data from API
    API.get_films
    self.display_film_list #self is the get_films_list within this method/will display films from API
  end
  def display_film_list
    Film.all.each.with_index(1) do |film, index| #executes the below code for each element in the collection
      puts "#{index}. #{film.title}" #returns and displays each item from the API class
    end
  end
end

#.map---used to transform data
#.collect---  'Projects each element of a sequence into a new form' new array