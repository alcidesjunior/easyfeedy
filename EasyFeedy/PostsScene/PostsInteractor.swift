import UIKit

protocol PostsBusinessLogic {
    func doSomething(request: Posts.Something.Request)
}

protocol PostsDataStore {
    //var name: String { get set }
}

class PostsInteractor: PostsBusinessLogic, PostsDataStore {
    var presenter: PostsPresentationLogic?
    var worker: PostsWorker?
    //var name: String = ""

    // MARK: Do something

    func doSomething(request: Posts.Something.Request) {
        worker = PostsWorker()
        worker?.doSomeWork()

        let response = Posts.Something.Response()
        presenter?.presentSomething(response: response)
    }
}
