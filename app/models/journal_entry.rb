class JournalEntry < ApplicationRecord
  EMOJIS = [
    ['<i class="far fa-3x fa-surprise"></i>'.html_safe, 'far fa-3x fa-surprise'],
    ['<i class="far fa-3x fa-flushed"></i>'.html_safe, 'far fa-3x fa-flushed'],
    ['<i class="far fa-3x fa-grin-stars"></i>'.html_safe, 'far fa-3x fa-grin-stars'],
    ['<i class="far fa-3x fa-smile-beam"></i>'.html_safe, 'far fa-3x fa-smile-beam'],
    ['<i class="far fa-3x fa-sad-tear"></i>'.html_safe, 'far fa-3x fa-sad-tear'],
    ['<i class="far fa-3x fa-grin-squint-tears"></i>'.html_safe, 'far fa-3x fa-grin-squint-tears'],
    ['<i class="far fa-3x fa-frown-open"></i>'.html_safe, 'far fa-3x fa-frown-open'],
    ['<i class="far fa-3x fa-angry"></i>'.html_safe, 'far fa-3x fa-angry'],
    ['<i class="fab fa-3x fa-angellist"></i>'.html_safe, 'fab fa-3x fa-angellist'],
    ['<i class="fas fa-3x fa-fist-raised"></i>'.html_safe, 'fas fa-3x fa-fist-raised'],
    ['<i class="fas fa-3x fa-praying-hands"></i>'.html_safe, 'fas fa-3x fa-praying-hands'],
    ['<i class="fas fa-3x fa-hands-helping"></i>'.html_safe, 'fas fa-3x fa-hands-helping']
]

  belongs_to :user
  belongs_to :organization

  validates :emoji, inclusion: { in: EMOJIS.map(&:last) }

  def icon
    "<i class='#{self.emoji}'></i>".html_safe
  end
end
