   <footer class="text-center text-lg-start bg-dark text-muted">
            <!-- Section: Social media -->
            <section class="">
                <!-- Left -->
                <div class="me-5 d-none d-lg-block">
                    <span></span>
                </div>
                <!-- Left -->

                <!-- Right -->
                <div>
                    <a href="" class="me-4 text-reset">
                        <i class="fab fa-facebook-f"></i>
                    </a>
                    <a href="" class="me-4 text-reset">
                        <i class="fab fa-twitter"></i>
                    </a>
                    <a href="" class="me-4 text-reset">
                        <i class="fab fa-google"></i>
                    </a>
                    <a href="" class="me-4 text-reset">
                        <i class="fab fa-instagram"></i>
                    </a>
                    <a href="" class="me-4 text-reset">
                        <i class="fab fa-linkedin"></i>
                    </a>
                    <a href="" class="me-4 text-reset">
                        <i class="fab fa-github"></i>
                    </a>
                </div>
                <!-- Right -->
            </section>
            <!-- Section: Social media -->

            <!-- Section: Links  -->
            <section class="">
                <div class="container text-center text-md-start mt-5">
                    <!-- Grid row -->
                    <div class="row mt-3">
                        <!-- Grid column -->
                        <div class="col-md-3 col-6">
                            <!-- Content -->

                            <h6 class="text-uppercase fw-bold mb-4">
                                <i class=""></i>SD IT AR-RISALAH SECANG
                            </h6>
                            <!-- <center> -->
                                <img src="img/logodanbackround/logo.png" width="100px">
                                <!-- </center> -->
                                <br>
                                <br>
                                <span class="text-muted fw-bold">By.SDIT Dev</span>
                            </div>
                            <!-- Grid column -->

                            <!-- Grid column -->
                            <div class="col-md-2 col-6">
                                <!-- Links -->
                                <h6 class="text-uppercase fw-bold mb-4">
                                    TENTANG
                                </h6>
                                <p>
                                    <a href="#!" class="text-reset">Profil</a>
                                </p>
                                <p>
                                    <a href="#!" class="text-reset">PSB</a>
                                </p>
                                <p>
                                    <a href="#!" class="text-reset">Struktur SD IT</a>
                                </p>
                                <p>
                                    <a href="#!" class="text-reset"></a>
                                </p>
                            </div>
                            <!-- Grid column -->

                            <!-- Grid column -->
                            <div class="col-md-3 col-12">
                                <!-- Links -->
                                <h6 class="text-uppercase fw-bold mb-4 text-center">
                                    IKUTI KAMI
                                </h6>
                                <p>
                                    <a href="https://www.youtube.com/@arrisalahmagelang5275" class="bi bi-youtube text-reset">AR RISALAH MAGELANG</a>
                                </p>
                                <p>
                                    <a title="whatsapp" href="https://api.whatsapp.com/send?phone=6285728234562&text=Halo%20Admin%20Saya%20Ingin%20OMenanyakan%20Tentang%20Informasi%20Berkaitan%20Tentang%20ArRisalah" class="bi bi-whatsapp text-reset"> Whatsapp</a>

                                </p>
                                <p>
                                    <a href="https://web.facebook.com/TakimsoTjm/?_rdc=1&_rdr" class="bi bi-facebook text-reset"> SDIT Ar-Risalah Secang</a>
                                </p>
                                <p>
                                    <a href="https://www.instagram.com/ar_risalah_secang/" class="bi bi-instagram text-reset"> ar_risalah_secang</a>
                                </p>
                            </div>
                            <!-- Grid column -->

                            <!-- Grid column -->
                            <div class="col-md-4 col-12 text-center">
                                <!-- Links -->
                                <h6 class="text-uppercase fw-bold mb-4 text-center">
                                    LOKASI
                                </h6>
                                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d699.4390902532721!2d110.25141586266032!3d-7.395849037221544!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e7a86ac54dd0333%3A0xd4a6e7b30e80b783!2sSDIT%20Ar%20Risalah!5e0!3m2!1sen!2sid!4v1677913541789!5m2!1sen!2sid" width="250" height="250" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                            </div>
                            <!-- Grid column -->
                        </div>
                        <!-- Grid row -->
                    </div>
                </section>
                <!-- Section: Links  -->

                <!-- Copyright -->
                <div class="text-center p-4" style="background-color: rgba(0, 0, 0, 0.05);">
                    Copyright &copy; 2023 SD IT AR-RISALAH   
                </div>
                <!-- Copyright -->
            </footer>

            <script src="asset/js/bootstrap.min.js"></script>
            <script src="assets/js/main.js"></script>
            <script src="assets/js/jquery.min.js"></script>
            <script src="assets/js/owl.carousel.min.js"></script>
            <script type="text/javascript">
                window.onload = function() { jam(); }

                function jam() {
                 var e = document.getElementById('jam'),
                 d = new Date(), h, m, s;
                 h = d.getHours();
                 m = set(d.getMinutes());
                 s = set(d.getSeconds());

                 e.innerHTML = h +':'+ m +':'+ s;

                 setTimeout('jam()', 1000);
             }

             function set(e) {
                 e = e < 10 ? '0'+ e : e;
                 return e;
             }
         </script>
     </main>
 </body>
 </html>

