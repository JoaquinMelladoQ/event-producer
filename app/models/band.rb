class Band < ApplicationRecord
  has_many :concerts, dependent: :destroy
  enum band_sort: [:band, :soloist]
end
