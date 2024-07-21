require 'squib'
require_relative 'version'

characters = Squib.yaml file: 'data/characters.yml'

# Flatten the data
(0..2).each do |i|
  characters["card_#{i + 1}.name"] = characters['cards'].collect do |cards|
    cards[i]['name']
  end

  characters["card_#{i + 1}.quote"] = characters['cards'].collect do |cards|
    cards[i]['quote']
  end

  characters["card_#{i + 1}.effect"] = characters['cards'].collect do |cards|
    cards[i]['effect']
  end
end

Squib::Deck.new(cards: characters['name'].size, width: '2.5in', height: '3.5in') do
  use_layout file: "layouts/character_card.yml"

  text str: characters['name'], layout: "name"

  line layout: "separator_1"
  line layout: "separator_2"
  line layout: "separator_3"

  (1..3).each do |i|
    text str: characters["card_#{i}.name"], layout: "card_#{i}.name"
    text str: characters["card_#{i}.effect"], layout: "card_#{i}.effect"
  end

  save_pdf sprue: "layouts/character_card_sprue.yml", file: "character_cards.pdf"
end
