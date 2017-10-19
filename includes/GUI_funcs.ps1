# Globals
$DEFAULT_FONT = "Microsoft Sans Serif"

# Adds a button with specified parameters to the $parent GUI object
Function AddButton($text, $width, $height, $location_x, $location_y, $font_size, $click_func, $parent){
    $ret = New-Object system.windows.Forms.Button
    $ret.Text = $text
    $ret.Width = $width
    $ret.Height = $height
    $ret.Add_Click($click_func)
    $ret.Location = new-object system.drawing.point($location_x, $location_y)
    $ret.Font = "$DEFAULT_FONT, $font_size"
    $parent.controls.Add($ret)

}

# Returns a button created with specified parameters (same as above but botton is returned as object, not immediately added to GUI)
Function GetButton($text, $width, $height, $location_x, $location_y, $font_size, $click_func){
    $ret = New-Object system.windows.Forms.Button
    $ret.Text = $text
    $ret.Width = $width
    $ret.Height = $height
    $ret.Add_Click($click_func)
    $ret.Location = new-object system.drawing.point($location_x, $location_y)
    $ret.Font = "$DEFAULT_FONT, $font_size"
    $ret

}