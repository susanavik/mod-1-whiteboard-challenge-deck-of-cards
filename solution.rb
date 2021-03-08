class Deck
    attr_accessor :cards

    @@all = []

    def initialize(cards)
        @cards = cards
        @@all << self
    end
 

    def self.all
        @@all
    end

    def choose_card
        random_card = Deck.all.sample
        random_card.remove
    end
end

class Card

    attr_reader :rank, :suit
    rank = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
    suit = ["Hearts", "Clubs", "Diamonds", "Spades"]

    def initialize(rank, suit)
        @rank = rank
        @suit = suit
    end  

    def Deck.all
        suits.each do |suit|
            ranks.each do |rank|
                Deck << Card.new(rank, suit)
            end
        end
    end
end

# 5_of_spaces = Card.new(5, spades)