Add-Type -AssemblyName System.Drawing
$src = "c:\Users\acmil\Desktop\qq\icon-512.png"
$img = [System.Drawing.Image]::FromFile($src)

# Resize to 192
$bmp192 = New-Object System.Drawing.Bitmap(192, 192)
$g192 = [System.Drawing.Graphics]::FromImage($bmp192)
$g192.InterpolationMode = [System.Drawing.Drawing2D.InterpolationMode]::HighQualityBicubic
$g192.DrawImage($img, 0, 0, 192, 192)
$bmp192.Save("c:\Users\acmil\Desktop\qq\icon-192-new.png", [System.Drawing.Imaging.ImageFormat]::Png)

# Resize to 512
$bmp512 = New-Object System.Drawing.Bitmap(512, 512)
$g512 = [System.Drawing.Graphics]::FromImage($bmp512)
$g512.InterpolationMode = [System.Drawing.Drawing2D.InterpolationMode]::HighQualityBicubic
$g512.DrawImage($img, 0, 0, 512, 512)
$bmp512.Save("c:\Users\acmil\Desktop\qq\icon-512-new.png", [System.Drawing.Imaging.ImageFormat]::Png)

$g192.Dispose()
$bmp192.Dispose()
$g512.Dispose()
$bmp512.Dispose()
$img.Dispose()

Remove-Item "c:\Users\acmil\Desktop\qq\icon-192.png" -ErrorAction SilentlyContinue
Remove-Item "c:\Users\acmil\Desktop\qq\icon-512.png" -ErrorAction SilentlyContinue
Rename-Item "c:\Users\acmil\Desktop\qq\icon-192-new.png" "icon-192.png"
Rename-Item "c:\Users\acmil\Desktop\qq\icon-512-new.png" "icon-512.png"
