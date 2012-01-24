class IsbnValidator
  VALID_CHARACTERS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'x']
  
  #attr_accessor :isbn
  #getter and setter for isbn, no need to create them
  # attr_reader 
  # attr_writer //just setter
  attr_reader :isbn #// just getter

  def initialize(isbn)
    if isbn.nil?
      @isbn = ""
    else
      @isbn = cleanup_isbn(isbn)
    end
  end

  def valid?
    if @isbn.size==10 || @isbn.size==13
      true
     else
      false
    end
  end

  def self.valid_character?(c)
    return c == '1' || c == '2' || c == '3' || c == '4' || c == '5' || c == '6' || c == '7' || c == '8' || c == '9' || c == '0' || c =='x'
  end

  private #all private stuff goes here
  
  def cleanup_isbn(isbn)
    return isbn.downcase.gsub("-", "").gsub(" ", "") #return statement is optional
  end

end
