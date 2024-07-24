#import "@preview/wrap-it:0.1.0": wrap-content

#set document(title: [CROSS GEAR rule])

#show link: underline

#show heading.where(level: 1): set align(center)


= Play area

#image("zones.png")

= How to read cards

#image("card.png")

= Card states

#let state = image("states.png", height: 15pt * 8)
#wrap-content(state, [
GEAR and art cards and exist in one of the following two states:

- Ready (vertical)
- Exhausted (horizontal)
], align: right)

= Paying for action <pay-for-action>

Exhaust one ready GEAR card.
It does not matter whether the GEAR card is face up or face down.

#image("cost.png")

= About GEARLINK

GEARLINK is an effect that can be activated by paying the GEARLINK cost: Turn that many GEAR cards from the ready face up state into the exhausted face down state.

GEARLINK X means the cost can be chosen by the player activating the effect.

#image("gearlink.png")

= Effect timing and activation order

The effect of arts must be activated at the timing written on the card.

If multiple effects are activated at the same time, the player whose cards have the effects decide the order of activation.

If the effects of both players' arts are activated at the same time, the active player resolves their effects first, then the opposing player resolves theirs.

= Conflict between rule and card effects

If there is a confict between the rule and a card effect, the card effect takes precedence.

= Concepts

#table(
  columns: 2,
  [\[DRIVE\]], [Activate this effect when you perform a DRIVE],
  [\[ACTIVE\]], [You can attack without #link(<pay-for-action>, [paying for action])],
  [\[DRAIN\]], [When this art deals damage, you recover life equal to that amount],
  [\[ENTER\]], [When this art comes into play],
  [\[EXIT\]], [When an art accumulates damage equal to or greater than its power, or due to a destruction effect, the art is moved from the field to the discard pile],
  [\[ATTACK\]], [When this art attacks],
  [\[RETREAT\]], [When this art is moved from the field to the discard pile],
  [\[SPIKE\]], [When this art attacks and get blocked, it deals excess damage to the opponent],
  [Destroy], [The card is moved from the field to the discard pile by the effect of an art],
)

== Example of \[SPIKE\]

#let spike = image("spike.png", height: 15pt * 15)
#wrap-content(spike, [
You perform GEARLINK ① with your "State of Transcendence" (2 power) bringing its attack power to 5.
The opponent blocks with "Looping Dark Barrier" (3 power).
The opponent will receive 2 damage.

When the blocker has already received damage due to blocking or other effects, the excess damage will be increased.
For example, if "Looping Dark Barrier" has received 2 damage before this attack, it will block 1 damage from the attack and 4 damage will be dealt to the opponent.
])

= Victory conditions

You win if you meet any of the following conditions:

- If the opponent's life is reduced to 0.
- When the opponent draws from a deck with no cards.
  All effects happening at that point will be cancelled.

= Setup

- Each player starts with 20 life (managed with calculators, notes, etc...).
  There is no upper limit.
  When life is gained, it is possible to go over the initial 20.
- Each player place 10 GEAR cards face down in their GEAR area.
- For first time players, we recommend excluding the advanced characters, Sharon and Lucia, from character selection.

== Playing with one common set

+ A random player (chosen by "rock, paper, scissor" or other means), chooses between getting to pick character first or getting to decide turn order.
  Perform "Character selection" then "Turn order selection".

  "Character selection": If you get to choose character first, pick one character from your CROSS GEAR set and put it in your character area.
  You will also receive all art cards for that character (3 types x 5 copies).
  Character selection proceeds in this order: You → Opponent → You → Opponent.

  "Turn order selection": If you are the player who get to pick turn order, you choose to go first or second.
+ Each player shuffles their two art card sets (15 + 15 cards) into one deck and put it in their deck area.
+ Each player draws their initial hand of 4 cards.

== Playing with your own set

+ Each players secretly select their two characters without showing it to their opponent.
+ Each player shuffles their two characters' corresponding art card sets (15 + 15 cards) into one deck and put it in their deck area.
+ Reveal the character cards at the same time.
+ The winner of "rock, paper, scissor" or other methods chooses to go first or second.
+ Each player draws their initial hand of 4 cards.

#pagebreak()
= Turn structure

