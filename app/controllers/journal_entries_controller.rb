class JournalEntriesController < ApplicationController

  def index
    # TODO: Change the below line to pull only journal entries of a given organizations.
    @organization = Organization.find(params[:organization_id])
    @journal_entries = current_user.journal_entries.where(organization: @organization)
  end

  def new
    @journal_entry = JournalEntry.new
    @organization = Organization.find(params[:organization_id])
  end

  def create
    @organization = Organization.find(params[:organization_id])

    if current_user.organizations.include?(@organization)
      @journal_entry = JournalEntry.new(journal_entry_params)
    else
      @journal_entry = JournalEntry.new(content: "I have just volunterring this organization", emoji: "fas fa-hands-helping")
    end

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
