Translation for the card game Cross Gear: https://www.drive-games.com/cross-gear, including the expansion: "Belief in Justice".

# To build the card translation

1. Make sure you have [rvm](https://rvm.io/).
2. Run `bundle install`.
3. Run `bundle exec rake`.

The paste up and character cards will be generated in `_output`.

# To build the rule book

1. Install [typst](https://typst.app/).
2. `cd rulebook`.
3. `typst compile rulebook.typ`.

`rulebook.pdf` will be generated.
