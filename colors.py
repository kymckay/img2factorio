default = "out-of-map" # This is used to shape when --color is not specified

# Maximum of 256 color entires, pixels are converted to nearest match
tiles = {
    (0,0,0): "out-of-map",
    (255,0,0): "red-desert",
    (0,0,255): "deepwater"
}
