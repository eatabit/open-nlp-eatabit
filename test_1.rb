require 'benchmark'
require 'open-nlp'
require 'fuzzy_match'
require 'csv'

require_relative 'menu'
require_relative 'text_processor'
require_relative 'sentence'
require_relative 'phrase'
require_relative 'item'

OpenNLP.load
  
text = "The NY style Parmesan sandwich fried with French fries and 2 sides of ranch.. And some ketchup! Thank you!"
# text = "Small cheese pizza plus feta, tomatoes and banana peppers"
# text = "Small meaty and beefy pizza with no pepperoni"
# text = "Medium half pepperoni half Hawaiian"
# text = "Large Italian American"
# text = "1 Philly cheese steak with fries, 1 gyro lamb with fries"
# text = "1 large pepperoni and onion with jalapeños on half."
# text = "1 large meaty and beefy pizza and 1 ny chopped salad with ranch and italian dressing"
# text = "Large Italian American on thin crust"
# text = "Large pizza, half cheese, half sausage and cheese."
# text = "One Large. Half cheese half with mushrooms. Also, a small Orlando's special pizza"

processor = TextProcessor.new(text)

puts Benchmark.measure {

  sentences = processor.sentences

  puts "\nTEXT: #{text}\n"

  processor.sentences.each do |sentence|

    puts "\nSENTENCE: #{sentence.to_s}"
    puts "  TOKENS: #{sentence.tokens}"
    puts "  TAGS: #{sentence.tags}"
    puts "  CHUNKS: #{sentence.chunks}"
    puts "  PHRASES:"

    [sentence.prepositional_phrases, sentence.noun_phrases].each do |phrases|
      
      phrases.each do |phrase|

        puts "    PHRASE: #{phrase.to_s}"
        puts "      TOKENS: #{phrase.tokens}"
        puts "      TAGS: #{phrase.tags}"
        puts "      CHUNKS: #{phrase.chunks}"
        puts "      NOUNS: #{phrase.nouns}"
        puts "      CATEGORY: #{phrase.category}"
        puts "      ITEMS:"

        phrase.items.each do |item|

          puts "        ITEM NAME: #{item}"
          # puts "        ITEM COUNT: #{item.item_count}"
          # puts "        ITEM PRICE: #{item[:price]}"
        end
      end
    end
  end
}