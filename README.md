# DepthNSDictionary

Extension to navigate a nested dictionary using separator to search nested keys in a recursive implementation

## Usage

```swift
let nested_dict: NSDictionary = ["a": 1, "b": ["c": 2, "d": 3], "e": 5]

let param_a = nested_dict.dfs(forKey: "a") as! Int
let param_d = nested_dict.dfs(forKey: "b__d") as! Int
let isNil = nested_dict.dfs(forKey: "dog__cat") // it's nil
```
