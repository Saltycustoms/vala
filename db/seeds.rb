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
# @blank.properties.create(prop_type: "binding_collar", method: "substitution", name: "Green Collar", element_id: "A_x2F_green_collar", back_element_id: "back_A_x2F_green_collar", hex: "#00ff00")
# @blank.properties.create(prop_type: "binding_collar", method: "substitution", name: "Beige Collar", element_id: "beige_collar", back_element_id: "back_beige_collar", hex: "#f5f5dc")
# @blank.properties.create(prop_type: "binding_collar", method: "substitution", name: "Brown Collar", element_id: "brown_collar", back_element_id: "back_brown_collar", hex: "#a52a2a")
# @blank.properties.create(prop_type: "binding_collar", method: "substitution", name: "Yellow Collar", element_id: "G_x2F_yellow_collar", back_element_id: "back_G_x2F_yellow_collar", hex: "#ff0")
# @blank.properties.create(prop_type: "backtape", method: "substitution", name: "C 5002", element_id: "c5002", back_element_id: "back_c5002", hex: "#00ff00")
# @blank.properties.create(prop_type: "backtape", method: "substitution", name: "C 5035", element_id: "c5035", back_element_id: "back_c5035", hex: "#ffff00")
# @blank.properties.create(prop_type: "backtape", method: "substitution", name: "C 5039", element_id: "c5039", back_element_id: "back_c5039", hex: "#00ffff")

@blank.properties.create(prop_type: "binding_sleeve", method: "substitution", name: "C5157-13", element_id: "Front_x5F_C5157-13_1_", back_element_id: "Back_x5F_C5157-13", hex: "#F5ECC5")
@blank.properties.create(prop_type: "binding_sleeve", method: "substitution", name: "C5937", element_id: "Front_x5F_C5937", back_element_id: "Back_x5F_C5937", hex: "#F9ED34")
@blank.properties.create(prop_type: "binding_sleeve", method: "substitution", name: "C5002", element_id: "Front_x5F_C5002", back_element_id: "Back_x5F_C5002", hex: "#FFD62C")
@blank.properties.create(prop_type: "binding_sleeve", method: "substitution", name: "C5939", element_id: "Front_x5F_C5939", back_element_id: "Back_x5F_C5939", hex: "#F57839")
@blank.properties.create(prop_type: "binding_sleeve", method: "substitution", name: "C5938", element_id: "Front_x5F_C5938", back_element_id: "Back_x5F_C5938", hex: "#F1B0BC")
@blank.properties.create(prop_type: "binding_sleeve", method: "substitution", name: "C51032", element_id: "Front_x5F_C51032", back_element_id: "Back_x5F_C51032", hex: "#D96083")
@blank.properties.create(prop_type: "binding_sleeve", method: "substitution", name: "C5948", element_id: "Front_x5F_C5948", back_element_id: "Back_x5F_C5948", hex: "#802434")
@blank.properties.create(prop_type: "binding_sleeve", method: "substitution", name: "C5422", element_id: "Front_x5F_C5422", back_element_id: "Back_x5F_C5422", hex: "#A4D55D")
@blank.properties.create(prop_type: "binding_sleeve", method: "substitution", name: "C51036", element_id: "Front_x5F_C51036", back_element_id: "Back_x5F_C51036", hex: "#DCE442")
@blank.properties.create(prop_type: "binding_sleeve", method: "substitution", name: "C5039", element_id: "Front_x5F_C5039", back_element_id: "Back_x5F_C5039", hex: "#C40B2F")
@blank.properties.create(prop_type: "binding_sleeve", method: "substitution", name: "C5035", element_id: "Front_x5F_C5035", back_element_id: "Back_x5F_C5035", hex: "#2D8140")
@blank.properties.create(prop_type: "binding_sleeve", method: "substitution", name: "C5935", element_id: "Front_x5F_C5935", back_element_id: "Back_x5F_C5935", hex: "#9AADCE")
@blank.properties.create(prop_type: "binding_sleeve", method: "substitution", name: "C57027", element_id: "Front_x5F_C57027", back_element_id: "Back_x5F_C57027", hex: "#37497D")
@blank.properties.create(prop_type: "binding_sleeve", method: "substitution", name: "C51039", element_id: "Front_x5F_C51039", back_element_id: "Back_x5F_C51039", hex: "#343161")
@blank.properties.create(prop_type: "binding_sleeve", method: "substitution", name: "C5936", element_id: "Front_x5F_C5936", back_element_id: "Back_x5F_C5936", hex: "#2B89A9")
@blank.properties.create(prop_type: "binding_sleeve", method: "substitution", name: "C5941", element_id: "Front_x5F_C5941", back_element_id: "Back_x5F_C5941", hex: "#5B457D")
@blank.properties.create(prop_type: "binding_sleeve", method: "substitution", name: "C5940", element_id: "Front_x5F_C5940", back_element_id: "Back_x5F_C5940", hex: "#B2B3AE")
@blank.properties.create(prop_type: "binding_sleeve", method: "substitution", name: "C51031", element_id: "Front_x5F_C51031", back_element_id: "Back_x5F_C51031", hex: "#58575C")
@blank.properties.create(prop_type: "binding_sleeve", method: "substitution", name: "C57038", element_id: "Front_x5F_C57038", back_element_id: "Back_x5F_C57038", hex: "#512D29")
@blank.properties.create(prop_type: "binding_sleeve", method: "substitution", name: "C5048", element_id: "Front_x5F_C5048", back_element_id: "Back_x5F_C5048", hex: "#1C2338")
@blank.properties.create(prop_type: "binding_sleeve", method: "substitution", name: "C5044", element_id: "Front_x5F_C5044", back_element_id: "Back_x5F_C5044", hex: "#27262C")


