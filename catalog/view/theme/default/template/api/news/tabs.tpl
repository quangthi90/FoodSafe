<div class="column-box">
    <div class="tabs">
        <ul class="nav nav-tabs">
        <?php $i = 0; foreach ($modules as $module) { ?>
            <li <?php if ($i++ == 0) { ?>class="active"<?php } ?>>
                <a href="#<?php echo $module['code']; ?>" data-toggle="tab">
                    <?php echo $module['heading_title']; ?>
                </a>
            </li>
        <?php } ?>
        </ul>
        <div class="tab-content">
            <?php $i = 0; foreach ($modules as $module) { ?>
            <div class="tab-pane <?php if ($i++ == 0) {?>active<?php } ?>" id="tab-new-nofication">
                <ul class="list-unstyled news-list">
                <?php foreach ($module['news'] as $news) { ?>
                    <li>
                        <a title="<?php echo $news['title']; ?>" href="<?php echo $news['href']; ?>">
                            <?php echo $news['title']; ?>
                            <span class="iView">
                                <img src="http://thitruongnongnghiep.vn/DesktopModules/News/Module_HotNew//images/new.gif" alt="Tin có ảnh">
                            </span>
                        </a>
                    </li>
                <?php } ?>
                </ul>
            </div>
            <?php } ?>
        </div>
    </div>
</div>