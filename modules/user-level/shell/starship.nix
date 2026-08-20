# Use starship to modify prompt
{
   programs.starship = {
    enable = true;
    enableZshIntegration = true;
    settings = {
      add_newline = false;
      format = "$character";
      right_format = "$all";

      username = {
        show_always = false;
        format = "[$user]($style) in ";
      };

      directory = {
        style = "#f7abdd";
      };

      character = {
        success_symbol = "[>](bold green)";
        error_symbol = "[>](red)";
      };
    };
  };
}
