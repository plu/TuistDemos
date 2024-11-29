@preconcurrency import AWSS3
import AWSClientRuntime
import AWSSDKIdentity
import AWSSecretsManager
import OpenAPIRuntime
import OpenAPIVapor
import Vapor

@main
struct Example {
    static func main() async throws {
        let configuration = try await S3Client.S3ClientConfiguration()
        let client = S3Client(config: configuration)
        debugPrint("App works")
    }
}
