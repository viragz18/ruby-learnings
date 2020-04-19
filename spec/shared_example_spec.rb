RSpec.shared_examples 'a ruby spec which returns the length of subject' do
    it 'should return the correct length of the subject' do
        expect(subject.length).to eq(3)
    end
end

RSpec.describe Array do
    subject{ [1,2,3]}
    include_examples 'a ruby spec which returns the length of subject'
end

RSpec.describe String do
    subject { 'abc' }
    include_examples 'a ruby spec which returns the length of subject'
end

RSpec.describe Hash do
    subject {{a:1,b:2,c:3}}
    include_examples 'a ruby spec which returns the length of subject'
end

class SausageLink 
    def length
        3
    end

end

RSpec.describe SausageLink do
    subject{ described_class.new }
    include_examples 'a ruby spec which returns the length of subject'
end


