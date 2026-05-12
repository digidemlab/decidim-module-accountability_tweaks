module Decidim
  module AccountabilityTweaks
    class Engine < ::Rails::Engine
      isolate_namespace Decidim::AccountabilityTweaks

      initializer "decidim_accountability_tweaks.assets" do
        Decidim.register_assets_path File.expand_path("app/packs", root)
      end

      # Prepend so our templates take priority over decidim-accountability's own paths
      initializer "decidim_accountability_tweaks.view_paths" do
        Cell::ViewModel.view_paths.unshift(File.expand_path("app/cells", root))
        Cell::ViewModel.view_paths.unshift(File.expand_path("app/views", root))
      end
    end
  end
end
