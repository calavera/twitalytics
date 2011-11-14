class DeleteOldStatuses < TrinidadScheduler.Cron "0 */24 * * *"
  def run
    ids = Status.all(:conditions => ["created_at < ?", 24.hours.ago])

    if ids.size > 0
      Status.destroy(ids)
      puts "#{ids.size} statuses have been deleted!"
    else
      puts "No statuses have been deleted."
    end
  end
end