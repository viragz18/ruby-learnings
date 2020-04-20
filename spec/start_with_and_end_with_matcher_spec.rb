RSpec.describe 'start_with and end_with matcher' do
    describe 'caterpillar' do
        it { is_expected.to start_with('cat')}
        it { is_expected.to end_with('pillar')}
        #it { is_expected.to end_with('Pillar')} will fail due to case sensitivity
    end

    describe [:a, :b, :c, :d] do
        it { is_expected.to start_with(:a)}
        it { is_expected.to start_with(:a, :b)}
        it { is_expected.to start_with(:a, :b, :c)}
        it { is_expected.to end_with(:c, :d)}
        it { is_expected.not_to end_with(:c, :t)}
    end

end