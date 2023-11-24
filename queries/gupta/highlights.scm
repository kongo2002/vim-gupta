; data blocks
(data_block) @comment

; keywords
[
 "Call"
 "Select"
 "Set"
] @keyword

[
 "Loop"
 "While"
] @repeat

[
 "Return"
] @keyword.return

[
 "Else"
 "If"
 "On"
] @conditional

(break) @keyword

; comments
[
(comment)
(multiline_comment)
] @comment @spell

; strings
(string) @string
(string (string_content (escape_sequence) @string.escape))

; numbers
[
  (integer)
  (float)
] @number

; operators
[
  "NOT"
  "OR"
  "AND"
] @keyword.operator

[
  "<"
  "<="
  "="
  "!="
  ">="
  ">"
  "+"
  "-"
  "*"
  "/"
  "~"
  "&"
  "|"
] @operator

; delimiter
"||" @punctuation.delimiter

; constants
[
  (true)
  (false)
] @constant.builtin

; function calls
(call (function function: (refs) @function.call))

; assignments
(assignment left: (refs) @property)

; labels
"Default" @label
(select_case "Case" @label)

"Case" @keyword

; section declarations
(section_declaration type: (declaration_name) @type)
(section_declaration name: (section_value) @variable)

; section toggles
(section_toggle type: (declaration_name) @type)
(section_toggle value: (toggle_value) @constant.builtin)

; section headers
(section (declaration_name) @namespace)
(description_section "Description" @namespace)
(action_section "Actions" @namespace)

; description
(description_section text: (description_text) @comment @spell)

; other identifiers
(identifier) @variable

; punctuation
[
  "("
  ")"
  "["
  "]"
] @punctuation.bracket

; error
(ERROR) @error
