require 'open-uri'
require 'irb'

class String
  def red
    "\033[#{IRB::Color::RED}m#{self}\033[0m"
  end

  def green
    "\033[#{IRB::Color::GREEN}m#{self}\033[0m"
  end

  
  def yellow
    "\033[#{IRB::Color::YELLOW}m#{self}\033[0m"
  end

  def blue
    "\033[#{IRB::Color::BLUE}m#{self}\033[0m"
  end

  def clear
    "\033[#{IRB::Color::CLEAR}m#{self}\033[0m"
  end
end

errors = []
emojis = File.read('./emojis.txt').split("\n")

emojis.each.with_index do |name, index|
  
  puts "#{index} of #{emojis.count} => #{((index * 100)/emojis.count.to_f).round(2)}%"
  next if name.split('.').one?
  
  url = "https://chat.andela.com/emoji-custom/#{name}?_dc=0"
  
  extension = name.split('.').last
  final_name = name.gsub(extension,'png')

  begin
    if File.exists?("emojis/#{name}") || File.exists?("emojis/#{final_name}")
      puts "=> File #{name} Already exists"
      next
    else
      puts "=> Downloading #{name}".green
      download = URI.open(url)
      IO.copy_stream(download, "emojis/#{name}");
      
      if name.split('.').last == 'octet-stream'
        puts "===> Converting #{name} to #{final_name}".blue
        system("convert -background none emojis/#{name} emojis/#{name.gsub('octet-stream','png')}")
        puts "===> Deletings #{name}".red
        File.delete("emojis/#{name}")
      end
      
    end
  rescue => e
    puts "Error downloading #{name} from #{url}".red
    puts "Error: #{e.message}"
    errors << name
    next
  end
end