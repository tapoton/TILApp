import Vapor

/// Register your application's routes here.
public func routes(_ router: Router) throws {

    router.post(Acronym.self, at: "acronym", "create") { req, acronym -> Future<Acronym> in
        return acronym.save(on: req)
    }
}
