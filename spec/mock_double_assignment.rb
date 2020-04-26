RSpec.describe 'Assignment for double lecture' do
    it 'is the first exercise of assignment for double' do
        db = double('Database Connection', connect: true, disconnect: 'Goodbye')
        expect(db.connect).to eq(true)
        expect(db.disconnect).to eq('Goodbye')
    end

    it 'is the second exercise in the assignment' do
        fs = double('File System')
        allow(fs).to receive(:read).and_return("Romeo and Juliet")
        allow(fs).to receive(:write).and_return(false)
        expect(fs.read).to eq("Romeo and Juliet")
        expect(fs.write).to eq(false)
    end
end

