class Wordfreq
  STOP_WORDS = ['a', 'an', 'and', 'are', 'as', 'at', 'be', 'by', 'for', 'from',
    'has', 'he', 'i', 'in', 'is', 'it', 'its', 'of', 'on', 'that', 'the', 'to',
    'were', 'will', 'with']


  def initialize(filename) #bringing in the file in a way so that the tests will run
    h = Hash.new  #creating a new hash
    @files = File.read(filename).downcase # opening the file
    @files.gsub!(/[^a-z0-9\s]/i,'') #getting rid of punctuation
    STOP_WORDS.each do |word|
      @files.gsub!(/\b(?:#{word})\b/,'') # this is removing the words in the STOP_WORDS array every time its used in the txt files
  end
  @files
end

  def frequency(word)
    counter=@files.scan(/\b(?:#{word})\b/,'').count # counting how many times a word is used in the txt files
  end

  def frequencies
    h = Hash.new
    numbnuts = @file.split(' ') # splitting up the file at every space
    numbnuts.each do |word|
      h[word] << frequencies(word) # putting that ^ into a hash
  end
end

  def top_words(number)
    top = frequencies.sort_by{|word, count| count}.reverse # sorting the words from most used to least used
    top.take(number)
  end

  def print_report
    top_words(10),eachdo |k, v|
    puts "#{k}"|"#{v}" + "*" * v #formating the export of the most frequent words from the various files * this is not passing the tests yet
  end
  end

if __FILE__ == $0 # premade code from NL
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
end
