
import python
import advanced_security.codeql_github_python.RequestsSources

module Customize {
  private import semmle.python.Concepts
  private import semmle.python.ApiGraphs
  private import semmle.python.dataflow.new.DataFlow
  private import semmle.python.dataflow.new.RemoteFlowSources

  abstract class LocalSources extends DataFlow::Node { }

  class SysArgv extends LocalSources {
    SysArgv() { this = API::moduleImport("sys").getMember("argv").getAUse() }
  }
}
