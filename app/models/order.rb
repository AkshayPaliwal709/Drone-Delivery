class Order < ApplicationRecord
  belongs_to :drone
  belongs_to :person
 
end
  