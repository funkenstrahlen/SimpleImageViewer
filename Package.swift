// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "SimpleImageViewer",
    platforms: [
        .iOS(.v12),
        .watchOS(SupportedPlatform.WatchOSVersion.v5),
    ],
    products: [
        .library(name: "SimpleImageViewer", targets: ["SimpleImageViewer"])
    ],
    targets: [
        .target(
            name: "SimpleImageViewer",
            path: "ImageViewer",
            exclude:["ImageViewer.h", "Info.plist"],
            resources: [.process("ImageViewerController.xib"), .process("ImageViewer-Assets.xcassets")]
            
        )
    ]
)
