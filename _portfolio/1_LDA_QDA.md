---
title: "Linear + Quadratic Discriminant Analysis From Sratch"
# excerpt: "<img style='border-radius:15px; width: 200px;' src='../images/lda_qda.png'>"
collection: portfolio
---

* Only using `NumPy`, I developed a Quadratic Discriminant Analysis (QDA) classifier which identified handwritten digitis with 82% accuracy

<style>
.center {
  display: block;
  margin-left: auto;
  margin-right: auto;
  width: 60%;
  border-radius:15px; 
}
</style>

<img class="center" src='../img/lda_qda.png'>

## Description 

* Only using NumPy and Sklearn's `train_test_split`, I implemented a Linear Discriminant Analysis (LDA) and Quadratic Discriminant Analysis (QDA) classifier from scratch

* Training on 50,000 handwritten digits from the MNIST dataset, and evaluating on a test set of 10,000 handwritten digits, I achieved 82% accuracy

<div style = "display: grid; grid-template-columns: 350px 350px; grid-column-gap: 50px; row-gap: 5px; margin-left: 45px; align-items: end;">
    <div>
        <img style = "width: 350px; border-radius: 25px; margin-bottom: 10px;" src = '../img/err_LDA.png'>
    </div>
    <div>
        <img style = "width: 350px; border-radius: 25px; margin-bottom: 10px;" src = '../img/err_QDA.png'>
    </div>
     <div>
        <img style = "width: 350px; border-radius: 25px; margin-bottom: 10px;" src = '../img/lda_digit.png'>
    </div>
    <div>
        <img style = "width: 350px; border-radius: 25px; margin-bottom: 10px;" src = '../img/qda_digit.png'>
    </div>

</div>