@blank.properties.create(prop_type: "binding_collar", method: "substitution", name: "Collar_C5157", element_id: "Front_x5F_Collar_x5F_C5157", back_element_id: "Back_x5F_Collar_C5157", hex: "#F5ECC5")
@blank.properties.create(prop_type: "binding_collar", method: "substitution", name: "Collar_C5937", element_id: "Front_x5F_Collar_x5F_C5937", back_element_id: "Back_x5F_Collar_C5937", hex: "#F9ED34")
@blank.properties.create(prop_type: "binding_collar", method: "substitution", name: "Collar_C5002", element_id: "Front_x5F_Collar_x5F_C5002", back_element_id: "Back_x5F_Collar_C5002", hex: "#FFD62C")
@blank.properties.create(prop_type: "binding_collar", method: "substitution", name: "Collar_C5939", element_id: "Front_x5F_Collar_x5F_C5939", back_element_id: "Back_x5F_Collar_C5939", hex: "#F57839")
@blank.properties.create(prop_type: "binding_collar", method: "substitution", name: "Collar_C5938", element_id: "Front_x5F_Collar_x5F_C5938", back_element_id: "Back_x5F_Collar_C5938", hex: "#F1B0BC")
@blank.properties.create(prop_type: "binding_collar", method: "substitution", name: "Collar_C51032", element_id: "Front_x5F_Collar_x5F_C51032", back_element_id: "Back_x5F_Collar_C51032", hex: "#D96083")
@blank.properties.create(prop_type: "binding_collar", method: "substitution", name: "Collar_C5039", element_id: "Front_x5F_Collar_x5F_C5948", back_element_id: "Back_x5F_Collar_C5039", hex: "#802434")
@blank.properties.create(prop_type: "binding_collar", method: "substitution", name: "Collar_C5948", element_id: "Front_x5F_Collar_x5F_C5422", back_element_id: "Back_x5F_Collar_C5948", hex: "#A4D55D")
@blank.properties.create(prop_type: "binding_collar", method: "substitution", name: "Collar_C5422", element_id: "Front_x5F_Collar_x5F_C51036", back_element_id: "Back_x5F_Collar_C5422", hex: "#DCE442")
@blank.properties.create(prop_type: "binding_collar", method: "substitution", name: "Collar_C51036", element_id: "Front_x5F_Collar_x5F_C5039", back_element_id: "Back_x5F_Collar_C51036", hex: "#C40B2F")
@blank.properties.create(prop_type: "binding_collar", method: "substitution", name: "Collar_C5035", element_id: "Front_x5F_Collar_x5F_C5035", back_element_id: "Back_x5F_Collar_C5035", hex: "#2D8140")
@blank.properties.create(prop_type: "binding_collar", method: "substitution", name: "Collar_C5935", element_id: "Front_x5F_Collar_x5F_C5935", back_element_id: "Back_x5F_Collar_C5935", hex: "#9AADCE")
@blank.properties.create(prop_type: "binding_collar", method: "substitution", name: "Collar_C57027", element_id: "Front_x5F_Collar_x5F_C57027", back_element_id: "Back_x5F_Collar_C57027", hex: "#37497D")
@blank.properties.create(prop_type: "binding_collar", method: "substitution", name: "Collar_C51039", element_id: "Front_x5F_Collar_x5F_C51039", back_element_id: "Back_x5F_Collar_C51039", hex: "#343161")
@blank.properties.create(prop_type: "binding_collar", method: "substitution", name: "Collar_C5936", element_id: "Front_x5F_Collar_x5F_C5936", back_element_id: "Back_x5F_Collar_C5936", hex: "#2B89A9")
@blank.properties.create(prop_type: "binding_collar", method: "substitution", name: "Collar_C5941", element_id: "Front_x5F_Collar_x5F_C5941", back_element_id: "Back_x5F_Collar_C5941", hex: "#5B457D")
@blank.properties.create(prop_type: "binding_collar", method: "substitution", name: "Collar_C5940", element_id: "Front_x5F_Collar_x5F_C5940", back_element_id: "Back_x5F_Collar_C5940", hex: "#B2B3AE")
@blank.properties.create(prop_type: "binding_collar", method: "substitution", name: "Collar_C51031", element_id: "Front_x5F_Collar_x5F_C51031", back_element_id: "Back_x5F_Collar_C51031", hex: "#58575C")
@blank.properties.create(prop_type: "binding_collar", method: "substitution", name: "Collar_C57038", element_id: "Front_x5F_Collar_x5F_C57038", back_element_id: "Back_x5F_Collar_C57038", hex: "#512D29")
@blank.properties.create(prop_type: "binding_collar", method: "substitution", name: "Collar_C5048", element_id: "Front_x5F_Collar_x5F_C5048", back_element_id: "Back_x5F_Collar_C5048", hex: "#1C2338")
@blank.properties.create(prop_type: "binding_collar", method: "substitution", name: "Collar_C5044", element_id: "Front_x5F_Collar_x5F_C5044", back_element_id: "Back_x5F_Collar_C5044", hex: "#27262C")


