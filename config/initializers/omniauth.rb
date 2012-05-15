Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, 'ArM0qkPR7kyATzPNFLaWQ', 'rnMB5J8byF5Pf1kr6esuCYpzJLh7qkssQq1gHzM5lpM'
  provider :facebook, '189368391107072', '6c7561f89f08dffbb6e557ab0aee3cb8', {:scope => 'offline_access,email'}
end