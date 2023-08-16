<section id="modals">
    <!-- Login Modal -->
    <div class="modal login fade" id="loginModal" tabindex="-1" role="dialog" aria-labelledby="loginModal" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h2 class="form-signin-heading modal-title" id="myModalLabel">Login</h2>
                </div>
                <form method="post" id="login">
                    <div class="modal-body">
                        <fieldset>
                            <div class="row">
                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                    <input class="form-control" id="username" name="username" type="text" placeholder="Username" value="" required>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                    <input class="form-control" type="email" id="email" name="email" placeholder="Email" value="" required>
                                </div>
                            </div>
                        </fieldset>
                    </div>
                    <div class="modal-footer">
                        <a href="password-recovery.html" class="pull-left">(Lost Password?)</a>
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                        <button type="button" class="btn btn-color">Login</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <!-- /Logan Modal -->
    <!-- Registration Modal -->
    <div class="modal register fade" id="registrationModal" tabindex="-1" role="dialog" aria-labelledby="registrationModal" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                <h2 class="form-signin-heading modal-title" id="registrationModalLabel">Create a new account</h2>
            </div>
            <form method="post" id="registration">
                    <div class="modal-body">
                        <div class="row">
                            <div class="form-group">
                                <div class="col-md-6">
                                    <input type="text" value="" class="form-control" placeholder="First Name">
                                </div>
                                <div class="col-md-6">
                                    <input type="text" value="" class="form-control" placeholder="Last Name">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group">
                                <div class="col-md-12">
                                    <input type="text" value="" class="form-control" placeholder="E-mail Address">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group">
                                <div class="col-md-6">
                                    <input type="password" value="" class="form-control" placeholder="Password">
                                </div>
                                <div class="col-md-6">
                                    <input type="password" value="" class="form-control" placeholder="Re-enter Password">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                        <button type="button" class="btn btn-color">Register</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <!-- /Registration Modal -->
</section>