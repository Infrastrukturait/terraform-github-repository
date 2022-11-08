locals {
  branch_protections = try([
    for b in var.branch_protections_v3 : merge({
      branch                          = null
      enforce_admins                  = null
      require_conversation_resolution = null
      require_signed_commits          = null
      required_status_checks          = {}
      required_pull_request_reviews   = {}
      restrictions                    = {}
    }, b)
  ], [])

  required_status_checks = [
    for b in local.branch_protections :
    length(keys(b.required_status_checks)) > 0 ? [
      merge({
        strict   = null
        contexts = []
    }, b.required_status_checks)] : []
  ]

  required_pull_request_reviews = [
    for b in local.branch_protections :
    length(keys(b.required_pull_request_reviews)) > 0 ? [
      merge({
        dismiss_stale_reviews           = true
        dismissal_users                 = []
        dismissal_teams                 = []
        require_code_owner_reviews      = null
        required_approving_review_count = null
    }, b.required_pull_request_reviews)] : []
  ]

  restrictions = [
    for b in local.branch_protections :
    length(keys(b.restrictions)) > 0 ? [
      merge({
        users = []
        teams = []
        apps  = []
    }, b.restrictions)] : []
  ]
}
