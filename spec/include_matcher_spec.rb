RSpec.describe 'include_matcher' do
    describe 'hot choclate' do
        it 'checks for substring inclusion' do
            expect(subject).to include('choc')
            expect(subject).to include('clate')
            expect(subject).to include('hot')
        end

        it { is_expected.to include('hot c')}
    end

    describe [1,2,3,4,5] do
        it {is_expected.to include(1,4)}
    end

    describe ({a:1,b:2,c:3}) do
        it { is_expected.to include(a:1)}
        it { is_expected.to include(:b)}
        it { is_expected.to include(:b, :c)}
    end
end