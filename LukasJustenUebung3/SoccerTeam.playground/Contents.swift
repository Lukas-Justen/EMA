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




