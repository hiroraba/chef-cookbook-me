deploy_user = node["git_repository_to_deploy"]["deploy_user"]

git "/home/#{deploy_user}/.oh-my-zsh/" do
  repository node["oh-my-zsh"]["repo"]
  reference  node["oh-my-zsh"]["branch"]
  action :sync
  user deploy_user
  group deploy_user
end
