class Refactor::SelfEncapsulateField < Refactor
  pattern_name 'self_encapsulate_field'
  steps [
          Refactor::Step.new(refactor: self, name: 'Starting Point', description: 'Use sets/gets to prevent direct access to an attribute.'),
          Refactor::Step.new(refactor: self, name: 'Create Sets/Gets', description: 'Define sets/gets.'),
          Refactor::Step.new(refactor: self, name: 'Make attribute private', description: 'Prevent direct access to attribute.'),
        ]
end
