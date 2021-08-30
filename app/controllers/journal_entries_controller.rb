class JournalEntriesController < ApplicationController
  def new
    @journal_entry = JournalEntry.new
    @organization = Organization.find(params[:organization_id])
  end

  def create
    @journal_entry = JournalEntry.new(journal_entry_params)
    @organization = Organization.find(params[:organization_id])
    @journal_entry.organization = @organization
    @journal_entry.user = current_user
    if @journal_entry.save
      # redirect_to new_volunteering_page
      redirect_to my_organizations_path
    else
      render :new
    end
  end

  private

  def journal_entry_params
    params.require(:journal_entry).permit(:emoji)
  end
end
