class Side < ApplicationRecord
  include AttachmentUploader[:attachment]
  belongs_to :blank
  validates :name, presence: true
  validates :attachment, presence: true

end
