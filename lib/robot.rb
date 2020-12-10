class Robot

  attr_reader :path

  def initialize(path)
    @path = path.gsub(/\s+/, "").upcase
  end

  def good_path
    remainders = @path.gsub("G", "").gsub("R", "").gsub("L", "")
    if remainders == ""
      true
    else
      false
    end
  end

  def will_return_to_start

  end

end
