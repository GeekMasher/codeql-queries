/**
 * @name Disabling CSRF
 * @description Disabling CSRF
 * @kind problem
 * @problem.severity error
 * @security-severity 5.0
 * @sub-severity medium
 * @precision low
 * @id py/csrf
 * @tags security
 *       external/cwe/cwe-352
 */

import python
import semmle.python.dataflow.new.DataFlow
import semmle.python.dataflow.new.RemoteFlowSources
import semmle.python.dataflow.new.TaintTracking
import semmle.python.Concepts
import semmle.python.ApiGraphs

DataFlow::CallCfgNode djangoCSRF() {
  result = API::moduleImport("django.views.decorators.csrf").getMember("csrf_exempt").getACall()
}

// DataFlow::CallCfgNode flaskCSRF() {
//   result = API::moduleImport("flask_wtf.csrf").getMember("CSRFProtect").getACall()
// }
// from django.views.decorators.csrf import csrf_exempt
from DataFlow::CallCfgNode calls
where calls = djangoCSRF()
select calls, "Bypass CSRF protection"
