# Gradient Descent
This Matchine Learning Program try to learn behavior of OR.

|X1|X2|X3|Q|
|:---:|:---:|:---:|:---:|
|0|0|0|0|
|0|0|1|1|
|0|1|0|1|
|0|1|1|1|
|1|0|0|1|
|1|0|1|1|
|1|1|0|1|
|1|1|1|1|

## Language
- Octave

## Install
```
brew install octave
```

An alternative option, go to [GNU Octave](https://www.gnu.org/software/octave/) to download.

## How to start
1. In this root repository, run `octave` 
2. follow instructions below:

```
octave:1> start_learning
How many Inputs: 3
Do you want to generate new training example: 1
How many training example: 100000
Learning Rate: 0.001
```

Note:
- This is using `or_generator.m` to generate training data
- This step will generate 100000 training data sets under the csv directory (800KB in total)
- It will take about 3 minutes to generate

3. Now Learning... (you will see a lot of 'Theta')
4. Display Result of Accuracy

```
Accuracy:  100
Precision: 1.00000
Recall:    1.00000
F-Score:   1.00000
```

5. Enter 3 numbers (0 or 1)

```
Enter Number: 0
Enter Number: 0
Enter Number: 1
true
Enter Number: 0
Enter Number: 0
Enter Number: 0
false
Enter Number: 1
Enter Number: 1
Enter Number: 1
true
Enter Number: 0
Enter Number: 1
Enter Number: 0
true
Enter Number: 1
Enter Number: 1
Enter Number: 1
true
```

Note: If input "Nothing" and hit enter, it will crash this program :D (sorry I will fix this next time)

