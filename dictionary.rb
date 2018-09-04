
class Dictionary

  def initialize
    @entries = {}
  end

  def entries
    @entries
  end

  def keywords
    @entries.keys.sort
  end

  def add(definition)
    if definition.is_a?(Hash)
      @entries.merge!(definition)
    elsif definition.is_a?(String)
      @entries.merge!({definition => nil})
    end
  end

  def include?(entry)
    @entries.keys.include?(entry)
  end

  def find(entry)
    @entries.select do |k, v|
      k.include?(entry)
    end
  end
end
