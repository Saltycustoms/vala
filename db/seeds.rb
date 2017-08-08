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
@blank.properties.create(prop_type: "binding_collar", method: "substitution", name: "Green Collar", element_id: "A_x2F_green_collar", back_element_id: "back_A_x2F_green_collar", hex: "#00ff00")
@blank.properties.create(prop_type: "binding_collar", method: "substitution", name: "Beige Collar", element_id: "beige_collar", back_element_id: "back_beige_collar", hex: "#f5f5dc")
@blank.properties.create(prop_type: "binding_collar", method: "substitution", name: "Brown Collar", element_id: "brown_collar", back_element_id: "back_brown_collar", hex: "#a52a2a")
@blank.properties.create(prop_type: "binding_collar", method: "substitution", name: "Yellow Collar", element_id: "G_x2F_yellow_collar", back_element_id: "back_G_x2F_yellow_collar", hex: "#ff0")
@blank.properties.create(prop_type: "backtape", method: "substitution", name: "C 5002", element_id: "c5002", back_element_id: "back_c5002", hex: "#00ff00")
@blank.properties.create(prop_type: "backtape", method: "substitution", name: "C 5035", element_id: "c5035", back_element_id: "back_c5035", hex: "#ffff00")
@blank.properties.create(prop_type: "backtape", method: "substitution", name: "C 5039", element_id: "c5039", back_element_id: "back_c5039", hex: "#00ffff")
# @blank.properties.create(prop_type: "sleeve_folded_woven_tag", method: "patching", name: "Left Sleeve", element_id: "woven_tag1", back_element_id: "back_woven_tag1")
# @blank.properties.create(prop_type: "folded_woven_tag", method: "patching", name: "Bottom", element_id: "woven_tag2", back_element_id: "back_woven_tag2")
# @blank.properties.create(prop_type: "folded_woven_tag", method: "patching", name: "Bottom", element_id: "woven_tag1", back_element_id: "back_woven_tag2")
# @blank.properties.create(prop_type: "folded_woven_tag", method: "patching", name: "Bottom", element_id: "woven_tag2", back_element_id: "back_woven_tag2")

@blank.sides.create(name: "Front", attachment: get_fixture_file("Visual-Generator-Shirt-01(withBackground).svg"))
@blank.sides.create(name: "Back", attachment: get_fixture_file("Visual-Generator-Shirt-01-backfake.svg"))

@blank.prints.create(type: "Print::FullPrint", name: "Front A3", element_id: "full_print", in_width: "11.7", in_height: "16.5", mm_width: "297", mm_height: "420", px_width: "415", px_height: "587")
@blank.prints.create(type: "Print::FullPrint", name: "Front A4", element_id: "full_print_a4", in_width: "8.3", in_height: "11.75", mm_width: "210", mm_height: "297", px_width: "290.5", px_height: "410.9")
@blank.prints.create(type: "Print::FullPrint", name: "Back", element_id: "back_full_print", in_width: "11.7", in_height: "16.5", mm_width: "297", mm_height: "420", px_width: "415", px_height: "587")
@blank.prints.create(type: "Print::SleevePrint", name: "Left Sleeve Print", left_half_element_id: "back_left_sleeve_print", right_half_element_id: "left_sleeve_print", in_width: "3", in_height: "3", mm_width: "76.2", mm_height: "76.2", px_width: "106.7", px_height: "106.7")
@blank.prints.create(type: "Print::SleevePrint", name: "Right Sleeve Print", left_half_element_id: "right_sleeve_print", right_half_element_id: "back_right_sleeve_print", in_width: "3", in_height: "3", mm_width: "76.2", mm_height: "76.2", px_width: "106.7", px_height: "106.7")
@blank.prints.create(type: "Print::WovenLabel", name: "Left Folded Woven Tag", element_id: "left_folded_woven_tag", in_width: "2.5", in_height: "1.26", mm_width: "63.5", mm_height: "32", px_width: "210.4", px_height: "106")
@blank.prints.create(type: "Print::WovenLabel", name: "Right Folded Woven Tag", element_id: "right_folded_woven_tag", in_width: "2.5", in_height: "1.26", mm_width: "63.5", mm_height: "32", px_width: "210.4", px_height: "106")
@blank.prints.create(type: "Print::WovenLabel", name: "Left Patch Woven Tag", element_id: "left_patch_woven_tag", in_width: "2.5", in_height: "1.26", mm_width: "63.5", mm_height: "32", px_width: "210.4", px_height: "106")
@blank.prints.create(type: "Print::WovenLabel", name: "Right Patch Woven Tag", element_id: "right_patch_woven_tag", in_width: "2.5", in_height: "1.26", mm_width: "63.5", mm_height: "32", px_width: "210.4", px_height: "106")
@blank.prints.create(type: "Print::WovenLabel", name: "Left Sleeve Folded Woven Tag", element_id: "left_sleeve_folded_woven_tag", in_width: "2.5", in_height: "1.26", mm_width: "63.5", mm_height: "32", px_width: "210.4", px_height: "106")
@blank.prints.create(type: "Print::WovenLabel", name: "Right Sleeve Folded Woven Tag", element_id: "right_sleeve_folded_woven_tag", in_width: "2.5", in_height: "1.26", mm_width: "63.5", mm_height: "32", px_width: "210.4", px_height: "106")

@product = Product.create(name: "Gildan Unisex Tee", blank_id: @blank.id, currency: "MYR")

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
