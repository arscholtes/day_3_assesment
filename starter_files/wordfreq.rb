require 'pry'
class Wordfreq
  @@STOP_WORDS = ['a', 'an', 'and', 'are', 'as', 'at', 'be', 'by', 'for', 'from',
    'has', 'he', 'i', 'in', 'is', 'it', 'its', 'of', 'on', 'that', 'the', 'to',
    'were', 'will', 'with']


  def initialize(filename) #bringing in the file
    h = Hash.new  #creating a new hash
    files = File.open(filename) # opening the file
      content = files.gsub!(/[,()'"]/,'')
      words = content.scan
      simple = words.split.delete_if{|words| @@STOP_WORDS.include?(words.downcase)}.join(' ')
    end
  end

  def frequency(word)
    def count_em()
  end

  def frequencies

  end

  def top_words(number)

  end

  def print_report

  end

if __FILE__ == $0
  filename = ARGV[0]
  if filename
    full_filename = File.absolute_path(filename)
    if File.exists?(full_filename)
      wf = Wordfreq.new(full_filename)
      wf.print_report
    else
      puts "#{filename} does not exist!"
    end
  else
    puts "Please give a filename as an argument."
  end
end
