#include <iostream>
#include <vector>
#include <fstream>
#include <algorithm>
#include <cmath>
#include "hash.h"
#include <bitset>
#include "utils.h"
#include <fstream>

using namespace std;

hash_entry::hash_entry(int key, int value){
    this->key = key;
    this->value = value;
    this->next = NULL;
}

hash_bucket::hash_bucket(int hash_key, int depth){
    this->hash_key = hash_key;
    this->local_depth = depth;
    this->num_entries = 0;
    this->first = NULL;
}

/* Free the memory alocated to this->first
*/
void hash_bucket::clear(){
    this->local_depth = 0;
    this->num_entries = 0;
    this->hash_key = 0;
    this->first = nullptr;
}
hash_table::hash_table(int table_size, int bucket_size, int num_rows, vector<int> key, vector<int> value){
    this->table_size = table_size;
    this->bucket_size = bucket_size;
    this->global_depth = 1;
    this->bucket_table.resize(table_size);
    this->local.resize(100);
    for (int i = 0; i < table_size; i++) {
        this->bucket_table[i] = new hash_bucket(i, this->global_depth);
        local[global_depth]++;
    }
    for (int i = 0; i < num_rows; i++) {
        insert(key[i], value[i]);
    }
}
/* When insert collide happened, it needs to do rehash and distribute the entries in the bucket.
** Furthermore, if the global depth equals to the local depth, you need to extend the table size.
*/
void hash_table::extend(hash_bucket *bucket, int full){
    //cout << "extend!: " << full << endl;
    //cout << "full: " << full << endl;
    //複製一份滿了的bucket
    hash_entry* temp_table = bucket_table[full]->first;
    int tmp_num = bucket_table[full]->num_entries;

    //印出滿的bucket
    /*cout << "\n---full---\n";
    hash_entry* tmp = temp_table;
    for (int i = 0; i < tmp_num; i++){
        cout << "{" << tmp->key << ", " << tmp->value <<"} ";
        tmp = tmp->next;
    }
    cout << "\n";*/

    //把directory變兩倍大
    hash_entry* FULLtmp = bucket_table[full]->first;
    //cout << "\nFULL end\n";
    int new_table_size = table_size * 2;
    bucket_table.resize(new_table_size, nullptr);
    /*for (int i = 0; i < table_size; i++) {
        this->bucket_table[i+table_size] 
            = new hash_bucket(i, this->bucket_table[i]->local_depth);
    }*/
    for (int i = 0; i < table_size; i++) {
        bucket_table[i+table_size] = bucket_table[i];
    }
    table_size *= 2;
    global_depth++;
    /*
    bucket_table[full]->local_depth++;
    //cout << "local depth: " << bucket_table[full]->local_depth << "\n";
    bucket_table[full+table_size]->local_depth++;
 

    table_size = new_table_size;
    //cout << "new table size = " << table_size << endl;
    hash_entry* Itmp = temp_table;
    //exit(0);
    for(int j = 0; j < tmp_num; j++){
        //cout << "[" << Itmp->key << ", " << Itmp->value << "] \n";
        insert(Itmp->key, Itmp->value);
        Itmp = Itmp->next;
    }*/
}

