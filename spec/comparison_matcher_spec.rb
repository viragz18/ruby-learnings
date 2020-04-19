RSpec.describe 'comparison matcher' do
    it 'allows to compare the values' do
        expect(5).to be >3
        expect(5).to be <13
        expect(5).to be >=3
        expect(5).to be <=13
        expect(5).not_to be >15
    end

    describe 100 do
        it { is_expected.to be <105}
        it { is_expected.to be <=100}
        it { is_expected.to be >95}
        it { is_expected.to be >=99}
        it { is_expected.not_to be <=99}
    end

end