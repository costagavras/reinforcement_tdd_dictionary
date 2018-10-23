
class Dictionary

  def initialize
    @d = {}
  end

  def entries
    @d
  end

  def add(options={})

    if options.is_a?(Hash)
      # @d = options
      options.each do |k, v|
        @d[k] = v
      end
    elsif options.is_a?(String)
      @d[options] = nil
    end

  end

  def keywords
    arr_keys = []
    @d.each do |key,value|
      arr_keys << key
    end
    return arr_keys.sort
  end

  def include?(keyword)
    @d.include?(keyword)
  end

  # def find(string)
  #   hash_results = {}
  #   results = @d.include? "#{string}"
  #   # results ? hash_results = {string =>  @d[string]} : hash_results
  #   results ? hash_results[string] =  @d[string] : hash_results
  #   return hash_results
  # end

  def find(string)
    return @d.select{|k, v| k.include? string }
  end

end
