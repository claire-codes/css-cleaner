require 'nokogiri'

class File_Loader_Html < File_Loader

  def initialize file_path, extension='html'
    @file_path = file_path
    @extension = extension
  end

  def read_file
    return Nokogiri::HTML(open(@file_path))
  end

end