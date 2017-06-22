class BlanksController < ApplicationController
  dried_options ({
    fields:
      [:name, :brand, sides_attributes: [:id, :name, :attachment, :attachment_data, :_destroy]],
    presentation:
      [:id, :name, :brand]
  })
end
