window.addEventListener('scroll', function() {
    let header = document.querySelector('header');
    if (this.window.scrollY > 50) {
        header.classList.add('scrolled');
    } else {
        header.classList.remove('scrolled');
    }
})