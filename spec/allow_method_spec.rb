RSpec.describe 'allow method review' do
    it 'can customize retturn value for methods on doubles' do
        calculator =double
        allow(calculator).to receive(:add).and_return(15)
        expect(calculator.add(5)).to eq(15)
        expect(calculator.add(5,-2,-1)).to eq(15)
        expect(calculator.add("Hello")).to eq(15)
    end

    it 'can stube one or more methods on a real objects' do
        arr = [1,2,3]
        expect(arr.sum).to eq(6)
        allow(arr).to receive(:sum).and_return(10)
       expect(arr.sum).to eq(10)

       arr.push(4)
       expect(arr).to eq([1,2,3,4])

    end

    it 'can return multiple return values in sequence' do
        mock_array = double
        allow(mock_array).to receive(:pop).and_return(:c, :b, nil)
        expect(mock_array.pop).to eq(:c)
        expect(mock_array.pop).to eq(:b)
        expect(mock_array.pop).to eq(nil)
        expect(mock_array.pop).to eq(nil)
    end
end