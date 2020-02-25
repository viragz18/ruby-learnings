RSpec.describe "nested hooks" do
    before(:context) do
        puts "I am outer before context"
    end

    before(:example) do
        puts "I am outer before example"
    end

    it "does basic math first case " do 
      expect(1+1).to eq(2)   
    end

    it "it does another second math case " do
        expect(2-2).to eq(0)
    end

    context "with condition A" do
        before(:context) do
            puts "I am  inner before context"
        end
    
        before(:example) do
            puts "I am inner before example"
        end

        it "does basic math in inner first case " do 
            expect(1+1).to eq(2)   
          end
      
          it "it does another second in inner math case " do
              expect(2-2).to eq(0)
          end
    
    end


end