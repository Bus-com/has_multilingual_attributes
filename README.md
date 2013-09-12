# has_multilingual_attributes

## Intro
* This gem is a very simple monkey patch into the ActiveRecord class.
* It gives you a locale-aware model attribute, provided you appropriately named your columns in db.
* The convention for the field naming is: [field name] + '_' + [locale], e.g. 'description_en'.
* Only supports 2 locales (:fr and :en) for now.

## How It Works
Suppose you want a locale-aware `description` field for your ActiveRecord model `Item`. With this:

```
class Item < ActiveRecord::Base
  # that implies you have those 2 database fields in your items table:
  # 'description_fr' and 'description_en'
  has_multilingual_attributes :description
end
```

You'll get a virtual attribute `description` which content will vary according to the current locale:

```
> item = Item.new :description_fr => 'desc fr', :description_en => 'desc en'
=> #<Item id: nil, description_fr: "desc fr", description_en: "desc en">

> I18n.locale = :fr
=> :fr

> item.description
=> "desc fr"

> I18n.locale = :en
=> :en

> item.description
=> "desc en"
```

## Todo
* Read supported locales from config.
