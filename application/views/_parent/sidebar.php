    <!-- ======= Sidebar ======= -->
    <aside id="sidebar" class="sidebar">

        <ul class="sidebar-nav" id="sidebar-nav">

            <!-- <li class="nav-item ">
                <a class="nav-link" href="<?= base_url('dashboard') ?>">
                    <i class="bi bi-grid"></i>
                    <span>Dashboard</span>
                </a>
            </li> -->

            <!-- End Dashboard Nav -->
            <?php
            $level = $this->session->userdata('group_id');
            $main_menu = $this->db->order_by('sort', 'ASC')->get_where('sys_menu_vd', array('parent' => 0, 'active' => 1, 'group_id' => $level));
            // $main_menu = $this->db->get_where("sys_menu_vd", ["parent" => 0, 'active' => 1]);
            foreach ($main_menu->result() as $main) {
                // var_dump($main->menu_id);

                //Query untuk mencari data sub menu
                $sub_menu = $this->db->order_by('sort', 'ASC')->get_where('sys_menu_vd', array('parent' => $main->menu_id, 'active' => 1, 'group_id' => $level));
                // var_dump($sub_menu->num_rows());
                // die;
                //periksa apakah ada sub menu
                if ($sub_menu->num_rows() > 0) {
            ?>
                    <li class="nav-item">
                        <a class="nav-link collapsed" data-bs-target="#nav_<?= $main->menu_id ?>" data-bs-toggle="collapse" href="<?= base_url($main->link); ?>" id="nav">
                            <i class="bi bi-menu-button-wide-fill "></i><span class="nav-bar"><?= $main->menu_name; ?></span><i class="bi bi-chevron-down ms-auto "></i>
                        </a>

                        <ul id="nav_<?= $main->menu_id ?>" vid="<?= $main->menu_id ?>" class="nav-content collapse <?= $this->uri->segment(1) == $main->link ? 'show' : '' ?>" data-bs-parent="#sidebar-nav">
                            <?php
                            foreach ($sub_menu->result() as $sub) {
                            ?>
                                <li>
                                    <a href="<?= base_url($sub->link); ?>" class="<?= $this->uri->segment(1) . '/' . $this->uri->segment(2) == $sub->link ? ' active' : '' ?>">
                                        <i class="bi bi-circle"></i><span><?= $sub->menu_name ?></span>
                                    </a>
                                </li>
                            <?php
                            }
                            ?>

                        </ul>
                    </li><!-- End Components Nav -->
                <?php
                } else {
                ?>
                    <li class="nav-item">
                        <a class="nav-link  <?= $this->uri->segment(1) == $main->link ? ' active' : '' ?>" href="<?= base_url($main->link); ?>">
                            <i class="bi bi-menu-button-wide"></i>
                            <span><?= $main->menu_name ?></span>
                        </a>
                    </li>

            <?php
                }
            }
            ?>


        </ul>

    </aside><!-- End Sidebar-->