RSpec.describe 'predicate methods and errors' do
    it 'compares the value using ruby methods' do
        result =16/2
        expect(result.even?).to eq(true)
    end

    it 'uses the predicate methods for comparison' do
        expect(16/2).to be_even
        expect(0).to be_zero
        expect(13).to be_odd
        expect([]).to be_empty
        expect(4).not_to be_odd
    end

    describe 0 do
        it { is_expected.to be_zero }
        it { is_expected.not_to be_odd }
    end

end