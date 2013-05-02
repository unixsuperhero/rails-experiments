class Refactor::SelfEncapsulateField < Refactor
  pattern_name 'self_encapsulate_field'

  steps [
          Refactor::Step.new(refactor: self, name: 'Starting Point', description: 'Use sets/gets to prevent direct access to an attribute.'),
          Refactor::Step.new(refactor: self, name: 'Create Sets/Gets', description: 'Define sets/gets.'),
          Refactor::Step.new(refactor: self, name: 'Make attribute private', description: 'Prevent direct access to attribute.'),
        ]

  motivation <<-MOTIVATION
%p
  :escaped
    Enforcing indirect access to attributes on a class via sets/gets.

    Combine this pattern with other patterns including:
%ul
  %li Replace Type Code with State/Strategy
  %li Replace Conditional with Polymorphism
  MOTIVATION
end
