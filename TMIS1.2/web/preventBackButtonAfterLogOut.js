// Check if the page was loaded from the cache
if (window.performance && window.performance.navigation.type === window.performance.navigation.TYPE_BACK_FORWARD) {
    // Redirect to the login page or any other desired page
    window.location.href = "index.html";
}
