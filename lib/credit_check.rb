class Validator
  attr_reader :card_number

  def initialize(card_number)
    @card_number = card_number
  end

  def validate_card
    reverse_split
    doubler
    splitter
    check_card
  end

  def reverse_split
    card_number.reverse.chars
  end

  def doubler
    reverse_split.map.with_index do |value, index|
      if index.odd?
        value = value.to_i * 2
      else
        value.to_i
      end
    end
  end

  def splitter
    doubler.map do |value|
      if value > 9
        value -= 9
      else
        value
      end
    end
  end

  def check_card
    doubler = card_number.sum
    if doubler % 10 == 0
      puts "The number is valid!"
    else
      puts "The number is invalid!"
    end
  end
end
