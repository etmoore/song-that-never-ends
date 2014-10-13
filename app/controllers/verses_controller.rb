class VersesController < ApplicationController

  def initialize
    @verses = ["This is the song that never ends...",
              "Yes it goes on and on my friends...",
              "Some people started singing it, not knowing what it was...",
              "And they'll just keep on singing it forever just because"]
    @verse_index = 0
    @current_verse = @verses[@verse_index]
  end

  def show
    render: verse
  end

  private

  def set_next_verse
    @next_verse
  end

end
