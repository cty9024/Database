# Homework 2: Extendible Hashing

**Course:** Introduction to Database Systems  
**Instructor:** Prof. Wen-Chih Peng

---

## Introduction
This project demonstrates the implementation of an **extendible hash table**, showcasing concepts of database indexing. The goal is to implement a hash table that dynamically adjusts its structure to support efficient **insertion**, **querying**, and **deletion** operations, while maintaining accurate **global** and **local depths**.
## Tasks
The implementation focuses on the following components:
1. `hash.h`:
The header file defining the structure of the hash table class.
2. `hash.cpp`:
Implements the extendible hash table, supporting:
* Construction of the hash table from given key-value pairs.
* Querying for values and their associated local depths.
* Removal of keys and dynamic adjustments to the hash table structure.
* Memory cleanup to release resources when the hash table is no longer needed.
### Implemented Methods
* `hash_table()`  
Constructor to initialize the hash table with a fixed table size and bucket size. It inserts key-value pairs one by one, ensuring that global and local depths are correctly maintained.
* `key_query(std::vector<int> query_keys, const std::string& file_name)`  
Takes a list of query keys and outputs a file containing:
  - The corresponding value for each key (or -1 if not found).
  - The local depth of the bucket containing the queried key.
* `remove_query(std::vector<int> remove_keys)`  
Removes specified keys from the hash table. The structure of the table is updated dynamically to reflect changes while maintaining global and local depths.
* `clear()`  
Frees all allocated memory and resets the hash table state.
## Requirements
The extendible hash table is designed to:
1. Support insertion, querying, and deletion of key-value pairs.
2. Maintain global depth and local depth dynamically.
3. Handle varying test data, including different row counts and key distributions.