@blank.properties.create(prop_type: "backtape", method: "substitution", name: "Backtape_x5F_C5157-", element_id: "Front_x5F_Backtape_x5F_C5157-13", back_element_id: "null", hex: "#F5ECC5")
@blank.properties.create(prop_type: "backtape", method: "substitution", name: "Backtape_x5F_C5937", element_id: "Front_x5F_Backtape_x5F_C5937", back_element_id: "null", hex: "#F9ED34")
@blank.properties.create(prop_type: "backtape", method: "substitution", name: "Backtape_x5F_C5002", element_id: "Front_x5F_Backtape_x5F_C5002", back_element_id: "null", hex: "#FFD62C")
@blank.properties.create(prop_type: "backtape", method: "substitution", name: "Backtape_x5F_C5939", element_id: "Front_x5F_Backtape_x5F_C5939", back_element_id: "null", hex: "#F57839")
@blank.properties.create(prop_type: "backtape", method: "substitution", name: "Backtape_x5F_C5938", element_id: "Front_x5F_Backtape_x5F_C5938", back_element_id: "null", hex: "#F1B0BC")
@blank.properties.create(prop_type: "backtape", method: "substitution", name: "Backtape_x5F_C51032", element_id: "Front_x5F_Backtape_x5F_C51032", back_element_id: "null", hex: "#D96083")
@blank.properties.create(prop_type: "backtape", method: "substitution", name: "Backtape_x5F_C5948", element_id: "Front_x5F_Backtape_x5F_C5948", back_element_id: "null", hex: "#802434")
@blank.properties.create(prop_type: "backtape", method: "substitution", name: "Backtape_x5F_C5422", element_id: "Front_x5F_Backtape_x5F_C5422", back_element_id: "null", hex: "#A4D55D")
@blank.properties.create(prop_type: "backtape", method: "substitution", name: "Backtape_x5F_C51036", element_id: "Front_x5F_Backtape_x5F_C51036", back_element_id: "null", hex: "#DCE442")
@blank.properties.create(prop_type: "backtape", method: "substitution", name: "Backtape_x5F_C5039", element_id: "Front_x5F_Backtape_x5F_C5039", back_element_id: "null", hex: "#C40B2F")
@blank.properties.create(prop_type: "backtape", method: "substitution", name: "Backtape_x5F__x5F_C5035", element_id: "Front_x5F_Backtape_x5F__x5F_C5035", back_element_id: "null", hex: "#2D8140")
@blank.properties.create(prop_type: "backtape", method: "substitution", name: "Backtape_x5F_C5935", element_id: "Front_x5F_Backtape_x5F_C5935", back_element_id: "null", hex: "#9AADCE")
@blank.properties.create(prop_type: "backtape", method: "substitution", name: "Backtape_x5F_C57027", element_id: "Front_x5F_Backtape_x5F_C57027", back_element_id: "null", hex: "#37497D")
@blank.properties.create(prop_type: "backtape", method: "substitution", name: "Backtape_x5F_C51039", element_id: "Front_x5F_Backtape_x5F_C51039", back_element_id: "null", hex: "#343161")
@blank.properties.create(prop_type: "backtape", method: "substitution", name: "Backtape_x5F_C5936", element_id: "Front_x5F_Backtape_x5F_C5936", back_element_id: "null", hex: "#2B89A9")
@blank.properties.create(prop_type: "backtape", method: "substitution", name: "Backtape_x5F_C5941", element_id: "Front_x5F_Backtape_x5F_C5941", back_element_id: "null", hex: "#5B457D")
@blank.properties.create(prop_type: "backtape", method: "substitution", name: "Backtape_x5F_C5940", element_id: "Front_x5F_Backtape_x5F_C5940", back_element_id: "null", hex: "#B2B3AE")
@blank.properties.create(prop_type: "backtape", method: "substitution", name: "Backtape_x5F_C51031", element_id: "Front_x5F_Backtape_x5F_C51031", back_element_id: "null", hex: "#58575C")
@blank.properties.create(prop_type: "backtape", method: "substitution", name: "Backtape_x5F_C57038", element_id: "Front_x5F_Backtape_x5F_C57038", back_element_id: "null", hex: "#512D29")
@blank.properties.create(prop_type: "backtape", method: "substitution", name: "Backtape_x5F_C5048", element_id: "Front_x5F_Backtape_x5F_C5048", back_element_id: "null", hex: "#1C2338")
@blank.properties.create(prop_type: "backtape", method: "substitution", name: "Backtape_x5F_C5044", element_id: "Front_x5F_Backtape_x5F_C5044", back_element_id: "null", hex: "#27262C")
@blank.properties.create(prop_type: "backtape", method: "substitution", name: "Backtape_x5F_SPWhite", element_id: "Front_x5F_Backtape_x5F_SPWhite", back_element_id: "null", hex: "#FFFFFF")

