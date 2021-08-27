class CommentMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.comment_mailer.new_comment.subject
  #
  def new_comment
    # @comment = comment
    @item = @item

    mail  to: User.last.email,
          subject: "New comment for items1222xxxx"

  end
end
