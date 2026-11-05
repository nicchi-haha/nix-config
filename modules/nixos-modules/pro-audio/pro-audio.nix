{
  flake.nixosModules.pro-audio = {
    security.pam.loginLimits = [
      { domain = "@audio"; item = "memlock"; type = "-"; value = "unlimited"; }
      { domain = "@audio"; item = "rtprio"; type = "-"; value = "99"; }
      { domain = "@audio"; item = "nice"; type = "-"; value = "-19"; }
    ];

    boot.kernelParams = [
      "threadirqs"
    ];
  };
}
