require 'css_parser'

class File_Loader_Css < File_Loader

  def initialize file_path, extension='css'
    @file_path = file_path
    @extension = extension
  end

  def read_file
    parser = CssParser::Parser.new
    return parser.load_uri!(file_path)
  end

end