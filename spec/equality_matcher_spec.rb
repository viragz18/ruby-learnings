RSpec.describe 'eql matcher' do
    let(:a) {3.0}
    let(:b) {3}

    describe 'eq method' do   
       it 'compares just the value and not the type' do
            expect(a).to eq(3)
            expect(b).to eq(3.0)
            expect(a).to eq(b)
       end
    end

    describe 'eql method' do
        it 'compares the value as well as data type' do
            expect(a).not_to eql(3)
            expect(b).not_to eql(3.0)
            expect(a).not_to eql(b)

            expect(a).to eql(3.0)
            expect(b).to eql(3)
        end
    end
end