import java


// FlowSteps
module CustomFlowSteps {
    private import semmle.code.java.dataflow.FlowSteps

    class PreserveGetName extends TaintPreservingCallable {
    // new File(TAINT).getName()
    PreserveGetName() { this.getName() = "getName" }

    override predicate returnsTaintFrom(int arg) { arg = -1 }
    }
}
