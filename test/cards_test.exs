defmodule CardsTest do
  use ExUnit.Case
  doctest Cards

  test "creates the deck" do
    assert length(Cards.create_deck) == 52
  end

  test "shuffles the deck" do
    deck = Cards.create_deck()
    assert length(Cards.shuffle(deck)) == length(deck)
  end

  test "deck contains Two of Diamonds" do
    deck = Cards.create_deck()
    assert Cards.contains?(deck, "Two of Diamonds")
  end

  test "deck does not contain Joker" do
    deck = Cards.create_deck()
    assert !Cards.contains?(deck, "Joker")
  end

  test "hand of 2 can be dealt" do
    deck = Cards.create_deck()
    { hand, remains_of_deck } = Cards.deal(deck, 2)
    assert length(hand) == 2
    assert length(remains_of_deck) == 50
  end
end
