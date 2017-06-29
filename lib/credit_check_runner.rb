require './credit_check'

new_card = Validator.new("342801633855673")
puts new_card.validate_card
