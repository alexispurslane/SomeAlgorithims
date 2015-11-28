function reverse(list) {
    return list.reduce((acc, x) => {
        return [x].concat(acc);
    }, []);
}