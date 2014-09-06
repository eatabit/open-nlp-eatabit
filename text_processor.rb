class TextProcessor

  def initialize(text)
    @text       = text

    @segmenter  = OpenNLP::SentenceDetectorME.new
    @tokenizer  = OpenNLP::TokenizerME.new
    @chunker    = OpenNLP::ChunkerME.new
    @tagger     = OpenNLP::POSTaggerME.new
    # @parser     = OpenNLP::Parser.new
  end

  def sentences
    sentence_array = Array.new

    @segmenter.sent_detect(@text).each do |sentence|

      tokens = tokenize!(sentence)
      tags   = tag!(tokens)
      chunks = chunk!(tokens, tags)

      sentence_array.push Sentence.new( sentence,
                                        tokens,
                                        tags,
                                        chunks)
    end

    sentence_array
  end

  def tokenize!(sentence)
    @tokenizer.tokenize(sentence)
  end

  def tag!(tokens)
    @tagger.tag(tokens)
  end

  def chunk!(tokens, tags)
    @chunker.chunk(tokens, tags)
  end
end