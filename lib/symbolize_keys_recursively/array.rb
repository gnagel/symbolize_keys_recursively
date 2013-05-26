class Array
  def symbolize_keys_recursively!
    self.collect! do |value|
      if !value.nil? && value.is_a?(Hash)
        value.symbolize_keys_recursively!
      elsif !value.nil? && value.is_a?(Array)
        value.symbolize_keys_recursively!
      end
      value
    end
    self
  end
end
