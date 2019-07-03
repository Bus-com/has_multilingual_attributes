module MultilingualAttributes
  extend ActiveSupport::Concern

  module ClassMethods
    # defines virtual attribute getters for the given attribute names
    def has_multilingual_attributes(*names)
      names.each do |name|
        ['fr', 'en'].each do |locale|
          define_singleton_method "find_by_#{name.to_s}" do |name_param|
            send("find_by_#{name}_#{locale}".to_sym, name_param)
          end
        end

        define_method "#{name}" do
          send(name.to_s+"_#{I18n.locale.to_s[0, 2]}")
        end
      end
    end
  end

end
