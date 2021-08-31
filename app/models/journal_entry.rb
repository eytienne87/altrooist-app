class JournalEntry < ApplicationRecord
  EMOJIS = [
    ['<p><i class="far fa-surprise"></i></p>'.html_safe, 'far fa-surprise'],
    ['<p><i class="far fa-flushed"></i></p>'.html_safe, 'far fa-flushed'],
    ['<p><i class="far fa-grin-stars"></i></p>'.html_safe, 'far fa-grin-stars'],
    ['<p><i class="far fa-smile-beam"></i></p>'.html_safe, 'far fa-smile-beam'],
    ['<p><i class="far fa-sad-tear"></i></p>'.html_safe, 'far fa-sad-tear'],
    ['<p><i class="far fa-grin-squint-tears"></i></p>'.html_safe, 'far fa-grin-squint-tears'],
    ['<p><i class="far fa-frown-open"></i></p>'.html_safe, 'far fa-frown-open'],
    ['<p><i class="far fa-angry"></i></p>'.html_safe, 'far fa-angry'],
    ['<p><i class="fab fa-angellist"></i></p>'.html_safe, 'fab fa-angellist'],
    ['<p><i class="fas fa-fist-raised"></i></p>'.html_safe, 'fas fa-fist-raised'],
    ['<p><i class="fas fa-praying-hands"></i></p>'.html_safe, 'fas fa-praying-hands'],
    ['<p><i class="fas fa-hands-helping"></i></p>'.html_safe, 'fas fa-hands-helping']
]

  belongs_to :user
  belongs_to :organization

  validates :emoji, inclusion: { in: EMOJIS.map(&:last) }

  def icon
    "<i class='#{self.emoji}'></i>".html_safe
  end
end
