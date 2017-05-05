//
//  ViewController.swift
//  TodoList
//
//  Created by Student on 05.05.17.
//  Copyright © 2017 TH Bingen. All rights reserved.
//

import UIKit


extension ViewController: UITableViewDataSource, UITableViewDelegate { }


class ViewController: UIViewController {
    
    // Die Liste der Todos, die dargestellt werden soll
    var todos:[Todo] = [Todo]()
    // Der TableView zur Darstellung der Todos
    var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Erstellt einen neuen Button innerhalb der UINavigationBar, der für das Einfügen eines neuen Todo verantwortlich ist
        let insertButton: UIBarButtonItem = UIBarButtonItem(title: "Insert", style: .plain, target: self, action: #selector(insert))
        navigationItem.leftBarButtonItem = insertButton
        
        // Erstellt einen neuen UITableView, der die bereits angelegten Todos anzeigen soll
        tableView = UITableView(frame: view.bounds)
        view.addSubview(tableView)
        tableView.dataSource = self
        tableView.delegate = self
        
        // Ändert den Titel der UINavigationBar
        navigationItem.title = "Todos"
    }

    
    func insert() {
        // Erstellt einen neuen UIAlertController, zum Anlegen eines neuen Todos
        let alert = UIAlertController(title: "Create new Todo", message: "Please enter the name for the todo which should be inserted in your list", preferredStyle: .alert)
        
        // Fügt dem UIAlertController ein neues Textfeld zur Eingabe des Titels des Todos hinzu
        alert.addTextField { (textField) in
            textField.placeholder = "Title of todo"
            textField.textAlignment = .center
        }
        
        // Fügt dem UIAlertController ein neues Textfeld zur Eingabe weiterer Informationen oder einer Beschreibung des Todos hinzu
        alert.addTextField { (textField) in
            textField.placeholder = "Description"
            textField.textAlignment = .center
        }
        
        // Wenn über den Button "OK" die Eingabe des Todos bestätigt wird, wird dieser dem UITableView hinzugefügt
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { [weak alert] (_) in
            let inputTitle: String = ((alert?.textFields![0])?.text)!
            let inputDescription: String = ((alert?.textFields![1])?.text)!
            
            // Wenn wenigstens ein Titel angegeben wurde speichere den Todo in der Liste und zeige ihn an
            if (inputTitle != "") {
                self.todos.append(Todo(title: inputTitle, description: inputDescription))
                
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
            }
        }))
        
        // Schließt den Dialog auf Wunsch des Nutzers wieder
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        
        // Zeigt den UIAlertController zum Anlegen eines neuen Todos an
        self.present(alert, animated: true, completion: nil)
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todos.count
    }

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Holt ein neues Element aus der Liste aller Todos
        let todo = todos[indexPath.row]
        
        // Initialisiert eine neue Zelle, die das zuvor ausgewählte Element darstellen soll, falls keine wiederverwendbare zu finden ist
        let cellIdentifier = "ElementCell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier)
            ?? UITableViewCell(style: .subtitle, reuseIdentifier: cellIdentifier)
        
        // Gibt den Textfeldern der Zelle die korrekte Beschriftung
        cell.textLabel?.text = todo.title
        cell.detailTextLabel?.text = todo.description
        
        // Gibt die fertige Zelle für die UITableView zurück
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Entfernt das ausgewählte Element aus der Liste aller Todos
            self.todos.remove(at: indexPath.row)
            
            // Entfernt das Element aus der UITableView
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
}


// Das Struct speichert alle Informationen im Bezug zu einem Todo einheitlich ab
struct Todo {
    
    var title: String
    var description: String
    
}
