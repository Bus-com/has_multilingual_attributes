module MultilingualAttributes
  extend ActiveSupport::Concern

  module ClassMethods
    # defines virtual attribute getters for the given attribute names
    def has_multilingual_attributes(*names)
      names.each do |name|
        I18n.available_locales.each do |locale|
          define_singleton_method "find_by_#{name.to_s}" do |value|
            find_by(:"#{name}_#{locale}" => value)
          end
        end

        define_method "#{name}" do
          public_send("#{name}_#{I18n.locale.to_s[0, 2]}")
        end
      end
    end
  end

end
