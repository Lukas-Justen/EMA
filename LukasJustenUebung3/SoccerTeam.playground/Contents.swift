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



