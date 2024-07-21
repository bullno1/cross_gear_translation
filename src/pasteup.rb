require 'squib'
require_relative 'version'

characters = Squib.yaml file: 'data/characters.yml'

# Flatten the data
names = []
quotes = []
effects = []

characters['cards'].each do |card|
  (0..2).each do |i|
    names.push(card[i]["name"])
    quotes.push(card[i]["quote"])
    effects.push(card[i]["effect"])
  end
end

cards = Squib::DataFrame.new
cards["name"] = names
cards["quote"] = quotes
cards["effect"] = effects

Squib::Deck.new(cards: cards['name'].size, width: '2.5in', height: '1.286in') do
  use_layout file: "layouts/pasteup.yml"

  png file: "textbox.png", layout: "background"

  text str: cards['name'], layout: "name_shadow"
  text str: cards['name'], layout: "name"

  text str: cards['effect'], layout: "effect"

  text str: cards['quote'], layout: "quote"

  save_pdf sprue: "layouts/pasteup_sprue.yml", file: "pasteups.pdf"
end
