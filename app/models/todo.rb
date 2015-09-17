class Todo < ActiveRecord::Base
  validates :description, presence: true

  def completed?
    completed_at.present?
  end
end
