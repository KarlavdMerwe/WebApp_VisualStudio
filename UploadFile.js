var imagesObject = [];

function handleFileSelect(evt) {
    var files = evt.target.files; // FileList object

    // Loop through the FileList and render image files as thumbnails.
    for (var i = 0, f; f = files[i]; i++) {

        // Only process image files.
        if (!f.type.match('image.*')) {
            continue;
        }

        var reader = new FileReader();

        // Closure to capture the file information.
        reader.onload = function (e) {
            displayImgData(e.target.result)
            addImage(e.target.result);
        };

        reader.readAsDataURL(f);
    }
}

function loadFromLocalStorage() {
    var images = JSON.parse(localStorage.getItem("images"))

    if (images && images.length > 0) {
        imagesObject = images;

        displayNumberOfImgs();
        images.forEach(displayImgData);
    }
}

function addImage(imgData) {
    imagesObject.push(imgData);
    localStorage.setItem("images", JSON.stringify(imagesObject));
}

function displayImgData(imgData) {
    var span = document.createElement('span');
    span.innerHTML = '<img class="thumb" src="' + imgData + '"/>';
    document.getElementById('list').insertBefore(span, null);
}


function deleteImages() {
    imagesObject = [];
    localStorage.removeItem("images");
    document.getElementById('list').innerHTML = "";
}

document.getElementById('files').addEventListener('change', handleFileSelect, false);
//document.getElementById('deleteImgs').addEventListener("click", deleteImages);
loadFromLocalStorage();