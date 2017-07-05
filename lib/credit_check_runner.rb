require './lib/credit_check'

new_card = Validator.new("5541808923795240")
puts new_card.validate_card
