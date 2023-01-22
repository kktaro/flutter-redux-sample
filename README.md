# flutter_redux_sample

Flutter Redux sample.

## Overview

This is my Flutter Sample with Redux Architecture.

Using [Punk API](https://punkapi.com/documentation/v2).

## Diagram

### DataFlows

```mermaid
flowchart LR
    subgraph Domain
        UseCase
    end

    subgraph Repository
        UseCase--Parameter-->LocalRepository
        UseCase--Parameter-->RemoteRepository
        LocalRepository--Result-->UseCase
        RemoteRepository--Result-->UseCase
    end

    subgraph Store
        Dispatcher--Parameter-->Middleware
        Middleware--Parameter-->UseCase
        UseCase--APIResult-->Middleware
        Middleware--APIResult-->Dispatcher
        Dispatcher--APIResult-->Reducer
        Reducer--AppNextState-->StateHolder
        StateHolder--AppCurrentState-->Reducer
    end

    subgraph UI
        Page
    end

    Page --Actions--> Dispatcher
    Reducer --PageState--> Page
```

### Dependencies

```mermaid
flowchart TD
    subgraph Domain
        UseCase
        RepositoryInterface

        UseCase --> RepositoryInterface
    end

    subgraph Repository
        LocalRepositoryImpl
        RemoteRepositoryImpl

        LocalRepositoryImpl -.-> RepositoryInterface
        RemoteRepositoryImpl -.-> RepositoryInterface
    end

    subgraph Store
        Dispatcher
        Reducer
        Middleware
        AppState
        Action

        Dispatcher --> Reducer
        Dispatcher --> Middleware
        Dispatcher --> Action
        Middleware --> UseCase
        Reducer --> AppState
    end

    subgraph UI
        Page
        PageState
        ActionImpl

        Page --> PageState
        Page --> Dispatcher
        Page --> ActionImpl
        PageState --> AppState
        ActionImpl -.-> Action
    end

    UI ==> Store
    Store ==> Domain
    Repository ==> Domain
```
