# Conventions

- Function parameters name start with an underscore character
- Private function name start with an underscore character

# Function modifiers

There are different types of modifier to modify function behavior. There can be combine and chain.

#### Visibility modifiers

- A **private** function is only accessible by other internal methods declared in the same contract scope
- An **internal** function is like a private one except it is accessible from legacy contracts
- A **public** functiuon is accessible for everyone
- An **external** method is like public one except it can only be called from the outside

#### State modifiers

> Functions set with these modifier don't cost any gas when there are call

- A **view** function don't save or write anything into the blockchain
- A **pure** function is like a view one except it can't read the blockchain

### Special modifiers

- A **payable** function require gas to be used. These are paid functions.

#### Custom modifiers

> As a developer, we can't create custom modifiers to create custom logic

_Example_: `onlyOwner` modifier could be create to restrict function call to contract owners.

# Good to know

- uint type is an alias to uint256
- A view function is a function which only read data without write anything
- An event will is used to communicate with an app
- A mapping is used to create a key/value link
- There are two ways to save variables
  - The first one is **storage**, storage data are saved into the blockchain
  - The second one is **memory**, memory data are temporary
