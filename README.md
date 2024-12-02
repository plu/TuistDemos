# TuistDemos

## Demo1

```console
$ tuist install
$ tuist generate Demo1Framework --no-open
$ tuist build Demo1Framework
```

All good, it builds.

```console
$ tuist inspect implicit-imports
Loading and constructing the graph
It might take a while if the cache is empty
The following implicit dependencies were found:
 - Demo1Framework implicitly depends on: FirebaseCore
Consider creating an issue using the following link: https://github.com/tuist/tuist/issues/new/choose
```

Now let's add `FirebaseCore` as a dependency to fix the missing implicit import:

```console
$ sed -i '' -e 's@//@@' Tuist/Projects/Demo1/Project.swift
```

```diff
diff --git a/Tuist/Projects/Demo1/Project.swift b/Tuist/Projects/Demo1/Project.swift
index f4ec373..1c1018b 100644
--- a/Tuist/Projects/Demo1/Project.swift
+++ b/Tuist/Projects/Demo1/Project.swift
@@ -12,7 +12,7 @@ let project = Project(
                 .glob(.relativeToRoot("Demo1/Framework/Sources/**"))
             ],
             dependencies: [
-                //.external(name: "FirebaseCore"),
+                .external(name: "FirebaseCore"),
                 .external(name: "FirebaseCrashlytics")
             ]
         )
```

```console
$ tuist generate Demo1Framework --no-open
Loading and constructing the graph
It might take a while if the cache is empty
`FirebaseCore` is not a valid configured external dependency
Consider creating an issue using the following link: https://github.com/tuist/tuist/issues/new/choose
```
