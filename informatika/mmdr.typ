#import "@preview/mmdr:0.2.0": mermaid

#mermaid("graph TD; A-->B;")

#import "@preview/oxdraw:0.1.0": *

#oxdraw("
graph TD
    A[Start] --> B[End]
")

#mermaid(
  "sequenceDiagram
    participant Client
    participant Server
    participant Database
    Client->>Server: Request
    Server->>Database: Query
    Database-->>Server: Results
    Server-->>Client: Response
    Client->>Server: Update
    Server->>Database: Write
    Database-->>Server: Confirm
    Server-->>Client: Success",
)

