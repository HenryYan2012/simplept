#require 'pivotal-tracker'

namespace :synchro do
  desc "Init project"
  task "init_project", [:id] => :environment do |t, args|
    PivotalTracker::Client.token = '45755c20b5955a90c74972aa43f0ba9c'
    project = PivotalTracker::Project.find(args.id)
    s_project = Project.find_or_create_by_id_and_name(project.id, project.name)
    #project.labels.split(",").each do |label|
    #  s_project.labels.find_or_create_by_name(label)
    #end
    #p project.name, project.labels, project.stories.all(label: 'v3.35.0').count
  end
end