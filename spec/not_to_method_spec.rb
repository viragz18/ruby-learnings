RSpec.describe 'not_to_method' do
    it 'checks that 2 values do not match' do
        expect(5).not_to eq(4)
        expect('Hellp').not_to eq('hellp')
        expect([1,2,3]).not_to eq([1,2,4])
    end
end