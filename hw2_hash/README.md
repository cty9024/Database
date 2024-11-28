# Homework 2: Extendible Hashin

**Course:** Introduction to Database Systems
**Instructor:** Prof. Wen-Chih Peng

---

## Project Description
### 1. Introduction
The extendible hash table was developed to demonstrate understanding of database indexing concepts and practical implementation. The goal of this project is to implement a hash table with extendible capabilities, supporting insertion, querying, and deletion operations while maintaining both global and local depths.
### 2. Tasks
The implementation focuses on the following components:
1. hash.h:
* The header file defining the structure of the hash table class.
2. hash.cpp:
* Implements the hash table class, including methods for constructing, querying, removing keys, and clearing memory.
##### Implemented Methods
* hash_table()
Constructor to initialize the hash table with fixed table size and bucket size, and to insert key-value pairs while maintaining global and local depths.
* key_query(std::vector<int> query_keys, const std::string& file_name)
Outputs a file containing queried values and the local depths of the buckets.
* remove_query(std::vector<int> remove_keys)
Removes specified keys and adjusts the hash table structure accordingly.
* clear()
Frees memory used by the hash table.
### Requirements
The extendible hash table is designed to:
1. Support insertion, querying, and deletion of key-value pairs.
2. Maintain global depth and local depth dynamically.
3. Handle varying test data, including different row counts and key distributions.