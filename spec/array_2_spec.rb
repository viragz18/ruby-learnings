RSpec.describe Array do
    subject(:sally) do
        [1,2]
    end

    it 'should have 2 elements in array' do
        expect(sally.length).to eq(2)
        sally.pop()
        expect(sally.length).to eq(1)
    end

    it "again have total 2 elements" do
        expect(sally.length).to eq(2)
    end
end