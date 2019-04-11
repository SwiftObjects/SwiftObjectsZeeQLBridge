import protocol SwiftObjects.KeyValueCodingType
import class    ZeeQL.ActiveRecord

// bridge ZeeQL KVC to So KVC
extension ActiveRecord : SwiftObjects.KeyValueCodingType {
  #if false // provided by ActiveRecord:
  public func value(forKey k: String) -> Any? {
    return nil
  }
  #endif
  
  public func handleQueryWithUnboundKey(_ key: String) -> Any? {
    return nil
  }
  public func values(forKeys keys: [String]) -> [String : Any] {
    var values = [ String : Any ]()
    values.reserveCapacity(keys.count)
    for key in keys {
      guard let value = self.value(forKey: key) else { continue }
      values[key] = value
    }
    return values
  }
}
