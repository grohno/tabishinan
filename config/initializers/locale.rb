require 'i18n'
I18n.locale # => :en
I18n.locale = :ja
I18n.locale # => :ja
require 'faker'
Faker::Config.locale # => :ja
Faker::Config.locale = :en
Faker::Config.locale # => :en
Faker::Internet.email # => "ransom_blanda@auer.name"
