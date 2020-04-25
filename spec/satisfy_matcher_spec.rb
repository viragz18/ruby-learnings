RSpec.describe 'satisfy matcher' do
    subject { 'racecar' }
    # subject { 'racecars' }

    it 'confirms subject value is a palindrome ' do
        expect(subject).to satisfy { |value| value == value.reverse}
    end

    it 'can accept a custom error meassage' do
        expect(subject).to satisfy('be a palidndrome') do |value|
            value == value.reverse
        end
    end
end