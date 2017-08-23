class ColorsController < ApplicationController
  dried_options ({
    fields:
      [:name, :hex, :pantone_code],
    presentation:
      [:name, :hex, :pantone_code]
  })
end
