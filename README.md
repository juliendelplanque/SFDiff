# SFDiff
This project is an implementation of the Similarity Flooding algorithm as defined by Sergey Melnik, Hector Garcia-Molina, and Erhard Rahm in 'Similarity flooding: A versatile graph matching algorithm and its application to schema matching' and in the technical report associated.

The implementation has been realised in [Pharo](http://pharo.org/) 6, more specifically, inside the [Moose](http://www.moosetechnology.org) 6.1 environment.

## Install
```
Metacello new
    baseline: 'SimilarityFlooding';
    repository: 'github://juliendelplanque/SFDiff/repository';
    load
```

## Basic usage
The most basic usage of SFDiff algorithm is the following:
```
changes := SFDiff baseModel: firstModel targetModel: secondModel
```

## Understanding the framework
The core package of this framework is `SimilarityFlooding` which contains the implementation of *Similarity Flooding*.

Classes are distributed in four tags:
- *Datastructures* which contains all the data structures used by the algorithm
- *Filters* which contains filters applicable to the output of the algorithm to filter the results
- *GraphBuilder* which contains classes to build input graphs for SimilarityFlooding from MooseModels
- *Traits* which contains traits shared along multiple classes in the package

`SimilarityFlooding-Diff` contains the implementation of *SFDiff*. 

### Code contribution
To contribute via a bug fix/enhancement to this project, please use GitFile tree.
If you want to have write access to this repository, please open an issue.

1. Install GitFileTree using the Catalog Browser.
2. Clone this repository on your computer: `git clone git@github.com:juliendelplanque/SFDiff.git`
3. Install the project using the script in the preceding section.
4. Open the 'Monticello Browser', select the package for which you want to modify something.
5. Click on '+Repository' button, select 'gitfiletree://' and locate the subdirectory 'repository' of the directory in which you cloned this repository.
6. Do some modifications.
7. Go in the 'Monticello Browser' select the gitfiletree repository and click 'Save' button.

Repeat 6. and 7. for each modification you want to apply.

### Open an issue
If you detect any bug in this project, please open an issue with a complete description of the bug you encountered.

