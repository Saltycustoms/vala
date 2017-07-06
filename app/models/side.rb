class Side < ApplicationRecord
  include AttachmentUploader[:attachment]
  belongs_to :blank
  validates :name, presence: true
  validates :attachment, presence: true

  def preview
    if attachment.exists?
      "#{ActionController::Base.helpers.image_tag attachment_url, class: 'small-image'}".html_safe
    end
  end

  def as_json(*)
    previous = super
    previous[:attachment_url] = attachment_url
    previous
  end
end
