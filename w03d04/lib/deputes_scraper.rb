require 'nokogiri'
require 'open-uri'
require 'json'

main_url = 'https://www2.assemblee-nationale.fr/deputes/liste/alphabetique'
main_body = Nokogiri::HTML(URI.parse(main_url).open)

def get_names_and_urls(body)
  names = []
  urls = []
  body.xpath('//div[2]//div[3]/div/div[3]').each do |node|
    node.css('div').each do |node1|
      node1.css('ul').each do |node2|
        node2.css('li').each do |node3|
          node3.css('a').each do |mp|
            names << mp.text
            urls << "https://www2.assemblee-nationale.fr#{mp['href']}"
          end
        end
      end
    end
  end
  [names, urls, names.size]
end

def get_first_and_last_names(names)
  first_names = []
  last_names = []
  names.each do |name|
    name = name.split(' ')
    first_names << name[1]
    last_names << name[2]
  end
  [first_names, last_names]
end

def scrape_emails(urls, members)
  emails = []
  urls.each do |url|
    Nokogiri::HTML(URI.parse(url).open).css(
      'dd:nth-child(8) li:nth-child(2) > a:nth-child(1)'
    ).each do |node|
      emails << node.text.downcase
      puts "#{emails.size} emails out of #{members} scraped: #{emails[-1]}"
    end
  end
  emails
end

def create_directory(first_names, last_names, emails)
  directory = []
  emails.each_index do |i|
    directory << { first_name: first_names[i], last_name: last_names[i], email: emails[i] }
    print directory[i]
  end
  directory
end

def json(directory)
  File.write('MPs.json', JSON.pretty_generate(directory))
end

def execute(body)
  names, urls, members = get_names_and_urls(body)
  first_names, last_names = get_first_and_last_names(names)
  puts 'Got all names, please stand by while scraping emails...'
  emails = scrape_emails(urls, members)
  directory = create_directory(first_names, last_names, emails)
  json(directory)
  print File.read('MPs.json')
end

execute(main_body)
