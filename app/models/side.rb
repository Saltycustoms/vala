class Side < ApplicationRecord
  include AttachmentUploader[:attachment]
  belongs_to :blank
  validates :name, presence: true
  validates :attachment, presence: true
  has_many :properties, dependent: :destroy
  accepts_nested_attributes_for :properties, allow_destroy: true, reject_if: proc { |attributes| attributes.all? { |key, value| key == "_destroy" || value.blank? } }

  def preview
    if attachment.exists?
      "#{ActionController::Base.helpers.image_tag attachment_url, class: 'small-image'}".html_safe
    end
  end

  def add_ons
    html_string = "<ul>"
    properties.each do |property|
      html_string += "<li><strong>type:</strong> #{property.prop_type}, <strong>name:</strong> #{property.name}, <strong>element_id:</strong> #{property.element_id}</li>"
    end
    html_string += "</ul>"
    html_string.html_safe
  end

  def as_json(*)
    previous = super
    previous[:attachment_url] = attachment_url
    previous
  end
end
