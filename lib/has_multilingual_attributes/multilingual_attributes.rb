module MultilingualAttributes
  extend ActiveSupport::Concern

  module ClassMethods
    # defines virtual attribute getters for the given attribute names
    def has_multilingual_attributes(*names)
      names.each do |name|
        define_singleton_method "find_by_#{name}" do |value|
          find_by(:"#{name}_#{I18n.locale.to_s[0, 2]}" => value)
        end

        define_method "#{name}" do
          public_send("#{name}_#{I18n.locale.to_s[0, 2]}")
        end
      end
    end
  end

end
