class Note < ActiveRecord::Base
  validates :name,:number, presence: true
  validates :vk, presence: false
  validates_format_of :number, :with => /^(8|\+7)(\(?\d{3}\)?)[\d]{7}$/, :multiline => true
  validates_format_of :vk, :with => /\A((http:\/\/|https:\/\/)?(www\.)?vk\.com\/(\w|\d)+?\/?){0,1}\Z/i
end
