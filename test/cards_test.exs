defmodule CardsTest do
  use ExUnit.Case
  doctest Cards

  test "creates the deck" do
    assert Cards.create_deck == ["Ace", "Two", "Three"]
  end

  test "shuffles the deck" do
    deck = Cards.create_deck()
    assert length(Cards.shuffle(deck)) == length(deck)
  end

  test "deck contains Two" do
    deck = Cards.create_deck()
    assert Cards.contains?(deck, "Two")
  end

  test "deck does not contain King" do
    deck = Cards.create_deck()
    assert !Cards.contains?(deck, "King")
  end
end
