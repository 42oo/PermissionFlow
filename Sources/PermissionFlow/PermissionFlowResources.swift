import Foundation

/// Public access to PermissionFlow's packaged resources.
///
/// Use this when host apps need localized strings or other resources
/// shipped with PermissionFlow.
public enum PermissionFlowResources {
    public static let bundle: Bundle = {
        if Bundle.main.bundleURL.pathExtension.lowercased() == "app",
           let resourceURL = Bundle.main.resourceURL,
           let bundledResources = Bundle(
               url: resourceURL.appendingPathComponent(
                   "PermissionFlow_PermissionFlow.bundle",
                   isDirectory: true
               )
           ) {
            // 手工组装的 App 必须只读 Contents/Resources，不能偷读开发机的 .build。
            return bundledResources
        }

        return Bundle.module
    }()
}
