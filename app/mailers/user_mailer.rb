class UserMailer < ApplicationMailer
  include ActionView::Helpers::TextHelper
  add_template_helper(PostsHelper)

  default from: Settings.notification_from_email

  # Notification digest email
  def digest_email
    @categories = Category.includes(:posts).active.all
    num_recent_items = Post.recent_items.count

    return unless EmailLog.digest_can_send?

    subject = "[GraceList] #{Time.current.strftime('%A, %m/%d')} - #{pluralize(num_recent_items, 'new post')}"
    mail(to: Settings.digest_recipient_alias_email, subject: subject)

    EmailLog.create(category: 'digest', sent_at: Time.current)
  end
end
