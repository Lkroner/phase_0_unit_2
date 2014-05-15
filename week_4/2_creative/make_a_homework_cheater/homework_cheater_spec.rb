require_relative "my_solution"

describe 'essay_writer' do
  let(:first_sentence) {["The Modern Astronomer", "Neil deGrasse Tyson", "1958", "He is an American astrophysicist, author, and science communicator. 
  	He is currently the Frederick P. Rose Director of the Hayden Planetarium at the 
  	Rose Center for Earth and Space and a research associate in the department of astrophysics at the American Museum of Natural History", male]}
  let(:second_sentence) {["The Modern Astronomer", "France Córdova", "1947", "She is an American astrophysicist, researcher and university administrator. 
  	As of March 2014, she is the director of the National Science Foundation. Previously, she was the eleventh President of Purdue University", female]}
  let(:third_sentence) {["Earth's Comet", "Halley's Comet", "240 BC, when it was first observed", "It is the best-known of the short-period comets and is visible from Earth every 75–76 years. 
  	Halley is the only short-period comet that is clearly visible to the naked eye from Earth, and the only naked-eye comet that might appear twice in a human lifetime.", thing]}

  it "is defined as a method" do
    defined?(essay_writer).should eq 'method'
  end
  it "requires a five arguments" do
    method(:essay_writer).arity.should eq 5
  end
  it "returns the grammatically correct sentence of the first sentence" do
    essay_writer(first_sentence).should eq "The Modern Astronomer
    	     Neil deGrasse Tyson was born in 1958. He changed the world and is someone we should all learn about further. 
    	     He is an American astrophysicist, author, and science communicator. 
  	         He is currently the Frederick P. Rose Director of the Hayden Planetarium at the 
  	         Rose Center for Earth and Space and a research associate in the department of astrophysics at the American Museum of Natural History. 
  	         Neil deGrasse Tyson is important to the world."
  end
  it "returns the grammatically correct sentence of the second sentence" do
    essay_writer(second_sentence).should eq "The Modern Astronomer 
    	     France Córdova was born in 1947. She changed the world and is someone we should all learn about further. 
    	     She is an American astrophysicist, researcher and university administrator. 
  	         As of March 2014, she is the director of the National Science Foundation. Previously, she was the eleventh 
  	         President of Purdue University. France Córdova is important to the world."
  end
  it "returns the grammatically correct sentence of the third sentence" do
    essay_writer(third_sentence).should eq "Earth's Comet
    	     Halley's Comet was important since 240 BC, when it was first observed. It changed the world and is something we should all learn about further. 
    	     It is the best-known of the short-period comets and is visible from Earth every 75–76 years. 
  	         Halley is the only short-period comet that is clearly visible to the naked eye from Earth, 
  	         and the only naked-eye comet that might appear twice in a human lifetime.. 
  	         Halley's Comet is important to the world."
  end
end






