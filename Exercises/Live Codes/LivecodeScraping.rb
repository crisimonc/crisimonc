require "nokogiri"
require "open-uri"
require 'yaml'

def imdb_scraper
  array = []
  movies_array = []
  url = "https://www.imdb.com/chart/top"
  html_file = open(url, "Accept-Language" => "en").read
  html_doc = Nokogiri::HTML(html_file)
  html_doc.search(".titleColumn a").each do |value|  # a is an anchor > I'm taking the entire tag after that class
    array = value.text.gsub!("\n", "").strip.gsub(/\d*[.]/, "").strip.split("  ")
  title = array.first
  year = array.last.gsub(/\W/, "").to_i
  movie = {
    title: title,
    year: year,
  }
  movies_array << movie
  end

  #puts movies_array.inspect
  File.open("movie_yml.yml","w") do |file|
     file.write movies_array.to_yaml
  end
end

imdb_scraper
