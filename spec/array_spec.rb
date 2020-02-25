RSpec.describe Array do
    it 'should have empty subject' do
        expect(subject.length).to eq(0)
        subject.push(4)
        expect(subject.length).to eq(1)
    end
end