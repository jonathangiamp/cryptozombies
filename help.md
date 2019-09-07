# Conventions

- Function parameters name start with an underscore character
- Private function name start with an underscore character

# Good to know

- uint type is an alias to uint256
- A view function is a function which only read data without write anything
- An event will is used to communicate with an app
- A mapping is used to create a key/value link
- There are two ways to save variables
  - The first one is **storage**, storage data are saved into the blockchain
  - The second one is **memory**, memory data are temporary
- There are four ways to set contract methods visibility
  - A **public** method is accessible for everyone
  - A **private** method is only accessible by other internal methods declared in the same contract scope
  - An **internal** method is like a private one except it is accessible from legacy contracts
  - An **external** method is like public one except it can only be called from the outside
