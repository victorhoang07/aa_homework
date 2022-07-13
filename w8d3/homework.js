const printNames = function(names) {
    names.forEach(el => console.log(el));   
}; 
 
function titleize (names, printCallback) {
    let full_name_arr = names.map(function(name) {
        return `Mx. ${name} Jingleheimer Schmidt` 
    });
    return printCallback(full_name_arr);
}; 

// titleize(["Mary", "Brian", "Leo"], printNames);

// > titleize(["Mary", "Brian", "Leo"], printCallback);
// Mx. Mary Jingleheimer Schmidt
// Mx. Brian Jingleheimer Schmidt
// Mx. Leo Jingleheimer Schmidt

function Elephant(name, height, tricks) {
    this.name = name;
    this.height = height;
    this.tricks = tricks;
}
let ellie = new Elephant("Ellie", 185, ["giving human friends a ride", "playing hide and seek"]);
let charlie = new Elephant("Charlie", 200, ["painting pictures", "spraying water for a slip and slide"]);
let kate = new Elephant("Kate", 234, ["writing letters", "stealing peanuts"]);
let micah = new Elephant("Micah", 143, ["trotting", "playing tic tac toe", "doing elephant ballet"]);
let herd = [ellie, charlie, kate, micah];


Elephant.prototype.trumpet = function(){
    console.log(`${this.name} the elephant goes 'phrRRRRRRRRRRR!!!!!!!`)
};

Elephant.prototype.grow = function() {
    this.height += 12
};

Elephant.prototype.addTrick = function(trick) {
    this.tricks.push(trick)
}

Elephant.prototype.play = function() {
    let randomIndex = Math.floor(Math.random() * this.tricks.length);
    console.log(`${this.name} is ${this.tricks[randomIndex]}`)
}

console.log(ellie.grow())
console.log(ellie)
console.log(ellie.trumpet())
console.log(ellie.play())
