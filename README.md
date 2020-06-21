# Clean Swift Lite Builder Listener
A handy Clean Swift template. 
## This a modified version with handy options:

- Option to create storyboard/xib when creating a new scense
- Add class builder to separate configuration from view controller.  
It will be helpful in some cases:
  - You might not want to public view controller if you are working with multiple modules in a project
  - You might have many use cases with different builder inputs
  - You might have multiple view controllers in different modes with the same interactor, presenter and router
  - Dependency injection
- Add class listener to make code be more clean
- Add default init method for interactor, presenter and router 
It will be helpful in some cases:
  - Initialize default values
  - Dependency injection
- Lite version without class model and worker  
Sometimes, they're a bit overkill for simple scenses  

### There are a lot of files, but our codebase might be more maintainable, right?
### Feel free to make a pull request 😎
### Happy coding :-)
