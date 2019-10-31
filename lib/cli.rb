require 'nokogiri'
require 'open-uri'

def run
  puts "Welcome to IMDB Openings!"
  puts "These are the movies opening this week:"
  puts " "
  puts ": ======================= :"
  puts " "

  html = open("https://www.imdb.com/")
  doc = Nokogiri::HTML(html)

  binding.pry
  doc.css("div.rhs-row").each do |mov|
  end

end
