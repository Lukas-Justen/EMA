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



