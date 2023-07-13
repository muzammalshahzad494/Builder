//
//  Question Typo.swift
//  Builder
//
//  Created by Muzammal Shahzad on 5/29/23.
//

import Foundation


// MARK:  Multiple calling
//Question: Implementing Multiple API Calls in Swift
//
//Describe the scenario:
//Imagine you are developing a weather application that requires data from multiple APIs to provide comprehensive weather information. Design a solution that efficiently handles multiple API calls and integrates the data to display the weather details.
//
//Explain the requirements:
//
//You need to fetch weather data from two different APIs: one for current weather conditions and another for a 7-day forecast.
//Both APIs require different endpoints and parameters.
//The fetched data needs to be integrated and presented in a unified format.
//Discuss the approach:
//
//How would you handle asynchronous API calls in Swift to fetch data from both APIs simultaneously?
//How would you handle the different endpoints and parameters required by each API?
//How would you handle errors and ensure data consistency across both API responses?
//How would you merge the fetched data into a unified format that can be easily consumed by your weather application?
//Ask implementation-related questions:
//
//What libraries or frameworks would you consider using to make the API calls?
//How would you structure your code to handle multiple API calls and ensure code modularity and reusability?
//How would you handle scenarios where one API call depends on the result of another API call?
//What strategies would you employ to optimize the performance of the API calls and minimize network latency?
//Assess problem-solving and architectural skills:
//
//How would you design the data models and structures to represent the fetched data from both APIs?
//How would you ensure data integrity and handle potential conflicts or inconsistencies between the API responses?
//How would you handle edge cases, such as network errors, timeouts, or invalid API responses?
//By discussing these questions, you can assess the candidate's understanding of asynchronous API calls, error handling, data integration, and architectural considerations when working with multiple APIs in Swift.



// MARK:  Class vs Struct
//In Swift, both classes and structs are used to define custom data types, but they have some key differences in terms of behavior and usage. Here are the main differences between classes and structs:
//
//Inheritance: Classes support inheritance, which means a class can inherit properties and methods from another class. Structs, on the other hand, don't support inheritance. They cannot inherit properties or methods from another struct.
//
//Reference Types vs Value Types: Classes are reference types, meaning when you assign a class instance to a new variable or pass it as a parameter, you are working with a reference to the same instance in memory. On the other hand, structs are value types, meaning when you assign a struct instance to a new variable or pass it as a parameter, you are creating a copy of the instance with its own memory space.
//
//Mutability: In general, properties of a class instance can be modified even if the instance is declared as a constant (using let). Struct instances, however, are immutable by default when declared as constants (let). You need to explicitly mark struct properties as var to make them mutable.
//
//Identity and Equality: For classes, identity is based on reference equality. Two different instances can have the same values, but they are considered distinct objects if they reside in different memory locations. Structs, on the other hand, have value equality. Two struct instances are considered equal if all their properties have the same values.
//
//Memory Management: Classes in Swift use Automatic Reference Counting (ARC) to manage memory, which means the memory for class instances is automatically allocated and deallocated based on reference counting. Structs, being value types, are stored directly where they are defined and are automatically deallocated when they go out of scope.
//
//In general, use classes when you need reference semantics, inheritance, or more complex object-oriented features. Use structs when you need value semantics, lightweight data structures, or when copying behavior is desired.
//
//It's important to consider the specific requirements and characteristics of your application when deciding between classes and structs. Both have their own strengths and best use cases, and choosing the appropriate one can contribute to a cleaner and more efficient codebase.


// MARK:  Why we pass a class as refrence instead object of class
//Passing a class as a reference instead of an object of the class allows you to work with the same instance of the class across different parts of your code. Here are a few reasons why you might choose to pass a class as a reference:
//
//Shared State: When you pass a class as a reference, multiple parts of your code can access and modify the same instance of the class. This allows for shared state, where changes made to the class instance in one part of the code are reflected in other parts as well. This can be useful when you need to maintain a single source of truth or when you want to avoid duplicating data.
//
//Mutability: Passing a class as a reference allows you to modify the properties and behavior of the class instance throughout your code. Changes made to the class instance in one place will be visible in other places where the same reference is used. This can be helpful when you need to update or modify the state of the object dynamically.
//
//Efficiency: When you pass a class as a reference, you avoid making copies of the entire object. Instead, you're working with a reference to the original object, which can be more efficient in terms of memory usage and performance, especially when dealing with large objects or frequent updates.
//
//Interactions between Objects: If you have multiple objects that need to interact and share data, passing a class as a reference allows them to access and modify the same instance of the class. This promotes better communication and collaboration between different parts of your code.
//
//It's important to note that passing a class as a reference also means that changes made to the class instance can have side effects across different parts of your code. You need to be mindful of potential concurrency issues, race conditions, and unintended modifications when multiple parts of your code are working with the same class instance.
//
//In contrast, passing an object of the class creates a new instance, separate from any existing instances, and can be useful when you need independent copies of the class for isolation or immutability purposes.
//
//Ultimately, the choice between passing a class as a reference or an object of the class depends on the specific requirements and design of your application.


// MARK:  Advance question for using class instead of struct

//Explain when you would choose to use a class instead of a struct in Swift.
//What are the key differences between classes and structs in terms of memory management?
//How does inheritance work with classes compared to structs in Swift?
//Discuss scenarios where you would use class inheritance to create a hierarchy of related objects.
//Explain how reference semantics of classes can affect the behavior of your code compared to value semantics of structs.
//Discuss the concept of identity and mutability in relation to classes and structs.
//What are the performance considerations when using classes versus structs in terms of memory allocation and copying?
//Discuss the implications of class reference counting and the potential for retain cycles.
//Explain the role of reference types in managing shared state and facilitating object-oriented programming principles.
//Discuss the impact of passing a class instance as a reference across different parts of your code and potential implications for data consistency and integrity.
