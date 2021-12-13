# versioning

- models are versioned as full files.
- one version of the base model and then one each for the state.

# handling exceptions

Insurance products have exceptions based on context. Context can be driven by jursidiction or writing company etc.
Most exceptions are handled with rules, but some are best handled declaratively.
We manage state exceptions as a separate set of rules applied to the core model.

# delivery

Product models are delivered as separate packages for each state and version.

# transformation

- mindmaps are transformed into json for delivery
- there is a task for generating the json from the product map
- run cmd shift b to execute the task from within the file
