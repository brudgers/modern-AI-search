(defun make-agent (state
                   state-update-rules
                   condition-action-rules
                   get-precept)
  (lambda (precept)
    (if (eq precept 'get-precept)
        (lambda (state)
          (get-precept state))
        (progn
          (loop for rule in state-update-rules
             do (setf state (rule precept state)))
          (loop for action in condintion-action rules
             do (let ((act (action precept)))
                  (if act)
                  act))))))

(defpackage :agents-search
  (:use :cl))
(in-package agents-search)

(defun stub-a-to-a (a)
    "A place holder for wished-for functions where the return type is the same as the input type."
    a)

(defun stub-a-to-nil (a)
  "A place holder for wished-for functions where the return type may be different from the input."
  nil)

(defstruct problem
  (initial-state nil)
  (operators nil)
  (goal-test nil)
  (path-cost-function nil))

(defstruct node
  "Node stores information about its provenance in addition to the state of the search space. It is also important to realize that the node reflects the search space, not the world."
  (search-space-state nil)
  (parent nil)
  (operator-applied nil)
  (path-length nil)
  (path-cost nil))

(defun expand (node)
  (make-node
   :search-space-state (stub-a-to-a (node-search-space-state node))
   :parent (stub-a-to-a (node-parent node))
   :operator-applied (stub-a-to-a (node-operator-applied node))
   :path-length (stub-a-to-a (node-path-length node))
   :path-cost (stub-a-to-a (node-path-cost node)))))
