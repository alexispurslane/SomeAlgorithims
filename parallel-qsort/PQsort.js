var Parallel = require('paralleljs');

function pqsort (list) {
    var larger = list.filter((x) => list[0] < x);
    var smaller = list.filter((x) => list[0] >= x);
    
}