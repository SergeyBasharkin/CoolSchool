class Note < ActiveRecord::Base
  validates :name,:number,:vk, presence: true
  validates_format_of :number, :with => /^((8|\+7)[\- ]?)?(\(?\d{3}\)?[\- ]?)?[\d\- ]{7,10}$/, :multiline => true
  validates_format_of :vk, :with => /^(http:\/\/|https:\/\/)?(www\.)?vk\.com\/(\w|\d)+?\/?$/, :multiline => true

end
