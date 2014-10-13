class VersesController < ApplicationController

  $verses = ["This is the song that never ends...",
            "Yes it goes on and on my friends...",
            "Some people started singing it, not knowing what it was...",
            "And they'll just keep on singing it forever just because"]
  $verse_index = 0
  $next_verse = $verses[$verse_index]

  def show
    render :verse
    increment_index
    get_next_verse
  end

  private

  def increment_index
    if $verse_index < 3
      $verse_index += 1
    else
      $verse_index = 0
    end
  end

  def get_next_verse
    $next_verse = $verses[$verse_index]
  end

end
