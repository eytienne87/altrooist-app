class JournalEntriesController < ApplicationController
  def new
    @journal_entry = JournalEntry.new
    @organization = Organization.find(params[:organization_id])
  end

  def create
    @organization = Organization.find(params[:organization_id])

    if current_user.organizations.include?(@organization)
      @journal_entry = JournalEntry.new(journal_entry_params)
    else
      @journal_entry = JournalEntry.new(content: "I have just volunterring this organization", emoji: "&#128512;")
    end

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
    params.require(:journal_entry).permit(:emoji, :content)
  end
end
