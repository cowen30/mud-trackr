$(window).on("load", () => {
    $('.clickable-row').on('click', (event) => {
        window.location = $(event.currentTarget).data('href');
    });
});