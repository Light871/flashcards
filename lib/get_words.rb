require 'rubygems'
require 'nokogiri'
require 'open-uri'

class GetWords
  def initialize
    @page = Nokogiri::HTML(open("http://1000mostcommonwords.com/1000-most-common-german-words/"))
  end

  def parser
    result = []

    2.upto(1001) do |n|
      word = { :original_text => @page.xpath("//*[@id=\"post-115\"]/div/div/table/tbody/tr[#{n}]/td[2]").inner_html,
               :translated_text => @page.xpath("//*[@id=\"post-115\"]/div/div/table/tbody/tr[#{n}]/td[3]").inner_html }
      result << word
    end
    result
  end
end
