RSpec.describe 'change matcher' do
    subject{[1,2,3,1,2,4,14]}

    it 'checks that method changes object state' do
        #expect{ subject.push(4) }.to change{ subject.length }.from(3).to(4)
        expect{ subject.push(4) }.to change{ subject.length }.by(1)
    end

    it 'accepts negative arguments' do
        expect{ subject.pop }.to change{subject.length}.by(-1)
    end
end