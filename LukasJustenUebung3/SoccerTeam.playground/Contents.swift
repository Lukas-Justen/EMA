//: Playground - noun: a place where people can play

import UIKit

class Person {
    
    private var forename: String;
    private var surname: String;
    private var age: Int;
    
    init(forename: String, surname: String, age: Int) {
        self.forename = forename;
        self.surname = surname;
        self.age = age;
    }
    
    internal func setAge(_ age: Int) -> Person {
        if (age >= 0) {
            self.age = age;
        }
        return self;
    }
    
    internal func setForename(_ forename: String) -> Person {
        if (forename != "") {
            self.forename = forename;
        }
        return self;
    }
    
    internal func setSurname(_ surname: String) -> Person {
        if (surname != "") {
            self.surname = surname;
        }
        return self;
    }
    
    internal func getAge() -> Int {
        return self.age;
    }
    
    internal func getForename() -> String {
        return self.forename;
    }
    
    internal func getSurname() -> String {
        return self.surname;
    }
    
}

class Player : Person {
    
    private var tricotNumber: Int;
    private var position: SoccerPosition;
    
    init(forename: String, surname: String, age: Int, tricotNumber: Int, position: SoccerPosition) {
        self.tricotNumber = tricotNumber;
        self.position = position;
        super.init(forename: forename, surname: surname, age: age)
    }
    
    internal func setTricotNumber(_ tricotNumber: Int) -> Player {
        if (tricotNumber >= 1) {
            self.tricotNumber = tricotNumber;
        }
        return self;
    }
    
    internal func setPosition(_ position: SoccerPosition) -> Player {
        self.position = position;
        return self;
    }
    
    internal func getTricotNumber() -> Int {
        return self.tricotNumber;
    }
    
    internal func getPosition() -> SoccerPosition {
        return self.position;
    }
    
}


enum SoccerPosition : String {
    
    case Defence = "Abwehr", Midfield = "Mittelfeld", Offence = "Sturm", Goal = "Tor";
    
    static let allValues = [Goal, Defence, Midfield, Offence];
}
class Team {
    
    private let name: String;
    private var squad: [Player];
    private var placeInTable: Int;
    
    init(name: String, squad: [Player], placeInTable: Int) {
        self.name = name;
        self.squad = squad;
        self.placeInTable = placeInTable;
    }
    
    func setSquad(squad: [Player]) -> Team {
        if (squad.count == 11) {
            self.squad = squad;
        }
        return self;
    }
    
    func setPlaceInTable(placeInTable: Int) -> Team {
        if (placeInTable >= 1) {
            self.placeInTable = placeInTable;
        }
        return self;
    }
    
    internal func getName() -> String {
        return self.name;
    }
    
    internal func getSquad() -> [Player] {
        return self.squad;
    }
    
    internal func getPlaceInTable() -> Int {
        return self.placeInTable;
    }
    
    internal func playersAndPosition() -> Void {
        for position in SoccerPosition.allValues {
            for player in squad {
                if (player.getPosition() == position) {
                    print(player.getForename() + " " + player.getSurname() + "  -->  " + player.getPosition().rawValue);
                }
            }
        }
    }
    
    internal func gameDay(team: Team) -> Bool {
        let win: Bool = arc4random_uniform(2) == 0;
        if (win) {
            print(getName() + " hat gegen " + team.getName() + " gewonnen!");
        } else {
            print(getName() + " hat gegen " + team.getName() + " verloren!");
        }
        return win;
    }
    
}


var mainzerSpieler: [Player] = [Player]();
mainzerSpieler.append(Player(forename: "Jannik", surname: "Huth", age: 23, tricotNumber: 33, position: SoccerPosition.Goal));
mainzerSpieler.append(Player(forename: "Stefan", surname: "Bell", age: 25, tricotNumber: 16, position: SoccerPosition.Defence));
mainzerSpieler.append(Player(forename: "Daniel", surname: "Brosinski", age: 28, tricotNumber: 18, position: SoccerPosition.Defence));
mainzerSpieler.append(Player(forename: "Niko", surname: "Bungert", age: 30, tricotNumber: 26, position: SoccerPosition.Defence));
mainzerSpieler.append(Player(forename: "Giulio", surname: "Donati", age: 27, tricotNumber: 2, position: SoccerPosition.Defence));
mainzerSpieler.append(Player(forename: "Pablo", surname: "De Blasis", age: 29, tricotNumber: 32, position: SoccerPosition.Midfield));
mainzerSpieler.append(Player(forename: "Jairo", surname: "Samperio", age: 23, tricotNumber: 17, position: SoccerPosition.Midfield));
mainzerSpieler.append(Player(forename: "Yoshinori", surname: "Muto", age: 24, tricotNumber: 9, position: SoccerPosition.Midfield));
mainzerSpieler.append(Player(forename: "Bojan", surname: "", age: 26, tricotNumber: 10, position: SoccerPosition.Midfield));
mainzerSpieler.append(Player(forename: "Danny", surname: "Latza", age: 27, tricotNumber: 6, position: SoccerPosition.Midfield));
mainzerSpieler.append(Player(forename: "Jhon", surname: "Cordoba", age: 23, tricotNumber: 15, position: SoccerPosition.Midfield));
var mainz: Team = Team(name: "1. FSV Mainz 05", squad: mainzerSpieler, placeInTable: 1);
mainz.playersAndPosition();

print("\n");

var dortmunderSpieler: [Player] = [Player]();
dortmunderSpieler.append(Player(forename: "Roman", surname: "Bürki", age: 26, tricotNumber: 38, position: SoccerPosition.Goal));
dortmunderSpieler.append(Player(forename: "Sokratis", surname: "", age: 28, tricotNumber: 25, position: SoccerPosition.Defence));
dortmunderSpieler.append(Player(forename: "Lukas", surname: "Piszczek", age: 31, tricotNumber: 26, position: SoccerPosition.Defence));
dortmunderSpieler.append(Player(forename: "Erik", surname: "Durm", age: 24, tricotNumber: 37, position: SoccerPosition.Defence));
dortmunderSpieler.append(Player(forename: "Marcel", surname: "Schmelzer", age: 29, tricotNumber: 29, position: SoccerPosition.Defence));
dortmunderSpieler.append(Player(forename: "Sven", surname: "Bender", age: 28, tricotNumber: 6, position: SoccerPosition.Midfield));
dortmunderSpieler.append(Player(forename: "Marco", surname: "Reus", age: 27, tricotNumber: 11, position: SoccerPosition.Midfield));
dortmunderSpieler.append(Player(forename: "Nuri", surname: "Sahin", age: 28, tricotNumber: 8, position: SoccerPosition.Midfield));
dortmunderSpieler.append(Player(forename: "Shinji", surname: "Kagawa", age: 28, tricotNumber: 23, position: SoccerPosition.Midfield));
dortmunderSpieler.append(Player(forename: "Julian", surname: "Weigl", age: 21, tricotNumber: 33, position: SoccerPosition.Midfield));
dortmunderSpieler.append(Player(forename: "Pierre-Emerick", surname: "Aubameyang", age: 27, tricotNumber: 17, position: SoccerPosition.Midfield));
var dortmund: Team = Team(name: "Borussia Dortmund", squad: dortmunderSpieler, placeInTable: 2);
dortmund.playersAndPosition();

print("\n");

for _ in 0...10 {
    mainz.gameDay(team: dortmund);
}



