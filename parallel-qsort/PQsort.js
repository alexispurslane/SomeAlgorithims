function pqsort(list, callback, code) {
    // Thread Code
    var blob = new Blob([
        pqsort.toString() + "\n",
        "self.addEventListener('message', function (e) {\n",
        "    pqsort(JSON.parse(e.data).value, function (x) {",
        "        self.postMessage(x);",
        "    }, JSON.parse(e.data).code);\n",
        "});"
    ], { type: 'text/javascript' });
    code = code || URL.createObjectURL(blob);

    // Smaller
    var smaller = new Worker(code);
    var smallerData = [];
    smaller.postMessage(JSON.stringify({
        value: list.filter((x) => list[0] < x),
        code: code
    }));
    smaller.addEventListener('message', function (e) {
        smallerData = e.data;
        if (largerData !== []) {
            callback(smaller.concat(list[0]).concat(larger));
        }
    });

    // Larger
    var larger = new Worker(code);
    var largerData = [];
    larger.postMessage(JSON.stringify({
        value: list.filter((x) => list[0] >= x),
        code: code
    }));
    larger.addEventListener('message', function (e) {
        largerData = e.data;
        if (smallerData !== []) {
            callback(smaller.concat(list[0]).concat(larger));
        }
    });
}

module.exports = pqsort;