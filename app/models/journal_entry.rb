class JournalEntry < ApplicationRecord
  EMOJIS = [
    ['<p><i class="fas fa-truck"></i></p>'.html_safe, 'fas fa-truck'],
    ['<p><i class="fas fa-smile-wink"></i></p>'.html_safe, 'fas fa-smile-wink'],
    ['<p><i class="fas fa-grin-squint-tears"></i></p>'.html_safe, 'fas fa-grin-squint-tears']
  ]

  belongs_to :user
  belongs_to :organization

  validates :emoji, inclusion: { in: EMOJIS.map(&:last) }

  def icon
    "<i class='#{self.emoji}'></i>".html_safe
  end
end
