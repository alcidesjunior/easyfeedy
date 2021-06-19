import UIKit

protocol PostsPresentationLogic {
  func presentSomething(response: Posts.Something.Response)
}

class PostsPresenter: PostsPresentationLogic {
  weak var viewController: PostsDisplayLogic?
  
  // MARK: Do something
  
  func presentSomething(response: Posts.Something.Response) {
    let viewModel = Posts.Something.ViewModel()
    viewController?.displaySomething(viewModel: viewModel)
  }
}
