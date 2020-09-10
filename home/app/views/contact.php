<div data-aos="fade-up" data-aos-duration="700" id="contact">
    <div class="contact">
    </div>
    <div class=" form">
        <form class="flex-column" action="" method="POST">
            <div class="contact-title">

                <h3>Contact me <img src="<?= URL_ROOT ?>/images/pointer.png" alt="contact me"></h3>
                <p>Let me know if I can do anything for you</p>
            </div>
            <div class="flex-row name-email justify-between">
                <label for="name"></label>
                <input type="text" name="name" placeholder="Your name ..." id="name" class="input_name">
                <span class="text-danger"></span>
                <label for="tel"></label>
                <input type="tel" name="phone" placeholder="Your phone no." id="phone" class="input_email">
                <span class="text-danger"></span>

            </div>
            <label for="text"></label>
            <textarea name="textarea" id="textarea" rows="5" class="textarea" placeholder="Only if you want to :)"></textarea>
            <input type="submit" id="submit_form" name="submit" value="SEND" class="input_submit">
            <span class="response"></span>
        </form>
    </div>
</div>
<?php require_once APP_ROOT . '/views/include/footer.php' ?>