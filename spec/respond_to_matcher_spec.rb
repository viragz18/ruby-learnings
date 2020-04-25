class HotChoclate
    def drink
        'Delicious'
    end

    def discard
        'PLOP'
    end

    def purchase(number)
        "Awesome, I just purchase #{number} of hot chocalate"
    end
end

class Coffee
    def drink; end
    def discard; end
    def purchase(number); end
end

RSpec.describe HotChoclate do
    it "confirms that an object can respond to a method" do
        expect(subject).to respond_to(:drink)
        expect(subject).to respond_to(:drink, :discard)
        expect(subject).to respond_to(:drink, :discard, :purchase)
    end

    it "confirms an object can respond to a method with an argument" do
        expect(subject).to respond_to(:purchase).with(1).argument
    end

    it { is_expected.to respond_to(:drink, :purchase,:discard) }
    it { is_expected.to respond_to(:purchase).with(1).argument }
end