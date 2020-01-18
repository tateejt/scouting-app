class Scholarship < ActiveRecord::Base
  belongs_to :user
  belongs_to :school

  def offered_scholarship
    gpa_score, fast_enough = meet_requirements
    if gpa_score && fast_enough
      offer_scholarship
    elsif fast_enough && !gpa_score
      "Sorry. " + gpa_issue
    elsif gpa_score && !fast_enough
      "Sorry. " + speed_issue
    else
      "Sorry. " + gpa_issue + " " + speed_issue
    end
  end

  def meet_requirements
    gpa_score, fast_enough = false
    if self.user.gpa >= self.school.gpa
      gpa_score = true
    end
    if self.user.sprint >= self.school.sprint
      fast_enough = true
    end
    return [gpa_score, fast_enough]
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

  def gpa_issue
    "You do not have a high enough gpa for #{self.school.name}."
  end

  def speed_issue
    "You are not fast enough to play for the #{self.school.name}."
  end

end
