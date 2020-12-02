var abbrev = "MB"

switch abbrev{
case "kB":
    print("kilobyte")
case "MB":
    print("megabyte")
case "GB":
    print("gigabyte")
case "TB":
    print("terabyte")
case "PB":
    print("petabyte")
case "EB":
    print("exabyte")
default:
    print("not a recognised abbreviation")
}

//Basic Switch
let volcanoExplosivityIndex: Int //0-8
volcanoExplosivityIndex = 3

switch volcanoExplosivityIndex{
case 0:
    print("Effusive")
case 1:
    print("Gentle")
    print("NOTE: expect a plume of < 1km")
case 2:
    print("Explosive")
case 3:
    print("Cataclysmic")
case 4:
    print("Cataclysmic")
    print("NOte the 2010 eruption of Eyjafjallajokull")
case 5:
    print("Paroxysmic")
case 6:
    print("Colossal")
case 7:
    print("Super-Colossal")
case 8:
    print("Mega colossal")
    print("NOTE: 😱")
default:
    print("not a recognised index.")
}

//Case with multiple conditions for each case
var levelNumber: Int
levelNumber = 5

switch levelNumber{
case 1,2,3:
    print("Beginner level")
case 4,5,6:
    print("Intermediate Level")
case 7,8,9:
    print("Expert Level")
default:
    print("incorrect difficulty")
}

//Case with a range of conditions for a case
//... is used for the range operator, sytax - Start...End

var someNumber: Int
someNumber = 4

switch someNumber{
case 1...10:
    print("number is between 1 and 10")
case 11...20:
    print("number is between 11 and 20")
case 21...30:
    print("number is between 21 and 30")
default:
    print("incorrect number")
}
