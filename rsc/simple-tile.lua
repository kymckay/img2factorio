script.on_event(defines.events.on_chunk_generated, function(event)
    local area, surface = event.area, event.surface

    local tiles = {}

    for x = area.left_top.x, area.right_bottom.x do
        -- If the column is present in the shape, check for the y tiles
        local local_x = math.floor((x - width/2) % width)
        if img_table[local_x] then
            for y = area.left_top.y, area.right_bottom.y do
                -- If the tile is present in the shape, add to tiles table
                local local_y = math.floor((y - height/2) % height)
                if img_table[local_x][local_y] then
                    tiles[#tiles+1] = {name = img_table[local_x][local_y], position = {x,y}}
                end
            end
        end
    end

    surface.set_tiles(tiles)
end)
