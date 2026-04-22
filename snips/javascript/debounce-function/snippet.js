// Debounce Function
// Delays invoking a function until after a specified wait time
// has elapsed since the last time it was called.

function debounce(func, wait = 300) {
    let timeoutId;

    return function (...args) {
        clearTimeout(timeoutId);

        timeoutId = setTimeout(() => {
            func.apply(this, args);
        }, wait);
    };
}

// Usage example:
// const handleSearch = debounce((query) => {
//   console.log("Searching for:", query);
//   // fetch(`/api/search?q=${query}`)...
// }, 500);
//
// inputElement.addEventListener("input", (e) => handleSearch(e.target.value));
