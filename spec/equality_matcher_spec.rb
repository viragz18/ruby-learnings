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

    describe 'equal and be matcher' do
        let(:c) {[1,2,3]}
        let(:d) {[1,2,3]}
        let(:e) {c}

        it 'cares about the value, type as well as identity' do
            expect(c).to eq(d)
            expect(c).to eql(d)

            expect(c).not_to equal(d)
            expect(c).not_to be(d)

            expect(c).to be(e)
            expect(c).to equal(e)

            expect(c).not_to equal([1,2,3])
        end
    end
end