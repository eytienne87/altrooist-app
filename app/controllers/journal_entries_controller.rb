class JournalEntriesController < ApplicationController

  def index
    # TODO: Change the below line to pull only journal entries of a given organizations.
    @organization = Organization.find(params[:organization_id])
    @journal_entries = current_user.journal_entries.where(organization: @organization).order(created_at: :desc)
  end

  def new
    @journal_entry = JournalEntry.new
    @organization = Organization.find(params[:organization_id])
    if current_user.journal_entries.where(organization: @organization).empty?
      current_user.journal_entries.create!(
        organization: @organization,
        emoji: 'far fa-grin-stars',
        content: "This is the very beginning of your journal entries with #{@organization.name}"
      )
      redirect_to organization_journal_entries_path(@organization)
    end
  end

  def create
    @organization = Organization.find(params[:organization_id])
    @journal_entry = JournalEntry.new(journal_entry_params)

    @journal_entry.organization = @organization
    @journal_entry.user = current_user

    if @journal_entry.save
      redirect_to organization_journal_entries_path
    else
      render :new
    end
  end

  private

  def journal_entry_params
    params.require(:journal_entry).permit(:emoji, :content)
  end
end