#[
  #set align(center)
  Ready & Draw Phase → Main Phase → End Phase
]

== Ready & Draw Phase

The active player does the following in order:

- Ready all your art and GEAR cards.
- Gain 2 GEAR cards (if there is only 1 left, gain 1 instead).

  \* "Gain a GEAR card" means "Place a GEAR card from your GEAR area face up into your GEAR gauge".

  \* On the very first turn, the first player only gain 1 GEAR card instead of 2.
- Draw 1 card.

  \* On the very first turn, the first player does not draw.

== Main Phase

The active player can perform any of the following action after #link(<pay-for-action>, [paying for the action]).
You can perform as many actions as you like in any order.

=== Play an art card

Put an art card from your hand into the field in the ready state.

\* Up to 3 art cards can be in the field.

\* Even when put into play by an effect, the art will enter play ready.

=== Retreat

Put one of you arts on the field into the discard pile.

\* Put the DRIVE cards of that art into the discard pile too.

\* Its \[EXIT\] effect will not be activated.

=== Accelerate

Draw 1 card.

=== DRIVE

If you have an art card in your hand that is the same as an art on your field, you can stack the hand card under the field card.
This is called performing a DRIVE.
This also includes DRIVE-ing cards from the discard pile due to card effects.
The hand card being stacked under is called a DRIVE card.

Then, perform the following steps:

+ That art gets +1 power.

   \* If the DRIVE card is removed later, the power will decrease.
+ If there is a \[DRIVE\] effect in the art card, it will be activated.
+ Draw 1 card.
+ OVERDRIVE: When the 4th DRIVE card is attached to an art, it gains OVERDRIVE:

  - The art gains \[ACTIVE\] for this turn.
  - Ready the art.

Notes:

- During step 1-4, do not resolve other effects.
- If an art card leaves play, put all its DRIVE card in the discard pile.
- Since DRIVE cards are considered to be in the DRIVE area, effects such as \[ENTER\] and \[EXIT\] will not be activated.

=== Attack

+ Attack declaration step

  Exhaust one ready art on your field and target your opponent.
  If there is an \[ATTACK\] effect, it will be resolved after target declaration.
+ Block declaration step

  The player being attacked may choose one of their ready arts and make it the target of the attack instead.
  This is called a block.
+ Damage step
  - If block was declared.

    Each art will deal damage to the other equal to their power.
    Arts that receive damage greater or equal to their power will be destroyed.

    An art will accumulate damage during the turn but its power will not decrease as a result of damage.
  - If block was not declared.

    Deal damage to the attacked player's life equal to the power of the attacking art.

== End phase

Do the following in order then pass turn to your opponent:

+ If there is any effect that activates during the End Phase, resolve it.
+ If the active player has 6 or more cards in their hand, discard until they have 5 cards.
+ Heal all damage from all arts.
+ If there is a continuous effect with "until the end phase" or "this turn", the effect ends.

== Additional notes

Every phase has a "Start of" and "End of" trigger.
"Start of" means the effect happens before all steps in the phase.
"End of" means the effect happens after all steps in the phase.

#pagebreak()

= FAQ

Q: When there are 2 or fewer cards in the deck, can the effects that reveal 3 cards such as "Ultimate Price" or "Moment of Silence" be activated? \
A: No.

Q: If "Sword of Might and Wisdom" leaves the field at the same time as the opponent's art, can the effect of "Sword of Might and Wisdom" deal 1 damage to the opponent? \
A: Yes.

Q: When I attack with "Terrifying Bullet" and deal 3 damage to all of my opponent's arts using the GEARLINK ④ effect, which comes first: the effect damage or the block? \
A: The effect damage.

Q: When resolving the effect of "Raging Flame" (discard the top 4 cards from the deck), what do you do if there are only 2 cards in the deck? \
A: Discard 2 cards.

Q: When I have "White Wolf's Charge" and "Animal Cooperation" on the field, will the effect of my opponent's "Terrifying Bullet" (deal 3 damage to all arts) destroy "White Wolf's Charge" since "Animal Cooperation" is no longer in play? \
A: No, when "Animal Cooperation" is placed into the discard pile, "White Wolf's Charge" power will be increased so it will no longer be destroyed by 3 damage.

