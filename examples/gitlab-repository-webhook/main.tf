module "gitlab_repository_webhook" {
  source = "../../modules/gitlab-repository-webhook"

  gitlab_token        = "dd77a64848dc3246c0e57cc0b46fa784ea066a56d"
  gitlab_organization = "mygitlabusername"

  // This assumes that you are the owner of these repositories and they are available at:
  // https://gitlab.com/mygitlabusername/awesome-repo and https://gitlab.com/mygitlabusername/another-awesome-repo
  gitlab_repo_names = ["awesome-repo", "another-awesome-repo"]

  webhook_url    = "http://atlantis.acmecompany.com/events"
  webhook_secret = "1234567890SECRET"
}
