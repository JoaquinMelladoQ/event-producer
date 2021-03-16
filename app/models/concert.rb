class Concert < ApplicationRecord
  belongs_to :band
  scope :between_dates, ->(_begin, _end) {where('date between ? and ?', _begin, _end)}
end
