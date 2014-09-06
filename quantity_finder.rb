class QuantityFinder

  def initialize(tokens, chunks)
    @tokens   = tokens
    @chunks   = chunks
    @quantity = 1
  end

  def find

    @chunks.each_index.select { |i| (i == 0 && @chunks[i] == 'B-PP') || (i > 0 && @chunks[i] == 'B-PP' && !/\-NP/.match(@chunks[i -= 1])) }.each do |index|
      chunk_length = @chunks[index..chunks.length].take_while { |chunk| /\-[P,N]P/.match(chunk) }.length

      prepositional_phrases.push tokens[index..(index += (chunk_length -= 1))].join(' ')
    end
  end

  private

  def strip_tags(tagged, downcase=false)
    return nil unless tagged

    text = tagged.gsub(/<[^>]+>/m, "")
    text = text.gsub(/\s+/m, " ")
    text = text.gsub(/\A\s*/, "")
    text = text.gsub(/\s*\z/, "")
    if downcase
      return text.downcase
    else
      return text
    end
  end
end