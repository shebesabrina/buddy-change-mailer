class BuddyMailer < ApplicationMailer
  default from: "from@example.com"

  def new_buddy(buddy)
    @buddy = buddy
    mail to: buddy.email, subject: "Welcome to my awesome website #{buddy.name}"
  end
end
