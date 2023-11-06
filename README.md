Certainly, here's the complete documentation for the MultiSelectView in a single document:

markdown
Copy code
# MultiSelectView Documentation

## Introduction

The `MultiSelectView` is a Swift component designed to facilitate the selection of multiple items within a view. This documentation provides a step-by-step guide on how to use and integrate the `MultiSelectView` into your project.

## Getting Started

To use the `MultiSelectView` in your project, follow these steps:

//Initialize a MultiSelectView instance:

let multiSelectView = MultiSelectView()
//Disable automatic constraint generation:

..multiSelectView.translatesAutoresizingMaskIntoConstraints = false
//Add the MultiSelectView as a subview to your desired view:
yourParentView.addSubview(multiSelectView)

//Define a dictionary to store view references for Auto Layout constraints:

let views: [String: UIView] = ["multiSelectView": multiSelectView]
//Add constraints to make the MultiSelectView span the entire width and height of the parent view:

yourParentView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[multiSelectView]|", options: [], metrics: nil, views: views))
yourParentView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[multiSelectView]|", options: [], metrics: nil, views: views))


Handling Selection Changes

You can handle changes in selected items within the MultiSelectView by defining a closure for the onSelectionChanged property. This closure is called when the selection changes, and you can customize the action to be taken:

multiSelectView.onSelectionChanged = { selectedItems in
    // Handle selected items here
    print(selectedItems)
}



Setting Initial Items

You can set the initial items for the MultiSelectView by providing an array of Item objects. Each Item should have a name and an initial selection state:

multiSelectView.items = [
    Item(name: "Item 1", isSelected: false),
    Item(name: "Item 2", isSelected: false),
    Item(name: "Item 3", isSelected: false),
    Item(name: "Item 4", isSelected: false),
]

Conclusion
The MultiSelectView is a versatile component that simplifies the implementation of multiple item selection in a Swift project. By following this documentation, you can quickly integrate and customize the MultiSelectView for your specific use case.
