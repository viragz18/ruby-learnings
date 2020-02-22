RSpec.describe 'math calculations' do
    it 'does basic math' do
        expect(5*3).to eq(15)
        expect(12/2).to eq(6)
        expect(4-4).to eq(0)
        expect(1+1).to eq(2)
    end
end