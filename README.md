[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-22041afd0340ce965d47ae6ef1cefeee28c7c493a6346c4f15d667ab976d596c.svg)](https://classroom.github.com/a/SPs4PNWX)
# Lab 1 : CEG 3400 Intro to Cyber Security

## Name:

### Task 1: Hashing

**Reminder Deliverable:** Is your `salted-data.csv` in this repository?

Answer the following in this file:

* How many unique users are in the data? 42
* How many salts did you create? 32
* How many possible combinations will I need to try to figure out the secret ID
  of all students (assume I know all potential secret IDs and have your 
  `salted-data.csv`) Since you know the 4 digit combination for each user, you need to guess every name. You also probably won't be guessing names you already found. So, the maximum number of combinations can be caclulated with:
x = 42
y = 0
for(let i = 0; i < 42; i++){
y += x;
x -= 1

};
console.log(y);
  This comes out to 903 combinations
* Instead of salts, if you were to use a nonce (unique number for each hashed
  field) how many possible combinations would I need to try?
  THis is much simpler, just 1302 x 42, so 54684
* Given the above, if this quiz data were *actual* class data, say for example
  your final exam, how would you store this dataset?  Why? Likely the same way that I did here, althouh without prepending the 4 digit code to the start, for ease of access for people who need to use it.

```bash
please put any cool bash one-liners or other piped commands you
learned/struggled with for task 1 here
```

---

### Task 2: Crypto Mining

**Reminder Deliverable:** Is your "mining" code in this repository (`mining/`)?
**Reminder Deliverable:** Is your nonce + word combos in `coins.txt`?

Answer the following:

* Paste your ***nonce+word(s) and hash(s)*** below ( either 3x `000` hashes or 1x `0000`
hash)

```
000c97b1753e1915242027b8b5298016c84a3fc7205b2d2b08853f1a8d159124  - 34054about-turn
0000a07d648ba885f556ad574fe1135cc5475f088beb04a3ca724e6c1f0221b1  - 10216Acrasieae
0005a32caceb41a123502af737e18211b1be518bea652ac77e45b8529d0c4854  - 31961alabamide
```

* How many words were in your dictionary? 497K
* How many nonces did your code iterate over? I hashed one nonce for each word, so whatever number "alabamide" is. My dictionary is huge, so it would be tedious to find out the exact number. 
* What was the maximum number of hashes your code *could* compute given the above? 497k
* What did you think about Task 2? I feel like I may have misunderstood what I was meant to do, from these questions I think you wanted me to try multiple nonces for each word. However, given that my code quickly gets "KFC coins" that fit the cireteria, I would argue that it is a valid solution.
* Is there a better way than brute force to attempt to get higher valued coins? No.
* Why or why not? You cannot predict whether or not a particular string will have three leading zeroes without actually hashing it.


```bash
please put any cool bash one-liners or other piped commands you
learned/struggled with for task 2 here
```