@blank.properties.create(prop_type: "double_needle_stitch", method: "substitution", name: "Double_Needle_Stitch_Black", element_id: "Double_Needle_Stitch_Black", back_element_id: "null", hex: "#1C1C1C")
@blank.properties.create(prop_type: "double_needle_stitch", method: "substitution", name: "Double_Needle_Stitch_C5157-13", element_id: "Double_Needle_Stitch_C5157-13", back_element_id: "null", hex: "#F5ECC5")
@blank.properties.create(prop_type: "double_needle_stitch", method: "substitution", name: "Double_Needle_Stitch_C5937", element_id: "Double_Needle_Stitch_C5937", back_element_id: "null", hex: "#F9ED34")
@blank.properties.create(prop_type: "double_needle_stitch", method: "substitution", name: "Double_Needle_Stitch_C5002", element_id: "Double_Needle_Stitch_C5002", back_element_id: "null", hex: "#FFD62C")
@blank.properties.create(prop_type: "double_needle_stitch", method: "substitution", name: "Double_Needle_Stitch_C5939", element_id: "Double_Needle_Stitch_C5939", back_element_id: "null", hex: "#F57839")
@blank.properties.create(prop_type: "double_needle_stitch", method: "substitution", name: "Double_Needle_Stitch_C5938", element_id: "Double_Needle_Stitch_C5938", back_element_id: "null", hex: "#F1B0BC")
@blank.properties.create(prop_type: "double_needle_stitch", method: "substitution", name: "Double_Needle_Stitch_C51032", element_id: "Double_Needle_Stitch_C51032", back_element_id: "null", hex: "#D96083")
@blank.properties.create(prop_type: "double_needle_stitch", method: "substitution", name: "Double_Needle_Stitch_C5948", element_id: "Double_Needle_Stitch_C5948", back_element_id: "null", hex: "#802434")
@blank.properties.create(prop_type: "double_needle_stitch", method: "substitution", name: "Double_Needle_Stitch_C5422", element_id: "Double_Needle_Stitch_C5422", back_element_id: "null", hex: "#A4D55D")
@blank.properties.create(prop_type: "double_needle_stitch", method: "substitution", name: "Double_Needle_Stitch_C51036", element_id: "Double_Needle_Stitch_C51036", back_element_id: "null", hex: "#DCE442")
@blank.properties.create(prop_type: "double_needle_stitch", method: "substitution", name: "Double_Needle_Stitch_C5039", element_id: "Double_Needle_Stitch_C5039", back_element_id: "null", hex: "#C40B2F")
@blank.properties.create(prop_type: "double_needle_stitch", method: "substitution", name: "Double_Needle_Stitch_C5035", element_id: "Double_Needle_Stitch_C5035", back_element_id: "null", hex: "#2D8140")
@blank.properties.create(prop_type: "double_needle_stitch", method: "substitution", name: "Double_Needle_Stitch_C5935", element_id: "Double_Needle_Stitch_C5935", back_element_id: "null", hex: "#9AADCE")
@blank.properties.create(prop_type: "double_needle_stitch", method: "substitution", name: "Double_Needle_Stitch_C57027", element_id: "Double_Needle_Stitch_C57027", back_element_id: "null", hex: "#37497D")
@blank.properties.create(prop_type: "double_needle_stitch", method: "substitution", name: "Double_Needle_Stitch_C51039", element_id: "Double_Needle_Stitch_C51039", back_element_id: "null", hex: "#343161")
@blank.properties.create(prop_type: "double_needle_stitch", method: "substitution", name: "Double_Needle_Stitch_C5936", element_id: "Double_Needle_Stitch_C5936", back_element_id: "null", hex: "#2B89A9")
@blank.properties.create(prop_type: "double_needle_stitch", method: "substitution", name: "Double_Needle_Stitch_C5941", element_id: "Double_Needle_Stitch_C5941", back_element_id: "null", hex: "#5B457D")
@blank.properties.create(prop_type: "double_needle_stitch", method: "substitution", name: "Double_Needle_Stitch_C5940", element_id: "Double_Needle_Stitch_C5940", back_element_id: "null", hex: "#B2B3AE")
@blank.properties.create(prop_type: "double_needle_stitch", method: "substitution", name: "Double_Needle_Stitch_C51031", element_id: "Double_Needle_Stitch_C51031", back_element_id: "null", hex: "#58575C")
@blank.properties.create(prop_type: "double_needle_stitch", method: "substitution", name: "Double_Needle_Stitch_C57038", element_id: "Double_Needle_Stitch_C57038", back_element_id: "null", hex: "#512D29")
@blank.properties.create(prop_type: "double_needle_stitch", method: "substitution", name: "Double_Needle_Stitch_C5048", element_id: "Double_Needle_Stitch_C5048", back_element_id: "null", hex: "#1C2338")
@blank.properties.create(prop_type: "double_needle_stitch", method: "substitution", name: "Double_Needle_Stitch_C5044", element_id: "Double_Needle_Stitch_C5044", back_element_id: "null", hex: "#27262C")
@blank.properties.create(prop_type: "double_needle_stitch", method: "substitution", name: "Double_Needle_Stitch_SP_White", element_id: "Double_Needle_Stitch_SP_White", back_element_id: "null", hex: "#FFFFFF")


