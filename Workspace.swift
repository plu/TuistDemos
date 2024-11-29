import ProjectDescription

let workspace = Workspace(
    name: "TuistDemos",
    projects: [
        .relativeToRoot("Tuist/Projects/**")
    ]
)
