//String Interpolation

//Example Data
var trackName = "Ambre"
var artistName = "Nils Frahm"
var duration = 228

//...
trackName = "Ombre"

let message = "Now playing \(trackName) by \(artistName) which is \(duration) long"

print("Now playing \(trackName) by \(artistName) which is \(duration/60):\(duration%60) long")
print(message)

