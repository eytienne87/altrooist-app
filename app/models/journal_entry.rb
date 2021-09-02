class JournalEntry < ApplicationRecord
  EMOJIS = [
    ['<i class="far fa-surprise"></i>'.html_safe, 'far fa-surprise'],
    ['<i class="far fa-flushed"></i>'.html_safe, 'far fa-flushed'],
    ['<i class="far fa-grin-stars"></i>'.html_safe, 'far fa-grin-stars'],
    ['<i class="far fa-smile-beam"></i>'.html_safe, 'far fa-smile-beam'],
    ['<i class="far fa-sad-tear"></i>'.html_safe, 'far fa-sad-tear'],
    ['<i class="far fa-grin-squint-tears"></i>'.html_safe, 'far fa-grin-squint-tears'],
    ['<i class="far fa-frown-open"></i>'.html_safe, 'far fa-frown-open'],
    ['<i class="far fa-angry"></i>'.html_safe, 'far fa-angry'],
    ['<i class="fab fa-angellist"></i>'.html_safe, 'fab fa-angellist'],
    ['<i class="fas fa-fist-raised"></i>'.html_safe, 'fas fa-fist-raised'],
    ['<i class="fas fa-praying-hands"></i>'.html_safe, 'fas fa-praying-hands'],
    ['<i class="fas fa-hands-helping"></i>'.html_safe, 'fas fa-hands-helping']
]

  belongs_to :user
  belongs_to :organization

  validates :emoji, inclusion: { in: EMOJIS.map(&:last) }

  def icon
    "<i class='#{self.emoji}'></i>".html_safe
  end
end
