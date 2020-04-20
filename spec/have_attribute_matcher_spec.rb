class ProfessionalWrestler
    attr_reader :name, :finishing_move
    
    def initialize(name, finishing_move)
        @name = name
        @finishing_move = finishing_move
    end
end

RSpec.describe 'have_attribute matcher' do
    describe ProfessionalWrestler.new('BigShow', 'Chockslam') do
        it 'checks for the object attribute and values' do
            expect(subject).to have_attributes(name: 'BigShow', finishing_move: 'Chockslam')
        end

        it { is_expected.to have_attributes(name: 'BigShow', finishing_move: 'Chockslam')}
    end
end