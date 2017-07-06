class BlanksController < ApplicationController
  dried_options ({
    fields:
      [:name, :brand, sides_attributes: [:id, :name, :attachment, :attachment_data, :_destroy], properties_attributes: [:id, :prop_type, :method, :name, :element, :back_element_id, :_destroy],
        full_prints_attributes: [:id, :name, :element_id, :_destroy], sleeve_prints_attributes: [:id, :name, :left_half_element_id, :right_half_element_id, :_destroy]],
    presentation:
      [:id, :name, :brand]
  })
end
