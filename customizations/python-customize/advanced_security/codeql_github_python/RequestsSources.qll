
import python


module RequestsSources {
    private import semmle.python.Concepts
    private import semmle.python.ApiGraphs
    private import semmle.python.dataflow.new.DataFlow
    private import semmle.python.dataflow.new.RemoteFlowSources

    class Sources extends RemoteFlowSource::Range {
        Sources() {
            

        }
    }
}