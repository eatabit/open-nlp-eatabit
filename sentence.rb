class Sentence

  def initialize(text, tokens, tags, chunks)
    @text   = text
    @tokens = tokens
    @tags   = tags
    @chunks = chunks
  end

  def to_s
    @text
  end

  def tokens
    @tokens
  end

  def tags
    @tags
  end

  def chunks
    @chunks
  end

  def prepositional_phrases
    prepositional_phrase_array = Array.new

    chunks.each_index.select { |i| (i == 0 && chunks[i] == 'B-PP') || (i > 0 && chunks[i] == 'B-PP' && !/\-NP/.match(chunks[i - 1])) }.each do |index|
      phrase_chunks        = chunks[index..(chunks.length - 1)].take_while { |chunk| /\-?(P|N)P/.match(chunk) }
      phrase_chunk_length  = phrase_chunks.length
      phrase_tokens        = tokens[index..(index + (phrase_chunk_length - 1))]
      phrase_tags          = tags[index..(index + (phrase_chunk_length - 1))]
      phrase_text          = phrase_tokens.join(' ')

      prepositional_phrase_array.push Phrase.new(phrase_text, phrase_tokens, phrase_tags, phrase_chunks)
    end
`
    return prepositional_phrase_array
  end

  def noun_phrases
    noun_phrase_array = Array.new

    chunks.each_index.select { |i| (i == 0 && chunks[i] == 'B-NP') || (i > 0 && chunks[i] == 'B-NP' && !/\-[N,P]P/.match(chunks[i - 1])) }.each do |index|
      phrase_chunks        = chunks[index..chunks.length].take_while { |chunk| /\-?(P|N)P/.match(chunk) }
      phrase_chunk_length  = phrase_chunks.length
      phrase_tokens        = tokens[index..(index + (phrase_chunk_length - 1))]
      phrase_tags          = tags[index..(index + (phrase_chunk_length - 1))]
      phrase_text          = phrase_tokens.join(' ')

      noun_phrase_array.push Phrase.new(phrase_text, phrase_tokens, phrase_tags, phrase_chunks)
    end

    return noun_phrase_array
  end
end