require 'pry'
  # Your Luhn Algorithm Here
class Validator
  attr_reader :card_number
  def initialize(card_number)
    @card_number = card_number
    @valid = false
  end

  def validate_card
    reverse_split
    doubler
    splitter
    check_card
  end

  def reverse_split
    @card_number = card_number.reverse.chars
    # @card_number = card_number.chars
  end

  def doubler
    @card_number = card_number.map.with_index do |value, index|
      if index.odd?
        value = value.to_i * 2
      else
        value.to_i
      end
    end
  end
  # if sum is over 10, split and add digits together
  def splitter
    @card_number = card_number.map do |value|
      if value > 9
        value -= 9
      else
        value
      end
    end
  end
  # sum entire array together
  def check_card
    @card_number = card_number.sum
    if @card_number % 10 == 0
      @valid = true
    else
      @valid = false
    end
  end
  # if sum of array % 10 == 0 card is valid
  # else card is invalid

  # Output
  ## If it is valid, print "The number is valid!"
  ## If it is invalid, print "The number is invalid!"
end
