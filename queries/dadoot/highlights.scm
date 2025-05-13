;; Projects
(project
  (line_content) @function)

;; Top-level tasks
(task
  (task_priority) @constant
  ; (description) @string
  )

;; Subtasks
(subtask
  (tab_indent) @punctuation.special
  ; (subtask_description) @string
  )

;; Properties (shared between task/subtask)
(property
  (property_name) @attribute
  (property_value) @number
  )

;; Optional: blank lines
(blank_line) @comment

