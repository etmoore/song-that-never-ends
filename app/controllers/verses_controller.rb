class VersesController < ApplicationController
# FIXTHIS - should not be using globals
  VERSES = ["This is the song that never ends...",
            "Yes it goes on and on my friends...",
            "Some people started singing it, not knowing what it was...",
            "And they'll just keep on singing it forever just because..."]

  def show
    session[:next_verse] ||= -1
    increment_index
    get_next_verse
    render :show
  end

  private

  def increment_index
    if session[:next_verse] < 3
      session[:next_verse] += 1
    else
      session[:next_verse] = 0
    end
  end

  def get_next_verse
    @next_verse = VERSES[session[:next_verse]]
  end

end