Q: When resolving the effect of "Bewitching Reward", what to do when there are 2 arts with the same power? \
A: The controller of "Bewitching Reward" chooses the target to destroy.

Q: If I receive 3 DRIVE cards at once due to the effect of "Bewitching Reward", would I draw 3 cards? \
A: Yes.

Q: What happens if there is only one face down GEAR card when resolving "Synthesis of Void and Wisdom"? \
A: The effect cannot be activated.

Q: My "State of Transcendence" attacks with 5 power.
   The opponent blocks with "Looping Dark Barrier" and activates its effect.
   How to resolve the \[SPIKE\] effect? \
A: Because "Looping Dark Barrier" will not receive damage from "State of Transcendence", the effect of \[SPIKE\] will not be resolved.

Q: If I activate the effect of "Looping Dark Barrier" when it takes damage from my opponent's art during a block, will the damage dealt to my opponent's art decrease? \
A: The damage value is determined when each art deals damage equal to their power.
   Then, "Looping Dark Barrier"'s power is reduced to pay for its effect.
   This will not affect the damage it deals to your opponent's art.

Q: When my "Unwavering Will" attacks with GEARLINK ① and it is blocked by "Theory of Decay and Destruction" or "Ultimate Price" then get destroyed by their \[EXIT\] effect, do I still recover life due to the effect of "Unwavering Will"? \
A: Yes.

Q: The effect of "Bewitching Reward" says: "You may discard 1 DRIVE card from this art. If you do, destroy 1 of your opponent's arts...".
   Can this effect still be activated if the opponent has no arts in play? \
A: Yes.

Q: \[DRAIN\] says "When this art deals damage, you recover life equal to that amount".
   Do I still recover life when I deal damage to my opponent's art by blocking? \
A: Yes.

Q: My opponent's field has "Animal Cooperation" and "Purple Mist's Guidance" and there are 19 cards in their discard pile.
   I attack with "Terrifying Bullet" and activate its GEARLINK ④ effect, will "Purple Mist's Guidance" remain on the field? \
A: Yes, because when "Animal Cooperation" is placed in the discard pile, the number of cards become 20 and "Purple Mist's Guidance" gets +6 power.

Q: If I DRIVE "White Wolf's Charge" when my opponent has no art on the field, will the effect be activated? \
A: No. Only the +1 power and the card draw from the DRIVE will be resolved.

Q: If an attacking art is blocked and accumulates damage, will its power decrease for the rest of the turn? \
A: No, power is not decreased due to damage.

Q: When "Bewitching Reward" gains OVERDRIVE then the number of DRIVE card is reduced by its DRIVE effect, if a 4th DRIVE card is attached, will it gain OVERDRIVE again? \
A: Yes.

Q: When attacking with the effect of "Unwavering Will", can I also target ready arts? \
A: Yes.

Q: Is it possible to recover more life than the initial value? \
A: Yes.

Q: Does the victory condition "opponent draws from a deck with no cards" also cover drawing due to reasons such as DRIVE? \
A: Yes.

Q: If there is only 1 card in my deck, can I choose the "draw 2 cards" effect of "Blood-stained Crimson Wings"? \
A: Yes and you will lose the game.

Q: Can the \[ATTACK\] effect of "Animal Cooperation" be chosen if there is no such card in the deck?
   And if so, can I just shuffle the deck? \
A: Yes, it can be chosen and you will shuffle the deck.

Q: If there is one or more "Animal Cooperation" in the deck, can I just shuffle the deck without putting it into play? \
A: No.

Q: The \[RETREAT\] effect of "Theory of Decay and Destruction" states: "If it \[EXIT\], banish it instead", would the \[EXIT\] and \[RETREAT\] effect of the affected art be skipped? \
A: Yes, banishing means not placing in the discard pile so neither \[EXIT\] nor \[RETREAT\] would be activated.

Q: Due to the \[ATTACK\] effect of my opponent's art, my "Theory of Decay and Destruction" leaves play.
   I target the attacking art with the GEARLINK ① effect of "Theory of Decay and Destruction" and banish the attacking art.
   Do I still take damage from the attacking art? \
A: No.

Q: When there are no cards in my GEAR area, can the GEARLINK ② effect, "Gain 1 GEAR card" of "Superior Talent" be chosen? \
A: No.
