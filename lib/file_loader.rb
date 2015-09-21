require 'find'

class File_Loader

  def load_file
    binding.pry
    unless correct_extension?
      begin
        file = read_file
      rescue
        return 'File does not exist'
      end
    end
    return file
  end

  def correct_extension?
    unless File.extname(@file_path).downcase != ".#{@extension}"
      return true
    end
  end

  def read_file
    return 'Cannot be implemented by the super class'
  end

end