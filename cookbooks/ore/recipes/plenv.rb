deploy_user = node["git_repository_to_deploy"]["deploy_user"]

git "/home/#{deploy_user}/.plenv/" do
  repository node["plenv"]["repo"]
  reference  node["plenv"]["branch"]
  action :sync
  user deploy_user
  group deploy_user
end
