function madLib (verb, adjective, noun) {
    console.log(`We shall ${verb.toUpperCase()} the ${adjective.toUpperCase()} ${noun.toUpperCase()}`);
}

madLib('make', 'best', 'guac');

const isSubstring = (searchString, subString) => {
    console.log(searchString.includes(subString));
}

const fizzBuzz = arr => {
    let result = []
    arr.forEach(function(num) {
        if ((num % 3 === 0 || num % 5 === 0) && !(num % 3 === 0 && num % 5 === 0) )
        result.push(num);
    });
    console.log(result);
}

const isPrime = num => {
    if (num < 2) {
        console.log(false);
    };

    for (let i = 2; i < num; i++) {
        if (num % i === 0) {
            console.log(false);
        }
    }
    console.log(true)
}

