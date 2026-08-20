# By default adjust pam limits, helps with realtime audio workflow.
# Make sure to add yourself to the "audio" group for this to work or adjust domain to allow all group.

{
  security.rtkit.enable = true;

  security.pam.loginLimits = [
    { domain = "@audio"; item = "memlock"; type = "-"; value = "unlimited"; }
    { domain = "@audio"; item = "rtprio"; type = "-"; value = "99"; }
    { domain = "@audio"; item = "nice"; type = "-"; value = "-19"; }
  ];
}
