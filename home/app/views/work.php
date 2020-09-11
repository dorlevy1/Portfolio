<div data-aos="fade-up" data-aos-duration="700" id="work">
    <div class="work-title">
        <h1>My work</h1>
    </div>
    <div data-aos="fade-right" data-aos-duration="600" class="flex-row work">
        <?php foreach ($data as $key => $value) : ?>
            <a target="_blank" href="<?= $value->url ?>">

                <div class="description">
                    <div class="project-information flex-row">

                        <div class="flex-column">
                            <div class="project_name">
                                <h3>
                                    <?= $value->title ?>
                                </h3>
                            </div>
                            <div class="description_project">
                                <?= $value->description ?>
                            </div>
                        </div>
                        <!-- <img src="images/git.png" alt="Dor's github"> -->
                    </div>
                </div>
                <img class="work_img" src="<?= URL_ROOT . $value->imgURL ?>" alt="<?= $value->tilte ?> Made By Dor Dylan Levy">
            </a>
        <?php endforeach ?>
    </div>
</div>