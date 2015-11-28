function convert(direction, temp) {
    if (direction === "to") {
        return (temp - 32) * 5 / 9;
    } else if (direction === "from") {
        return ((c * 9) / 5) + 32;
    }
}