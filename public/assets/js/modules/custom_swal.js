swal_html = (html) => {
    Swal.fire({
        html: html,
        showCloseButton: true,
        showCancelButton: false,
        showConfirmButton: false,
        focusConfirm: false,
        scrollbarPadding:false,
        widthAuto: true,
        width: '75%',
    });
}

swal_html_mini = (html) => {
    Swal.fire({
        html: html,
        showCloseButton: true,
        showCancelButton: false,
        showConfirmButton: false,
        focusConfirm: false,
        scrollbarPadding:false,
        widthAuto: true,
    });
}

swal_loading = (msg) => {
    img = localStorage.getItem('assets_url');

    let spinner = `           
        <div>
            <img 
                src="../assets/images/svg/blue/svg817.svg" 
                alt="" style="height:auto; max-width: 50%;"
            >
        </div>     

        <div>
            <div class="spinner-grow text-primary m-1" role="status">
                <span class="sr-only">Loading...</span>
            </div>
            <div class="spinner-grow text-secondary m-1" role="status">
                <span class="sr-only">Loading...</span>
            </div>
            <div class="spinner-grow text-success m-1" role="status">
                <span class="sr-only">Loading...</span>
            </div>
            <div class="spinner-grow text-info m-1" role="status">
                <span class="sr-only">Loading...</span>
            </div>
            <div class="spinner-grow text-warning m-1" role="status">
                <span class="sr-only">Loading...</span>
            </div>
            <div class="spinner-grow text-danger m-1" role="status">
                <span class="sr-only">Loading...</span>
            </div>
            <div class="spinner-grow text-dark m-1" role="status">
                <span class="sr-only">Loading...</span>
            </div>
        </div>
    `;
    Swal.fire({
        title: msg,
        html: spinner,
        showConfirmButton: false,
    }).then((result) => {
    })        
}


swal_done = (msg) => {
    const Toast = Swal.mixin({
        toast: true,
        position: 'top-end',
        showConfirmButton: false,
        timer: 3000,
        timerProgressBar: true,
        didOpen: (toast) => {
            toast.addEventListener('mouseenter', Swal.stopTimer)
            toast.addEventListener('mouseleave', Swal.resumeTimer)
        }
    })
        
    Toast.fire({
        icon: 'success',
        title: msg
    })
}


swal_error = (msg) => {
    const Toast = Swal.mixin({
        toast: true,
        position: 'top-end',
        showConfirmButton: false,
        timer: 3000,
        timerProgressBar: true,
        didOpen: (toast) => {
            toast.addEventListener('mouseenter', Swal.stopTimer)
            toast.addEventListener('mouseleave', Swal.resumeTimer)
        }
    })
        
    Toast.fire({
        icon: 'error',
        title: msg
    })
}
