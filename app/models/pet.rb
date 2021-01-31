class Pet < ApplicationRecord
  has_many :pet_histories, dependent: :destroy
  belongs_to :client

  def to_s 
    name
  end

  def history_count
    pet_histories.count
    #TODO-implement
  end

  def avg_weight
    pet_histories.average :weight
    #TODO-implement
  end

  def avg_height
    pet_histories.average :heigth
    #TODO-implement
  end

  def max_weight
    pet_histories.pluck(:weight).max
    #TODO-implement
  end

  def max_height
    pet_histories.pluck(:heigth).max
    #TODO-implement
  end

end
