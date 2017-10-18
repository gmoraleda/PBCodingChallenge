import ListUtils

let arguments = CommandLine.arguments

if arguments.count != 3 {
  print("USAGE: PayBackCodingChallenge [data] [target]")
  print("  data: Complete to file containing list of numbers ")
  print("  target: Target number")
} else {
  let data = arguments[1]
  if let n = Int(arguments[2]) {
    let lu = ListUtils(file: data, target: n)
    if let list = lu.loadList() {
        let result = lu.searchForCandidates(data: list.sorted())
        lu.printResult(result: result)
      } else {
        print("ERROR: Data not loaded. Check usage")
      }
  } else {
    print("ERROR: Wrong target. Check usage")
  }
}




