require 'has_multilingual_attributes/multilingual_attributes'

module HasMultilingualAttributes
  class Railtie < ::Rails::Railtie
    initializer "has_multilingual_attributes.initialize" do |app|

      ActiveRecord::Base.class_eval do
        include ::MultilingualAttributes
      end

    end
  end
end

