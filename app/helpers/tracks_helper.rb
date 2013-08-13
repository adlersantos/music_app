module TracksHelper
  def ugly_lyrics(lyrics)
    lines = lyrics.split("\n")

    lyrics = lines.map do |line|
      "&#9835; #{line}"
    end

    lyrics.join("\n").html_safe
  end
end
