import XCTest
@testable import DepthNSDictionary

class DepthNSDictionaryTests: XCTestCase {
    let nested_dict: NSDictionary = ["a": 1, "b": ["c": 2, "d": 3], "e": 5]
    
    func testNestedDictionary(){
        XCTAssertEqual(1, self.nested_dict.dfs(forKey: "a") as! Int)
        XCTAssertEqual(3, self.nested_dict.dfs(forKey: "b__d") as! Int)
        let isNil = self.nested_dict.dfs(forKey: "dog__cat") == nil
        XCTAssertTrue(isNil)
    }
}
