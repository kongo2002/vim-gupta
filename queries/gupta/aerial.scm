(section
  (section_declaration
    type: (declaration_name) @identifier (#any-of? @identifier "Functional Class" "MDI Window" "Data Field Class" "Combo Box Class" "General Window Class" "List Box Class" "Form Window")
    name: (section_value) @name)
  (#set! "kind" "Class")
) @symbol

(section_declaration
  type: (declaration_name) @identifier (#eq? @identifier "Function")
  name: (section_value) @name
  (#set! "kind" "Method")
) @symbol
