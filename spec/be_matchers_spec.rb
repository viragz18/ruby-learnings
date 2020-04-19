# if 2.even?
#     puts 'hi'
# end

#falsy values --- false, nil

# truthy values ---- everything else is true in ruby\

# 2 predicate methods be truthy and be falsy

RSpec.describe 'be matchers' do
    it 'can test for truthiness' do
        expect(true).to be_truthy
        expect('Hello').to be_truthy
        expect(5).to be_truthy
        expect(0).to be_truthy
        expect([1,2]).to be_truthy
        expect({}).to be_truthy
        expect(:symbol).to be_truthy
    end

    it 'can test for the falsiness' do 
        expect(false).to be_falsy
        expect(nil).to be_falsy
    end

    it 'can test for nil' do
        expect(nil).to be_nil
        my_hash = { a: 5}
        expect(my_hash[:b]).to be(nil)
    end

end