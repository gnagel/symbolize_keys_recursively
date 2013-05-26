class Hash
  def symbolize_keys!
    keys.each do |key|
      self[(key.to_sym rescue key) || key] = delete(key)
    end
    self
  end
  
  def symbolize_keys_recursively!
    symbolize_keys!
    values.each do |value|
      next if value.nil?
      if value.is_a?(Hash)
        value.symbolize_keys_recursively!
      elsif value.is_a?(Array)
        value.symbolize_keys_recursively!
      end
    end
    self
  end
end
