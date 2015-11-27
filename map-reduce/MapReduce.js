const flatten = list => list.reduce(
    (a, b) => a.concat(Array.isArray(b) ? flatten(b) : b), []
);

function mapReduce(hl) {
    return hl.reduce((acc, kv) => {
        var accWithoutKey = acc.filter((i) => i[0] !== kv[0]);
        var idx = flatten(acc).indexOf(kv[0]);
        var accVal = 0;
        if (idx !== -1) {
            accVal = acc[idx][1];
        }

        return accWithoutKey.concat([ [kv[0], kv[1] + accVal] ]);
    }, []);
}