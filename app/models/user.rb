class User < ActiveRecord::Base
  has_many :scholarships
  has_many :schools, :through => :scholarships

  def athletic
    if self.athletism && self.footwork
      athletic = self.athletism + self.footwork
      athletic > 8 ? "athletic" : "not athletic"
    end
  end

  def num_of_scholarships
    self.schools.count
  end

end
