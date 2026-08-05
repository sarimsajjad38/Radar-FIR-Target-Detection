function save_plot(filename)
%-------------------------------------------------------------
% save_plot(filename)
%
% Saves the current figure into the ../images folder.
%
% Example:
%   figure;
%   plot(x, y);
%   save_plot("radar_pulse");
%
% Output:
%   ../images/radar_pulse.png
%-------------------------------------------------------------

    % Create images folder if it doesn't exist
    if ~exist("../images", "dir")
        mkdir("../images");
    end

    % Complete output file path
    filepath = fullfile("..", "images", [filename ".png"]);

    % Save current figure as PNG
    print(gcf, filepath, "-dpng");

    fprintf("Image saved: %s\n", filepath);

end
