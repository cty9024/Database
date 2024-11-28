# Homework 2: Extendible Hashing

**Course:** Introduction to Database Systems  
**Instructor:** Prof. Wen-Chih Peng

---

## Introduction
This project demonstrates the implementation of an extendible hash table, showcasing concepts of database indexing. The goal is to implement a hash table that dynamically adjusts its structure to support efficient insertion, querying, and deletion operations, while maintaining accurate global and *local depths*.
## Tasks
The implementation focuses on the following components:
1. `hash.h`:
   * The header file defining the structure of the hash table class.
2. `hash.cpp`:
   * Implements the hash table class, including methods for constructing, querying, removing keys, and clearing memory.
### Implemented Methods
* `hash_table()`  
Constructor to initialize the hash table with fixed table size and bucket size, and to insert key-value pairs while maintaining global and local depths.
* `key_query(std::vector<int> query_keys, const std::string& file_name)`  
Outputs a file containing queried values and the local depths of the buckets.
* `remove_query(std::vector<int> remove_keys)`  
Removes specified keys and adjusts the hash table structure accordingly.
* `clear()`  
Frees memory used by the hash table.
## Requirements
The extendible hash table is designed to:
1. Support insertion, querying, and deletion of key-value pairs.
2. Maintain global depth and local depth dynamically.
3. Handle varying test data, including different row counts and key distributions.
