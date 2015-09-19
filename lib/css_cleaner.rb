require 'nokogiri'
require 'css_parser'
require 'find'

class Css_Cleaner

  # I just started looking at reading in one single HTML and CSS file each
  # It should read in the HTML and hold it
  # It should read in the CSS and hold all the selectors
  # It should compare them all and output the ones that aren't used somehow

  #KF What would this look like in OO land? This would be the master/'boot' object and
  # would delegate to other objects

  #KF When this searches other projects, we'll want to make it take a parameter for the
  # file locations/point it at the external project... We should look at Rubocop
  def load_css_files dir
    css_file_paths = []
    Find.find("#{dir}") do |path|
      binding.pry
      css_file_paths << path if path =~ /.*\.css$/
    end
    puts css_file_paths
    css_file_paths
  end


  def load_html_file file_path
    if File.extname(file_path).downcase != '.html' then return "Can't process: not HTML" end
    begin
      Nokogiri::HTML(open(file_path)) 
    rescue
      "File does not exist"
    end
  end

end
