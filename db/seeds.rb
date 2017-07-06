# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

def get_fixture_file(file)
  File.open(Rails.root.join("test/fixtures/files", file))
end

@blank = Blank.create(name: "T-Shirt", brand: "Gildan")
@blank.properties.create(prop_type: "binding_collar", method: "substitution", name: "Green Collar", element_id: "A_x2F_green_collar", back_element_id: "back_A_x2F_green_collar")
@blank.properties.create(prop_type: "binding_collar", method: "substitution", name: "Beige Collar", element_id: "beige_collar", back_element_id: "back_beige_collar")
@blank.properties.create(prop_type: "binding_collar", method: "substitution", name: "Brown Collar", element_id: "brown_collar", back_element_id: "back_brown_collar")
@blank.properties.create(prop_type: "binding_collar", method: "substitution", name: "Yellow Collar", element_id: "G_x2F_yellow_collar", back_element_id: "back_G_x2F_yellow_collar")
@blank.properties.create(prop_type: "backtape", method: "substitution", name: "C 5002", element_id: "c5002", back_element_id: "back_c5002")
@blank.properties.create(prop_type: "backtape", method: "substitution", name: "C 5035", element_id: "c5035", back_element_id: "back_c5035")
@blank.properties.create(prop_type: "backtape", method: "substitution", name: "C 5039", element_id: "c5039", back_element_id: "back_c5039")
@blank.properties.create(prop_type: "sleeve_folded_woven_tag", method: "patching", name: "Left Sleeve", element_id: "woven_tag1", back_element_id: "back_woven_tag1")
@blank.properties.create(prop_type: "folded_woven_tag", method: "patching", name: "Bottom", element_id: "woven_tag2", back_element_id: "back_woven_tag2")
@blank.properties.create(prop_type: "folded_woven_tag", method: "patching", name: "Bottom", element_id: "woven_tag1", back_element_id: "back_woven_tag2")
@blank.properties.create(prop_type: "folded_woven_tag", method: "patching", name: "Bottom", element_id: "woven_tag2", back_element_id: "back_woven_tag2")

@blank.sides.create(name: "Front", attachment: get_fixture_file("Visual-Generator-Shirt-01.svg"))
@blank.sides.create(name: "Back", attachment: get_fixture_file("Visual-Generator-Shirt-01-backfake.svg"))

@blank.prints.create(type: "Print::FullPrint", name: "Front", element_id: "full_print")
@blank.prints.create(type: "Print::FullPrint", name: "Back", element_id: "back_full_print")
@blank.prints.create(type: "Print::SleevePrint", name: "Left Sleeve Print", left_half_element_id: "back_left_sleeve_print", right_half_element_id: "left_sleeve_print")
@blank.prints.create(type: "Print::SleevePrint", name: "Right Sleeve Print", left_half_element_id: "right_sleeve_print", right_half_element_id: "back_right_sleeve_print")

@product = Product.create(name: "Gildan Unisex Tee", blank_id: @blank.id)

@red    = Color.create(name: "Red", hex: "#ff0000")
@green  = Color.create(name: "Green", hex: "#00ff00")
@blue   = Color.create(name: "Blue", hex: "#0000ff")

ColorOption.create(product_id: @product.id, color_id: @red.id)
ColorOption.create(product_id: @product.id, color_id: @blue.id)
ColorOption.create(product_id: @product.id, color_id: @green.id)

@product.sizes.create(name: "XS")
@product.sizes.create(name: "S")
@product.sizes.create(name: "M")
@product.sizes.create(name: "L")
@product.sizes.create(name: "XL")
@product.sizes.create(name: "2XL")
@product.sizes.create(name: "3XL")