void hash_table::split(hash_bucket *bucket, int key) {
    //cout << "split!: " << key << endl;
    //cout << "full: " << full << endl;
    //cout << "key: " << key << endl;
    //複製一份滿了的bucket
    hash_entry* temp_table = bucket_table[key]->first;
    int tmp_num = bucket_table[key]->num_entries;

    //印出滿的bucket/*
/*    cout << "\n---full---\n";
    hash_entry* tmp = temp_table;
    for (int i = 0; i < tmp_num; i++){
        cout << "{" << tmp->key << ", " << tmp->value <<"}";
        tmp = tmp->next;
    }
    cout << "\n";*/

    //計算bucket的local depth
    //int full_depth = bucket_table[full]->local_depth + 1;
    //int ffull_depth = bucket_table[(full+table_size/2) % table_size]->local_depth + 1;
    //cout << "full depth: " << full_depth << ", ffull_depth: " << ffull_depth << "\n";
    //int c = 0;
    //cout << "\n######\n";
    //bucket_table[full]->local_depth++;
    //cout << "add local depth index: " << full << "\tnew local depth: " << bucket_table[full]->local_depth << "\n";

    /*for(int i = 0; i < table_size; i++){
        c = (full+(table_size/2)*i);
        if(c > table_size) break;
        //cout << "i: " << i << ", table size /2: " << table_size/2 << endl; 
        cout << "c: " << c << endl;
        if(c % (table_size/2) == full){
            bucket_table[c]->local_depth++;
            cout << "add local depth index: " << c << "\tnew local depth: " << bucket_table[c]->local_depth << "\n";
        }
        //cout << "i: " << i << ", table size /2: " << table_size/2 << endl; 
        //cout << "c: " << c << endl;
        //cout << "old local depth: " << bucket_table[c]->local_depth << "\n";

    }*/
    
    //把滿了的bucket指向NULL
    //cout << "\n--------" << endl;
    //cout<< "table_size: " << table_size << "\n";
    int countdepth = bucket_table[key]->local_depth;
    //cout << "countdepth: " << countdepth << endl;
    //cout << "1 << countdepth: " << (1 << countdepth) << endl;
    int flagif = -1;
    int flagelse = -1;
    for (int i = 0; i < table_size; i++){
        if((i % (1 << countdepth)) == key % (1 << countdepth)){
            if((i % (1 << (countdepth+1))) == key % (1 << (countdepth+1))){
                //cout << "if: "<< i << endl;
                //bucket_table[i] = new hash_bucket(i, countdepth+1);
                //cout << "i: " << i << ", countdepth: " << countdepth << endl;
                if(flagif == -1){
                    flagif = i;
                    bucket_table[i] = new hash_bucket(i, countdepth+1);
                    local[countdepth]--;
                    local[countdepth+1]++;
                }else{
                    //cout << "if from: " << i << " -> " << flagif << "\n";
                    bucket_table[i] = bucket_table[flagif];
                }
            }else{
                //cout << "else: "<< i << endl;
                //bucket_table[i] = new hash_bucket(i, countdepth+1);
                //cout << "i: " << i << ", countdepth: " << countdepth << endl;
                if(flagelse == -1){
                    flagelse = i;
                    bucket_table[i] = new hash_bucket(i, countdepth+1);
                    local[countdepth]--;
                    local[countdepth+1]++;
                }else{
                    //cout << "else from: " << i << " -> " << flagelse << "\n";
                    bucket_table[i] = bucket_table[flagelse];  
                }
            }
        }
    }




    /*
    bucket_table[full] = new hash_bucket(full, full_depth);
    bucket_table[(full+table_size/2) % table_size] 
        = new hash_bucket((full+table_size/2) % table_size, ffull_depth);
    //cout << "full depth: " << full_depth << ", ffull_depth: " << ffull_depth << "\n";*/

    //cout << "\n------\n";
    //cout << "combine bucket pointer\n";
    //cout << "full_depth: " << full_depth << "\n";

    //bucket_table[i] = bucket_table[i % table_size];
    
    

    //把複製的那一份bucket裡面的值都重新insert
    hash_entry* Itmp = temp_table;
    //cout << "split:!!!!!!!!!!!!!!!!!!\n";
    //cout << "\n";
    for(int j = 0; j < tmp_num; j++){
        //cout << "[" << Itmp->key << ", " << Itmp->value << "] \n";
        insert(Itmp->key, Itmp->value);
        Itmp = Itmp->next;
    }
}

