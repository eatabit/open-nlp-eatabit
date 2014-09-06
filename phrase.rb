class Phrase < Sentence

  FUZZY_THRESHOLD = 0.95

  def initialize(text, tokens, tags, chunks)
    super

    item_names        = Menu::ITEMS.map { |item| item[:name] }

    @item_matcher     = FuzzyMatch.new( item_names,
                                        gather_last_result: true,
                                        must_match_at_least_one_word: true)
    @category_matcher = FuzzyMatch.new( Menu::CATEGORIES,
                                        gather_last_result: false,
                                        must_match_at_least_one_word: false)
  end

  def category
    category_array = Array.new

    self.tokens.each do |token|
      result = @category_matcher.find_with_score(token)

      category_array.push result if result && result[1] >= FUZZY_THRESHOLD
    end

    return category_array.
      sort_by { |category| category[1] }.
      reverse.
      first
  end

  def nouns
    noun_array = Array.new

    tags.each_index.select { |i| /NN/.match(tags[i]) }.each do |index|
      noun = tokens[index]

      noun_array.push noun
    end

    return noun_array
  end

  def items
    menu_items_array = Array.new

    if self.nouns.any?
      noun_combinations = self.nouns.repeated_combination(3).to_a.collect { |combo| combo.uniq! }.uniq.compact

      noun_combinations.each do |combination|
        term = combination.join(' ')

        if result = @item_matcher.find_with_score(term)
          menu_item = Menu::ITEMS.collect { |menu_item| [menu_item[:name], result[1]] if menu_item.has_value?(result[0]) }.compact.first

          menu_items_array.push menu_item if menu_item.any?
        end
      end
    end

    if menu_items_array.any?
      return winners_by_score(menu_items_array).push(winner_by_popularity(menu_items_array)).uniq
    else
      return menu_items_array
    end
  end

  def item_count

    if item
      if cardinal_index = tags.find_index('CD')
        tokens[cardinal_index].to_i
      else
        return 1
      end
    else
      return 0
    end
  end

  private

  def winners_by_score(menu_items_array)
    menu_items_array.
      reject { |menu_item| menu_item[1] < FUZZY_THRESHOLD }.
      sort_by { |category| category[1] }.
      compact.
      reverse.
      collect { |menu_item| menu_item.first }
  end

  def winner_by_popularity(menu_items_array)
    menu_items_array.group_by { |i| i[0] }.
      max{ |x,y| x[1].length <=> y[1].
        length }.
        first
  end
end