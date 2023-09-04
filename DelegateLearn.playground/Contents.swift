
protocol InfoProtocol { 
  
  func getInfo()
  
}

class Information {
  
  var delegate: InfoProtocol? 
  
  func wheteIsStation() { 
    delegate?.getInfo()
  }
  
}


class People: InfoProtocol {
  func getInfo() {
    print("People get info")
  }
  
  
  var information: Information 
  
  init(_ information: Information) { 
    self.information = information 
    self.information.delegate = self
  }
  
}

let information = Information()
let kamil = People(information)

kamil.information.wheteIsStation()

information.wheteIsStation()
