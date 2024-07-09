<style>
    /* Custom styles for the navbar */
.custom-navbar {
    background-color: #343a40; /* Dark background */
    padding: 1rem 2rem; /* Add padding */
    border-bottom: 2px solid #dc3545; /* Add a border at the bottom */
}

.custom-brand {
    font-size: 1.5rem; /* Increase brand font size */
    color: #dc3545; /* Custom brand color */
    font-weight: bold; /* Make brand bold */
    text-transform: uppercase; /* Uppercase text */
}

.custom-brand:hover {
    color: #343a40; /* Brand hover color */
    text-decoration: none; /* Remove underline on hover */
}

.custom-toggler {
    border: none; /* Remove border from the toggler button */
}

.custom-toggler .navbar-toggler-icon {
    background-image: url('data:image/svg+xml;charset=UTF8,%3Csvg viewBox="0 0 30 30" xmlns="http://www.w3.org/2000/svg"%3E%3Cpath stroke="rgba%28255, 255, 255, 0.5%29" stroke-width="2" linecap="round" linejoin="round" d="M4 7h22M4 15h22M4 23h22"/%3E%3C/svg%3E');
    /* Custom icon color */
}

.custom-nav .nav-item .custom-link {
    color: #ff6f61; /* Custom link color */
    margin-right: 1rem; /* Add space between links */
    font-weight: bold; /* Make links bold */
    text-transform: uppercase; /* Uppercase text */
}

.custom-nav .nav-item .custom-link:hover {
    color: #818182; /* Link hover color */
    text-decoration: underline; /* Underline on hover */
}

.custom-nav .nav-item .custom-link.active {
    color: #818182; /* Active link color */
}

</style>
<nav class="navbar navbar-expand-lg bg-body-tertiary custom-navbar">
    <div class="container-fluid">
        <a class="navbar-brand custom-brand" href="${pageContext.request.contextPath}">Scented Ari</a>
        <button class="navbar-toggler custom-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0 custom-nav">
                <li class="nav-item">
                    <a class="nav-link active custom-link" aria-current="page" href="${pageContext.request.contextPath}/product">Inventory</a>
                </li>
            </ul>
        </div>
    </div>
</nav>
