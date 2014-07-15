module TasksHelper

  def button_class_for_task task
    if task.done?
      'btn-default'
    else
      'btn-primary'
    end
  end
end