/* When construct hash_table you can call insert() in the for loop for each key-value pair.
*/
void hash_table::insert(int key, int value) {
    //cout << "Begin key: " << key << ", value: " << value << endl;
    // Calculate the hash index for the key
    {
        int index = (key % table_size) & ((1 << global_depth) - 1);
        hash_bucket *bucket = bucket_table[index];
        bool found = false;
        hash_entry *current = bucket->first;
        //cout << "Value:\n";
        while (current != NULL) {
            //cout << current->value << "\n";
            if (current->key == key) {
                current->value = value;
                found = true;
                //output_file << current->value << endl;
                break;
            }
            current = current->next;
        }
        //exit(0);
        if (found) {
            return;
        }
    }
    const int hash_index = key % table_size;
    //int hash_index = h_index % (1 << bucket_table[h_index]->local_depth);
    //cout << "265 key: " << key;
    //cout << ", h_index: " << h_index << ", hash_index: " << hash_index;
    //cout << ", bucket_table[h_index]->local_depth: " << bucket_table[h_index]->local_depth << "\n";
    //cout << "hash_index: " << hash_index << ", key: " << key <<  ", table_size: " << table_size << "\n";

    // Find the bucket for the hash index
    hash_bucket* bucket = bucket_table[hash_index];
    //cout << "bucket->num_entries: " << bucket->num_entries << ", bucket_size: " << bucket_size << endl;
    // Check if the bucket is full
    while (bucket->num_entries == bucket_size) {
        // If the bucket is full, check if it needs to be extended
        //cout << "bucket->local_depth: " << bucket->local_depth << ", global_depth: " << global_depth << endl;
        if (bucket->local_depth == global_depth) {
            // If the bucket's local depth is equal to the global depth,
            // double the size of the hash table and reorganize the buckets
            //cout << "bucket->local_depth: " << bucket->local_depth << endl;
            extend(bucket, hash_index);
            split(bucket, hash_index);
            // Find the new bucket for the hash index
            bucket = bucket_table[hash_index];
        }
        else {
            //cout << "SPLIT.\n";
            // If the bucket's local depth is less than the global depth,
            // split the bucket into two and reorganize the buckets
            split(bucket, hash_index);
            // Find the new bucket for the hash index
            bucket = bucket_table[hash_index];
        }
    }

    // Create a new hash entry and add it to the bucket
    //cout << "key: " << key << ", value: " << value << "\n";
    //cout << "297 key: " << key;
    //cout << ", h_index: " << h_index << ", hash_index: " << hash_index;
    //cout << ", bucket_table[h_index]->local_depth: " << bucket_table[h_index]->local_depth << "\n";
    
    hash_entry* entry = new hash_entry(key, value);
    entry->next = bucket_table[hash_index]->first;
    bucket_table[hash_index]->first = entry;
    bucket_table[hash_index]->num_entries++;
    /*{
        const int dada_index = key % table_size;
        int dada_hash_index = dada_index % (1 << bucket_table[dada_index]->local_depth);
        hash_entry* entry = new hash_entry(key, value);
        entry->next = bucket_table[dada_hash_index]->first;
        bucket_table[dada_hash_index]->first = entry;
        bucket_table[dada_hash_index]->num_entries++;
    }*/

    /*
    //印出所有的bucket
    cout << "\n";
    for(int j = 0; j < table_size; j++){
        cout << "bucket " << j <<" :";
        hash_entry* tmp = bucket_table[j]->first;
        for (int i = 0; i < bucket_table[j]->num_entries; i++){
            cout << "(" << tmp->key << ", " << tmp->value <<")";
            tmp = tmp->next;
        }
        cout << "\nlocal depth: " << bucket_table[j]->local_depth << endl;
    }*/
    
}
/* The function might be called when shrink happened.
** Check whether the table necessory need the current size of table, or half the size of table
*/
void hash_table::half_table(){

}

/* If a bucket with no entries, it need to check whether the pair hash index bucket 
** is in the same local depth. If true, then merge the two bucket and reassign all the 
** related hash index. Or, keep the bucket in the same local depth and wait until the bucket 
** with pair hash index comes to the same local depth.
*/
void hash_table::shrink(hash_bucket *bucket){
        
}

/* When executing remove_query you can call remove() in the for loop for each key.
*/
void hash_table::remove(int key){
    
}

