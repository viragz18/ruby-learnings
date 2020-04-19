RSpec.shared_context 'common' do
    before do
        @foods=[]
    end

    def helper_method
        5
    end

    let(:some_variable) {[1,2,3]}
end

RSpec.describe 'first example group' do
    include_context 'common'

    it 'can use the common before method' do
        expect(@foods.length).to eq(0)
        @foods << 'Sushi'
        expect(@foods.length).to eq(1)
    end

    it 'common before method across multiple tests' do
        expect(@foods.length).to eq(0)
    end

    it 'use the helper method from the shared context' do
        expect(helper_method).to eq(5)
    end
end

RSpec.describe 'second group of examples' do
    include_context 'common'

    it 'can be used as let variable of common context' do
        expect(some_variable).to eq([1,2,3])
    end
end