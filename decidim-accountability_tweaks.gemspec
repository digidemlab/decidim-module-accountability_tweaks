require_relative "lib/decidim/accountability_tweaks/version"

Gem::Specification.new do |s|
  s.name        = "decidim-accountability_tweaks"
  s.version     = Decidim::AccountabilityTweaks::VERSION
  s.authors     = ["Digidem Lab"]
  s.email       = ["hello@digidemlab.org"]
  s.summary     = "Accountability view tweaks for Decidim"
  s.description = "Overrides cells, views and styles for the Decidim accountability module."
  s.homepage    = "https://github.com/digidemlab"
  s.license     = "AGPL-3.0"

  s.files = Dir[
    "{app,config,lib}/**/*",
    "LICENSE",
    "README.md"
  ]

  s.add_dependency "decidim-accountability", Decidim::AccountabilityTweaks::DECIDIM_VERSION
end
