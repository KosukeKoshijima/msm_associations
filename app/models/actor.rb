class Actor < ApplicationRecord
#  - name: must be present; must be unique in combination with dob
validates :title, :presence => true, :uniqueness => {:scope => [:dob]}
#  - dob: no rules
#  - bio: no rules
#  - image_url: no rules
has_many :characters
has_many :movies, :through => characters

end