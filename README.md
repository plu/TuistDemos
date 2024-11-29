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

## Demo2

```console
$ tuist install
$ tuist generate Demo2App --no-open --no-binary-cache
$ tuist run --clean Demo2App
Build Succeeded
Running executable Demo2App
"App works"
```

All good... now let's try with cache:

```console
$ tuist cache
$ tuist generate Demo2App --no-open --binary-cache
$ tuist run --clean Demo2App
Build Succeeded
Running executable Demo2App
AWSClientRuntime/TuistBundle+AWSClientRuntime.swift:48: Fatal error: unable to find bundle named aws-sdk-swift_AWSClientRuntime
The '/Users/johannes.plunien/Library/Developer/Xcode/DerivedData/TuistDemos-fpuxcnysngtonxcoqtrkpwgkoijh/Build/Products/Debug/Demo2App' was interrupted with a signal 5 and message:
AWSClientRuntime/TuistBundle+AWSClientRuntime.swift:48: Fatal error: unable to find bundle named aws-sdk-swift_AWSClientRuntime

Consider creating an issue using the following link: https://github.com/tuist/tuist/issues/new/choose
```
