import ProjectDescription

let config = Config(
    plugins: [
        .git(url: "https://github.com/Woin2ee-Modules/tuist-micro-feature-plugin.git", tag: "0.2.4"),
        .git(url: "https://github.com/Woin2ee-Modules/tuist-external-dependency-plugin.git", tag: "1.0.1"),
    ]
)
