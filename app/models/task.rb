# == Schema Information
#
# Table name: tasks
#
#  id           :integer          not null, primary key
#  body         :string           not null
#  completed_at :datetime
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Task < ApplicationRecord

  validates :body, presence: true

end
