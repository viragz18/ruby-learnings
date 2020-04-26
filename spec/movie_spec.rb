class Actor
    def initialize(name)
        @name = name
    end

    def ready?
        sleep(3)
        true
    end
    def act 
        "I love you, baby!"
    end

    def fall_off_ladder
        "call my agent! no way!"
    end

    def light_on_fire
        false
    end
end

class Movie
    attr_reader :actor
    def initialize(actor)
        @actor = actor
    end

    def start_shooting
        if actor.ready?
            actor.act
            actor.fall_off_ladder
            actor.light_on_fire
            actor.act 
        end
    end
end

# actor = Actor.new('Virag Zaveri')
# movie = Movie.new(actor)
# movie.start_shooting

RSpec.describe Movie do
    let(:stuntman)  { double("Mr. Danger", act: 'I love you, baby!', ready?: true, fall_off_ladder: 'Sure! let\'s do it', light_on_fire: true ) } 
    subject {described_class.new(stuntman)}

    describe 'start_shooting method' do
        it 'expects an actor to do 3 actions' do
            expect(stuntman).to receive(:ready?).at_most(1).times  # at_least(1).times works too
            expect(stuntman).to receive(:act).exactly(2).times
            expect(stuntman).to receive(:fall_off_ladder).once
            expect(stuntman).to receive(:light_on_fire).exactly(1).times
            subject.start_shooting
        end
    end
end