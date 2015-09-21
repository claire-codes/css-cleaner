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
        #write some code
      end
    end
  end

  describe '#load_html_file' do

    context 'read in file' do
      it 'existing HTML file' do
        #expect(subject.load_html_file("spec/data/hello_world.html")).to be
        expect(subject.load_html_file("spec/data/hello_world.html")).to be_a(Nokogiri::HTML::Document)
      end

      it 'non-existant file' do
        expect(subject.load_html_file("spec/data/i_dont_exist.html")).to eq("File does not exist")
      end
      
      it 'non-html file' do
        expect(subject.load_html_file("spec/data/im_not_html.txt")).to eq("Can't process: not HTML")
      end
    end
  end

end
