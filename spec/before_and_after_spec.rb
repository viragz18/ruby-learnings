RSpec.describe 'before and after hooks' do
    before(:context) do
        puts 'before context'
    end

    before (:example) do
        puts 'Before alwwuys'    
    end

    it 'is jus tandom exp' do
        expect(5*4).to eq(20)
    end

    it 'just another exampke' do
        expect(5-5).to eq(0)
    end

    after (:example) do
        puts 'After always'
    end
    after(:context) do
        puts 'after context'
    end
end