# @blank.properties.create(prop_type: "sleeve_folded_woven_tag", method: "patching", name: "Left Sleeve", element_id: "woven_tag1", back_element_id: "back_woven_tag1")
# @blank.properties.create(prop_type: "folded_woven_tag", method: "patching", name: "Bottom", element_id: "woven_tag2", back_element_id: "back_woven_tag2")
# @blank.properties.create(prop_type: "folded_woven_tag", method: "patching", name: "Bottom", element_id: "woven_tag1", back_element_id: "back_woven_tag2")
# @blank.properties.create(prop_type: "folded_woven_tag", method: "patching", name: "Bottom", element_id: "woven_tag2", back_element_id: "back_woven_tag2")

# @blank.sides.create(name: "Front", attachment: get_fixture_file("Visual-Generator-Shirt-01-slimver.svg"), down_the_collar: 2, artwork_width: 10, measurement_unit: "inch")
# @blank.sides.create(name: "Back", attachment: get_fixture_file("Visual-Generator-Shirt-01-fakeback-slimver.svg"), down_the_collar: 1, artwork_width: 10, measurement_unit: "inch")

@blank.sides.create(name: "Front", attachment: get_fixture_file("Final-T-Shirt-Front_V1_slimver.svg"), down_the_collar: 2, artwork_width: 10, measurement_unit: "inch")
@blank.sides.create(name: "Back", attachment: get_fixture_file("Final-T-Shirt-Back_V1_slimver.svg"), down_the_collar: 1, artwork_width: 10, measurement_unit: "inch")

