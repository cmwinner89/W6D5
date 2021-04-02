# == Schema Information
#
# Table name: cats
#
#  id          :integer          not null, primary key
#  birth_date  :date             not null
#  color       :string           not null
#  name        :string           not null
#  sex         :string(1)        not null
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
require 'action_view'

class Cat < ApplicationRecord

    include ActionView::Helpers::DateHelper

    validates :name, :birth_date, :color, :sex, presence: true

    validates :color, inclusion: {in: %w(black white brown orange grey), message: "That's not a valid color"}
    validates :sex, inclusion: {in: %w(M F), message: "Sex must be M or F"}

    def age
        curr_date = Date.today
        birth = self.birth_date
        curr_date.year - birth.year - ((curr_date.month > birth.month || (curr_date.month == birth.month && curr_date.day >= birth.day)) ? 0 : 1)
    end
end
