module Json
  module Extractor
    attr_accessor :attributes
    def attr_accessor(*attrs)
      self.attributes = Array attrs
      super
    end
  end
  def self.included(base)
    base.extend(ClassMethods)
  end

  def as_json(_options = {})
    self.class.attributes.each_with_object({}) do |attribute, hash|
      hash[attribute] = send(attribute)
    end
  end

  def to_json(*a)
    as_json.to_json *a
  end
end