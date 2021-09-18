<aside id="sidebar-wrapper">
    <div class="sidebar-brand">
        <a href="{{ url('admin/dashboard') }}">
            <span class="header-logo">
                <img src="{{ asset('backend/assets/img/logo/logo.png') }} " width="80%" alt="logo">
            </span>
        </a>
    </div>

    <ul class="sidebar-menu mt-3">

        <li class="dropdown">
            <a href="{{ url('admin/dashboard') }}" class="nav-link"><i data-feather="monitor"></i><span>სამართავი პანელი</span></a>
        </li>

        <li class="dropdown">
            <a href="#" class="menu-toggle nav-link has-dropdown"><i data-feather="shopping-cart"></i>
                <span>პროდუქცია</span></a>
            <ul class="dropdown-menu">
                <li><a class="nav-link" href="{{ url('admin/products') }}">პროდუქცია</a></li>
                <li><a class="nav-link" href="{{ url('admin/product/create') }}"> დამატება</a></li>
            </ul>
        </li>

        <li class="dropdown">
            <a href="{{ url('admin/categories') }}" class="nav-link"><i data-feather="list"></i><span>კატეგორიები</span></a>
        </li>

        <li class="menu-header">Admin</li>


        <li class="dropdown">
            <a href="#" class="menu-toggle nav-link has-dropdown"><i data-feather="users"></i>
                <span>მომხმარებლები</span></a>
            <ul class="dropdown-menu">
                <li><a class="nav-link" href="{{ url('admin/users') }}">მომხმარებლები</a></li>
                <li><a class="nav-link" href="{{ url('admin/roles') }}"> პრივილეგიები</a></li>
            </ul>
        </li>
        <li class="dropdown">
            <a href="{{ url('admin/setting') }}" class="nav-link"><i data-feather="settings"></i><span>პარამეტრები</span></a>
        </li>



    </ul>
</aside>
