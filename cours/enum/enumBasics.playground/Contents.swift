// Basic enum
enum Weekday {
    case Monday, Tuesday, Wednesday, Thursday, Friday
}

var today: Weekday
today = .Wednesday

switch today {
case .Monday, .Tuesday, .Thursday, .Friday:
    print("It's time to working")
case .Wednesday:
    print("Free times")
}

// RawValues
enum State : Int {
    case Ready = 0
    case Set
    case Go
}

var raceState = State.Go
raceState.rawValue

var nextRaceState = State(rawValue: raceState.rawValue + 1)
nextRaceState = .Go
if nextRaceState == .Go {
    print("Go! go! go!")
}
