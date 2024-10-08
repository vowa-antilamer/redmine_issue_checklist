module RedmineIssueChecklist

  def self.settings()
    Setting[:plugin_redmine_issue_checklist].blank? ? {} : Setting[:plugin_redmine_issue_checklist]
  end

end

Rails.configuration.to_prepare do
  require_dependency 'redmine_issue_checklist/hooks/views_issues_hook'
  require_dependency 'redmine_issue_checklist/hooks/model_issue_hook'
  require_dependency 'redmine_issue_checklist/patches/issue_patch'
  require_dependency 'redmine_issue_checklist/patches/issues_controller_patch'
end
