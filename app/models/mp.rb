class Mp < ActiveRecord::Base
  has_many :votes
  has_many :divisions, through: :votes
  has_many :mp_friends, primary_key: :deputy_id, foreign_key: :deputy_id
  has_one :mp_info, primary_key: :deputy_id, foreign_key: :deputy_id

  def url_name
    self.last_name + "_" + self.first_name + "_" + self.middle_name
  end
  def full_name
    self.last_name + " " + self.first_name + " " + self.middle_name
  end
  def short_name
    self.first_name + " " + self.last_name
  end
end
