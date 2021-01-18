// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "RxFirebase",
    platforms: [.iOS(.v10), .macOS(.v10_12), .tvOS(.v10)],
    products: [
        .library(
            name: "RxFirebaseFirestore",
            targets: ["RxFirebaseFirestore"]),
        .library(
            name: "RxFirebaseRemoteConfig",
            targets: ["RxFirebaseRemoteConfig"]),
        .library(
            name: "RxFirebaseDatabase",
            targets: ["RxFirebaseDatabase"]),
        .library(
            name: "RxFirebaseStorage",
            targets: ["RxFirebaseStorage"]),
        .library(
            name: "RxFirebaseFunctions",
            targets: ["RxFirebaseFunctions"]),
        .library(
            name: "RxFirebaseAuthentication",
            targets: ["RxFirebaseAuthentication"]),
    ],
    dependencies: [
        .package(url: "https://github.com/ReactiveX/RxSwift", .upToNextMajor(from: "5.1.0")),
        .package(name: "Firebase", url: "https://github.com/firebase/firebase-ios-sdk",  .upToNextMajor(from: "7.0.0"))
    ],
    targets: [
        .target(
            name: "RxFirebaseFirestore",
            dependencies: [
                .product(name: "RxSwift", package: "RxSwift"),
                .product(name: "RxCocoa", package: "RxSwift"),
                .product(name: "FirebaseFirestore", package: "Firebase"),
            ],
            path: "Sources/Firestore"),
        .target(
            name: "RxFirebaseRemoteConfig",
            dependencies: [
                .product(name: "RxSwift", package: "RxSwift"),
                .product(name: "RxCocoa", package: "RxSwift"),
                .product(name: "FirebaseRemoteConfig", package: "Firebase"),
            ],
            path: "Sources/RemoteConfig"),
        .target(
            name: "RxFirebaseDatabase",
            dependencies: [
                .product(name: "RxSwift", package: "RxSwift"),
                .product(name: "RxCocoa", package: "RxSwift"),
                .product(name: "FirebaseDatabase", package: "Firebase"),
            ],
            path: "Sources/Database"),
        .target(
            name: "RxFirebaseStorage",
            dependencies: [
                .product(name: "RxSwift", package: "RxSwift"),
                .product(name: "RxCocoa", package: "RxSwift"),
                .product(name: "FirebaseStorage", package: "Firebase"),
            ],
            path: "Sources/Storage"),
        .target(
            name: "RxFirebaseFunctions",
            dependencies: [
                .product(name: "RxSwift", package: "RxSwift"),
                .product(name: "RxCocoa", package: "RxSwift"),
                .product(name: "FirebaseFunctions", package: "Firebase"),
            ],
            path: "Sources/Functions"),
        .target(
            name: "RxFirebaseAuthentication",
            dependencies: [
                .product(name: "RxSwift", package: "RxSwift"),
                .product(name: "RxCocoa", package: "RxSwift"),
                .product(name: "FirebaseAuth", package: "Firebase"),
            ],
            path: "Sources/Auth"),
    ]
)