void hash_table::key_query(vector<int> query_keys, string file_name){
    ofstream output_file(file_name);

    for (int i = 0; i < query_keys.size(); i++) {
        int key = query_keys[i];
        int index = (key % table_size);// & ((1 << global_depth) - 1);
        //const int dada_index = key % table_size;
        //int dada_hash_index = dada_index % (1 << bucket_table[dada_index]->local_depth);
        hash_bucket *bucket = bucket_table[index];
        //hash_bucket *bucket = bucket_table[dada_hash_index];

        bool found = false;
        hash_entry *current = bucket->first;
        //cout << "Value:\n";
        while (current != NULL) {
            //cout << current->value << "\n";
            if (current->key == key) {
                output_file << current->value <<"," << bucket->local_depth << endl;
                found = true;
                //output_file << current->value << endl;
                break;
            }
            current = current->next;
        }
        //exit(0);
        if (!found) {
            output_file << "-1," << bucket->local_depth << endl;
        }
    }

    output_file.close();
    /*
    cout << "---before remvove---" << endl;
    for(int j = 0; j < table_size; j++){
        cout << "bucket " << j;
        hash_entry* tmp = bucket_table[j]->first;
        for (int i = 0; i < bucket_table[j]->num_entries; i++){
            cout << "(" << tmp->key << ", " << tmp->value << ")";
            tmp = tmp->next;
        }
        cout << "\nlocal depth: " << bucket_table[j]->local_depth << endl;
    }*/
}

