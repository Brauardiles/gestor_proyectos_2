class Proyect < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true
  validates :status, presence: true

  enum status: [:propuesta, :"en progreso", :terminado]
end
