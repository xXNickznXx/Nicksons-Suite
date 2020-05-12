[MeasureDrive1]
Measure=Plugin
Plugin=InputText
X=[MeterDrive1Value:X]
Y=[MeterDrive1Value:Y]
H=[MeterDrive1Value:H]
W=[MeterDrive1Value:W]
AntiAlias=1
DefaultValue=#Drive1#
FontColor=222,222,222
FontFace=B612 Mono
FontSize=15
SolidColor=26,80,156
Command1=[!WriteKeyValue Variables Drive1 "$UserInput$" "C:\Users\20nic\Documents\Rainmeter\Skins\Nickson_Dev\@Resources\Drives\VariablesDrive.inc"][!Refresh][!Refresh "Nickson_Dev\Drives\Drive1"]
