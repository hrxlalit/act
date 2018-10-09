module UsersHelper
  def get_city
  	@city = City.all.pluck(:name)
  end
end
