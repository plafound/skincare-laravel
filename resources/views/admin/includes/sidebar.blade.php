<aside class="left-sidebar">
    <!-- Sidebar scroll-->
    <div class="scroll-sidebar">
        <!-- Sidebar navigation-->
        <nav class="sidebar-nav">
            <ul id="sidebarnav">
                <li class="nav-small-cap">
                    <i class="mdi mdi-dots-horizontal"></i>
                    <span class="hide-menu">Data</span>
                </li>
                <li class="sidebar-item">
                    <a class="sidebar-link waves-effect waves-dark sidebar-link" href="{{ route('dashboard') }}"
                        aria-expanded="false">
                        <i class="mdi mdi-av-timer"></i>
                        <span class="hide-menu">Dashboard</span>
                    </a>
                </li>
                <li class="sidebar-item">
                    <a class="sidebar-link waves-effect waves-dark sidebar-link" href="{{ route('category') }}"
                        aria-expanded="false">
                        <i class="mdi mdi-format-list-bulleted-type"></i>
                        <span class="hide-menu">Category</span>
                    </a>
                </li>
                <li class="sidebar-item">
                    <a class="sidebar-link waves-effect waves-dark sidebar-link" href="{{ route('question') }}"
                        aria-expanded="false">
                        <i class="mdi mdi-comment-question-outline"></i>
                        <span class="hide-menu">Question</span>
                    </a>
                </li>
                <li class="sidebar-item">
                    <a class="sidebar-link waves-effect waves-dark sidebar-link" href="{{ route('history') }}"
                        aria-expanded="false">
                        <i class="mdi mdi-history"></i>
                        <span class="hide-menu">History</span>
                    </a>
                </li>
                <li class="sidebar-item">
                    <a class="sidebar-link waves-effect waves-dark sidebar-link" href="{{ route('message') }}"
                        aria-expanded="false">
                        <i class="mdi mdi-message"></i>
                        <span class="hide-menu">Message</span>
                    </a>
                </li>
                {{-- <li class="sidebar-item">
                    <a class="sidebar-link waves-effect waves-dark sidebar-link" href="{{ route('user') }}"
                        aria-expanded="false">
                        <i class="mdi mdi-account-multiple"></i>
                        <span class="hide-menu">User</span>
                    </a>
                </li> --}}
                <li class="sidebar-item">
                    <a class="sidebar-link has-arrow" href="#" aria-expanded="false">
                        <span class="d-flex">
                            <i class="mdi mdi-account-multiple"></i>
                        </span>
                        <span class="hide-menu">Users</span>
                    </a>
                    <ul aria-expanded="false" class="collapse first-level">
                        <li class="sidebar-item">
                            <a href="{{ route('user.user') }}" class="sidebar-link">
                                <div class="round-16 d-flex align-items-center justify-content-center">
                                    <i class="mdi mdi-checkbox-blank-circle-outline"></i>
                                </div>
                                <span class="hide-menu">User</span>
                            </a>
                        </li>
                        <li class="sidebar-item">
                            <a href="{{ route('user.admin') }}" class="sidebar-link">
                                <div class="round-16 d-flex align-items-center justify-content-center">
                                    <i class="mdi mdi-checkbox-blank-circle-outline"></i>
                                </div>
                                <span class="hide-menu">Admin</span>
                            </a>
                        </li>
                    </ul>
                </li>
            </ul>
        </nav>
        <!-- End Sidebar navigation -->
    </div>
    <!-- End Sidebar scroll-->
</aside>
