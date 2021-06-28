require 'rubygems'
require 'nokogiri'
require 'open-uri'
   
page = Nokogiri::HTML(open("http://1000mostcommonwords.com/1000-most-common-german-words/"))   

2.upto(1001) do |n|
  Card.create(original_text: page.xpath("//*[@id=\"post-115\"]/div/div/table/tbody/tr[#{n}]/td[2]").inner_html, 
              translated_text: page.xpath("//*[@id=\"post-115\"]/div/div/table/tbody/tr[#{n}]/td[3]").inner_html)
end