@blank.prints.create(type: "Print::FullPrint", name: "Front A3", element_id: "Front_x5F_BlockA3", in_width: "11.7", in_height: "16.5", mm_width: "297", mm_height: "420", px_width: "415", px_height: "587")
@blank.prints.create(type: "Print::FullPrint", name: "Front A4", element_id: "Front_x5F_BlockA4", in_width: "8.3", in_height: "11.75", mm_width: "210", mm_height: "297", px_width: "290.5", px_height: "410.9")
@blank.prints.create(type: "Print::FullPrint", name: "Back A3", element_id: "Back_x5F_BlockA3", in_width: "11.7", in_height: "16.5", mm_width: "297", mm_height: "420", px_width: "415", px_height: "587")
@blank.prints.create(type: "Print::FullPrint", name: "Back A4", element_id: "Back_x5F_BlockA4", in_width: "8.3", in_height: "11.75", mm_width: "210", mm_height: "297", px_width: "290.5", px_height: "410.9")
@blank.prints.create(type: "Print::SleevePrint", name: "Left Sleeve Print", left_half_element_id: "Back_x5F_Left_Sleeve_Block_copy", right_half_element_id: "Front_x5F_Left_Sleeve_Block", in_width: "3", in_height: "3", mm_width: "76.2", mm_height: "76.2", px_width: "106.7", px_height: "106.7")
@blank.prints.create(type: "Print::SleevePrint", name: "Right Sleeve Print", left_half_element_id: "Front_x5F_Right_Sleeve_Block", right_half_element_id: "Back_x5F_Right_Sleeve_Block", in_width: "3", in_height: "3", mm_width: "76.2", mm_height: "76.2", px_width: "106.7", px_height: "106.7")
@blank.prints.create(type: "Print::WovenLabel", name: "Bottom Left Woven", element_id: "Front_x5F_Left_Bottom_Woven", in_width: "2.5", in_height: "1.26", mm_width: "63.5", mm_height: "32", px_width: "210.4", px_height: "106")
@blank.prints.create(type: "Print::WovenLabel", name: "Bottom Right Woven", element_id: "Front_x5F_Bottom_Right_Woven_copy", in_width: "2.5", in_height: "1.26", mm_width: "63.5", mm_height: "32", px_width: "210.4", px_height: "106")
@blank.prints.create(type: "Print::WovenLabel", name: "Left Woven Patch", element_id: "Front_x5F_Left_Woven_Patch", in_width: "2.5", in_height: "1.26", mm_width: "63.5", mm_height: "32", px_width: "210.4", px_height: "106")
@blank.prints.create(type: "Print::WovenLabel", name: "Right Woven Patch", element_id: "Front_x5F_Right_Woven_Patch", in_width: "2.5", in_height: "1.26", mm_width: "63.5", mm_height: "32", px_width: "210.4", px_height: "106")
# @blank.prints.create(type: "Print::WovenLabel", name: "Left Folded Woven Tag", element_id: "left_folded_woven_tag", in_width: "2.5", in_height: "1.26", mm_width: "63.5", mm_height: "32", px_width: "210.4", px_height: "106")
# @blank.prints.create(type: "Print::WovenLabel", name: "Right Folded Woven Tag", element_id: "right_folded_woven_tag", in_width: "2.5", in_height: "1.26", mm_width: "63.5", mm_height: "32", px_width: "210.4", px_height: "106")
# @blank.prints.create(type: "Print::WovenLabel", name: "Left Patch Woven Tag", element_id: "left_patch_woven_tag", in_width: "2.5", in_height: "1.26", mm_width: "63.5", mm_height: "32", px_width: "210.4", px_height: "106")
# @blank.prints.create(type: "Print::WovenLabel", name: "Right Patch Woven Tag", element_id: "right_patch_woven_tag", in_width: "2.5", in_height: "1.26", mm_width: "63.5", mm_height: "32", px_width: "210.4", px_height: "106")
# @blank.prints.create(type: "Print::WovenLabel", name: "Left Sleeve Folded Woven Tag", element_id: "left_sleeve_folded_woven_tag", in_width: "2.5", in_height: "1.26", mm_width: "63.5", mm_height: "32", px_width: "210.4", px_height: "106")
# @blank.prints.create(type: "Print::WovenLabel", name: "Right Sleeve Folded Woven Tag", element_id: "right_sleeve_folded_woven_tag", in_width: "2.5", in_height: "1.26", mm_width: "63.5", mm_height: "32", px_width: "210.4", px_height: "106")
@blank.prints.create(type: "Print::WovenLabel", name: "Left Woven", element_id: "Front_x5F_Left_Woven", in_width: "2.5", in_height: "1.26", mm_width: "63.5", mm_height: "32", px_width: "210.4", px_height: "106")
@blank.prints.create(type: "Print::WovenLabel", name: "Right Woven", element_id: "Front_x5F_Right_Woven", in_width: "2.5", in_height: "1.26", mm_width: "63.5", mm_height: "32", px_width: "210.4", px_height: "106")

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
