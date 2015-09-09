describe "EvenFibonacci" do
  let(:app) { EvenFibonacci.new(1000) }
  let(:invalid_app) { EvenFibonacci.new }

  describe "attributes and method tests" do
    subject { app }

    it "raises ArgumentError when initialized without a limit parameter" do
      expect { invalid_app }.to raise_error(ArgumentError)
    end 
  end

  describe "#get_even_fibonacci_sum" do
    it 'returns the correct sum when the limit is 10' do
      expect(EvenFibonacci.new(10).get_even_fibonacci_sum).to eq(10)
    end

    it 'returns the correct sum when the limit is 100' do
      expect(EvenFibonacci.new(100).get_even_fibonacci_sum).to eq(44)
    end

    it 'returns the correct sum when the limit is 1000' do
      expect(EvenFibonacci.new(1000).get_even_fibonacci_sum).to eq(798)
    end
  end

  describe "project euler solution" do
    it "returns the correct solution" do
      expect(app.get_even_fibonacci_sum).to eq(798)
    end
  end 
end
