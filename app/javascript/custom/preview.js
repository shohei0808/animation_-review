onchange = function previewImage(event) {
    const target = event.target;
    if (target.files && target.files.length > 0) {
        const file = target.files[0];
        const reader = new FileReader();
        reader.onloadend = function () {
            const preview = document.querySelector("#preview");
            if (preview) {
                preview.src = reader.result;
            }
        }
        reader.readAsDataURL(file);
    }
}