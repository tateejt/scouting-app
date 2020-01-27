class Scholarship < ActiveRecord::Base
  belongs_to :user
  belongs_to :school

  def offered_scholarship
    "You have been offered a scholarship!"
  end


  def offer_scholarship
    new_athletism = self.user.athletism + self.attraction.athletism_rating
    new_footwork = self.user.footwork + self.attraction.footwork_rating
    self.user.update(
      :athletism => new_athletism,
      :footwork => new_footwork
    )
    "Thanks for checking out our school #{self.school.name}!"
  end


end