void hash_table::remove_query(vector<int> query_keys){
    for (int i = 0; i < query_keys.size(); i++) {
        int key = query_keys[i];
        int index = key % table_size;
        hash_bucket *bucket = bucket_table[index];
        
        
        //cout << "buddy_index: " << buddy_index << ", cntdepth: " << cntdepth << endl;
        //cout << "index: " << index << ", buddy_index: " << buddy_index << ", countdepth: " << countdepth << ", num entries: " << bucket->num_entries << endl; 
        //int bbuddy_index = index - (1 << countdepth);


        // 如果桶是空的，表示不存在這個key
        if (bucket->num_entries == 0) {
            //return;
            //cout << "shrink11" << endl;
            /*
            if(bucket->local_depth == bucket_table[buddy_index]->local_depth){
                cout << "shrink11!" << endl;
                bucket_table[index] = bucket_table[buddy_index];
                bucket_table[buddy_index]->local_depth--;
            }
            for(int j = 0; j < table_size; j++){  
                if(((j % (1 << countdepth)) == key % (1 << countdepth)) && bucket_table[j]->first == nullptr){
                    bucket_table[j] = bucket_table[index];
                    bucket_table[index]->local_depth--;
                }
            }*/
        }else if (bucket->first->key == key) {// 如果桶裡第一個元素就是要刪除的key
            hash_entry *entry = bucket->first;
            bucket->first = entry->next;
            bucket->num_entries--;
            //cout << "shrink22" << endl;
            delete entry;
            /*
            // 如果桶已經沒有元素了，直接清空
            if (bucket->num_entries == 0 && buddy_index > 0) {
                cout << "shrink22!" << endl;
                if(bucket->local_depth == bucket_table[buddy_index]->local_depth){
                    bucket_table[index] = bucket_table[buddy_index];
                    bucket_table[buddy_index]->local_depth--;
                }
                for(int j = 0; j < table_size; j++){  
                    if(((j % (1 << countdepth)) == key % (1 << countdepth)) && bucket_table[j]->first == nullptr){
                        bucket_table[j] = bucket_table[index];
                        bucket_table[index]->local_depth--;
                    }
                }
             }*/
            //continue;

        }else{// 如果桶裡第一個元素不是要刪除的key，往下找
            hash_entry *prev_entry = bucket->first;
            hash_entry *entry = prev_entry->next;

            while (entry != nullptr) {
                if (entry->key == key) {
                    //cout << "shrink33!" << endl;
                    prev_entry->next = entry->next;
                    bucket->num_entries--;
                    //cout << "shrink33" << endl;

                    delete entry;
                    /*
                    // 如果桶已經沒有元素了，直接清空
                    if (bucket->num_entries == 0 && buddy_index > 0) {
                        cout << "shrink3_countdepth: " << countdepth << endl;
                        if(bucket->local_depth == bucket_table[buddy_index]->local_depth){
                            bucket_table[index] = bucket_table[buddy_index];
                            bucket_table[buddy_index]->local_depth--;
                        }
                        for(int j = 0; j < table_size; j++){  
                            if(((j % (1 << countdepth)) == key % (1 << countdepth)) && bucket_table[j]->first == nullptr){
                                bucket_table[j] = bucket_table[index];
                                bucket_table[index]->local_depth--;
                            }
                        }
                    }*/

                    break;
                }

                prev_entry = entry;
                entry = entry->next;
            }
        }
        int cntdepth = bucket->local_depth-1;
        int buddy_index = index ^ (1 << cntdepth);
        //int cntdepth = bucket->local_depth;
        //int buddy_index = index -2;
        
        //cout << "(1 << cntdepth): " << (1 << cntdepth) << endl;
        //if(index ^ (1 << cntdepth) == index){
        //    buddy_index = index + (1 << cntdepth);
        //}
        //if(index % (1 << cntdepth) == index){
        //if ( buddy_index < 0 ) {
        //    buddy_index = index + 2 ;
        //}
        //cout << "last print num_entries: " << bucket->num_entries << endl;
        //int countdepth = bucket->local_depth - 1;
        if (bucket->num_entries == 0){
            //cout << "\nindex: " << index << ", buddy_index: " << buddy_index << ", cntdepth: " << cntdepth << endl; 
            //cout << "buddy_num_entries: " << bucket_table[buddy_index]->num_entries << endl;
            if(bucket_table[buddy_index]->local_depth == bucket->local_depth){
                //if(bucket_table[buddy_index]->num_entries != 0 
                //    && bucket_table[buddy_index]->local_depth == bucket->local_depth){
                //cout << "---first combine---" << endl;
                //cout << "local_depth: " << bucket->local_depth<< endl;
                //cout << "cntdepth: " << cntdepth << endl;
                //cout << "num entries: " << bucket->num_entries << endl;
                //cout << "table_size: " << table_size << endl;
                //cout << "index: " << index << " ,buddy_index: " << buddy_index << endl;
                bucket_table[index] = bucket_table[buddy_index];
                bucket_table[index]->local_depth--;
                if(bucket_table[index]->local_depth < 1){
                    cout << "478\n";
                    exit(0);
                }
                local[bucket_table[index]->local_depth+1]-=2;
                local[bucket_table[index]->local_depth]++;
                cntdepth++;

                while(cntdepth < global_depth){
                    if(bucket_table[index ^ (1 << (cntdepth-1))]->num_entries == 0 
                            && bucket_table[index ^ (1 << (cntdepth-1))]->local_depth == bucket->local_depth){
                        bucket_table[index ^ (1 << (cntdepth-1))] = bucket_table[index];
                        bucket_table[index]->local_depth--;
                        if(bucket_table[index]->local_depth < 1){
                            cout << "492\n";
                            exit(0);
                        }
                        local[bucket_table[index]->local_depth+1]-=2;
                        local[bucket_table[index]->local_depth]++;;
                    }else break;
                    cntdepth++;
                }   
            }
            //int bigger_index = max(index, buddy_index);
            
        }
    }

    if(local[global_depth] == 0 ){
        global_depth--;
        table_size /= 2;
        bucket_table.resize(table_size);
    }

/*
    cout << "###after remove###" << endl;

    cout << "\n";
    for(int j = 0; j < table_size; j++){
        cout << "bucket " << j <<" :";
        hash_entry* tmp = bucket_table[j]->first;
        for (int i = 0; i < bucket_table[j]->num_entries; i++){
            cout << "(" << tmp->key << ", " << tmp->value <<")";
            tmp = tmp->next;
        }
        cout << "\nlocal depth: " << bucket_table[j]->local_depth << endl;
    }*/
}

/* Free the memory that you have allocated in this program
*/
void hash_table::clear(){
    // Clear entries from all buckets

    for (int i = 0; i < table_size; i++) {
        hash_bucket *bucket = bucket_table[i];
        if(bucket->num_entries == 1){
            delete bucket->first;
            bucket->first = nullptr;
        }else if(bucket->num_entries == 2){
            delete bucket->first->next;
            delete bucket->first;
            bucket->first = nullptr;
        }
    }
    
    // Reset variables
    global_depth = 1;
    table_size = 1 << global_depth;
    for (int i = 0; i < table_size; i++) {
        bucket_table.push_back(new hash_bucket(i, global_depth));
    }
    bucket_table.resize(table_size);
    
}

