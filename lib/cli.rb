require 'nokogiri'
require 'open-uri'

class CLI
  def run
    puts "Welcome to IMDB Openings!"
    puts "These are the movies opening this week:"
    puts " "
    puts ": ======================= :"
    puts " "
  
    html = open("https://www.imdb.com/")
    doc = Nokogiri::HTML(html)
    movies = []
    doc.css("div.rhs-body")[0].("div.rhs-row").each do |mov|
      title = mov.css(".title").text.strip
      movies << title
    end
    
    movies.each.with_index(1) do |title, index|
      puts "#{index}. #{title}"
    end 
  end
  
end