class ProgrammingLanguage
    attr_reader :name

    def initialize(name='Ruby')
        @name = name
    end
end

RSpec.describe ProgrammingLanguage do
    let(:language) { ProgrammingLanguage.new('Python')}

    it 'Should have name Python' do
        expect(language.name).to eq('Python')
    end

    context 'it has default name' do
        let(:language) { ProgrammingLanguage.new}
        it 'should have name Ruby' do
            expect(language.name).to eq('Ruby')
        end
    end

end