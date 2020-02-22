class Card
    attr_accessor :rank 
    attr_accessor :suite

    def initialize(rank,suite)
        @rank = rank
       
        @suite =suite
    end
end

RSpec.describe Card do

    let!(:card) {Card.new('Ace','Spades')}
    let(:x) {1+1}
    let(:y) {x+10}

    it 'has a rank and that can change' do
        expect(card.rank).to eq('Ace')
        card.rank ='Queen'
        card.suite = 'Churkat'
        expect(card.rank).to eq('Queen')
        expect(y).to eq(12)
    end

    it 'has a Suite' do
        expect(card.suite).to eq('Spades')
    end

    it 'has a Custom error message' do
        comparison = 'Spades'
        expect(card.suite).to eq(comparison), "I expected #{comparison} but I got #{card.suite} instead!"
    end

    

end