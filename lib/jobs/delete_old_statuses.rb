# START:class_def
class DeleteOldStatuses #< TrinidadScheduler.Cron "0/10 * * * * ?"
# END:class_def
  # START:run
  def run
    ActiveRecord::Base.connection_pool.with_connection do
      ids = Status.all(:conditions => ["created_at < ?", 30.days.ago])

      if ids.size > 0
        Status.destroy(ids)
        puts "#{ids.size} statuses have been deleted!"
      else
        puts "No statuses have been deleted."
      end
    end
  end
  # END:run
end
