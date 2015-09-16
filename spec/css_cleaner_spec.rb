describe Css_Cleaner do

  let (:subject) { described_class.new }

  let (:expected_css) {}

  describe '#load_css_files' do

    context 'there is a css file' do
      it 'reads in the file' do

        expect(subject.load_css_files "../lib/").to eq(:expected_css)
      end
    end

    context "there isn't a css file" do
      it 'returns an error' do

      end
    end


  end




end


#spec 1
#locate css file (hardcode for now)
#read in a css file
#collection of css classes

#spec 2