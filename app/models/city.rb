class City < ApplicationRecord


  GUIDE_TYPES = Array.new
 City.all.each do  |e|
  GUIDE_TYPES << e.name
 end
end
