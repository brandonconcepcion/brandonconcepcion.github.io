---
title: "Random Forest Classifier (From Scratch)"
collection: portfolio
---

* Only using `NumPy` and `SciPy`, I built a Random Forest classifier using the Titanic dataset to predict passenger survival with 80% accuracy, based on features such as their position on the ship

<style>
.center {
  display: block;
  margin-left: auto;
  margin-right: auto;
  width: 40%;
  border-radius:15px; 
}
</style>

<img class="center" src='../img/RF.png'>

## Description 

* This classifier also identified spam emails with 80% accuracy
* Utilized entropy as the purity function

<div style = "display: grid; grid-template-columns: 1 fr; grid-column-gap: 50px; row-gap: 5px; margin-left: 45px; align-items: end;">
    <div>
        <img style = "width: 100%; justify-content: center; border-radius: 25px; margin-bottom: 5px;" src = '../img/DT_titanic.png'>
        <div  style = "display: flex; justify-content: center; width = 100%; margin-bottom: 20px;">
            <p>One decision tree for the Titanic dataset </p>
        </div>
    </div>
    <div>
        <img style = "width: 100%; justify-content: center; border-radius: 25px; margin-bottom: 5px;" src = '../img/DT_spam.png'>
        <div  style = "display: flex; justify-content: center; width = 100%; margin-bottom: 20px;">
            <p>One decision tree for the Spam dataset </p>
        </div>
    </div>
     <div>
        <img style = "width: 100%; justify-content: center; border-radius: 25px; margin-bottom: 5px;" src = '../img/RF_val.png'>
        <div  style = "display: flex; justify-content: center; width = 100%; margin-bottom: 20px;">
            <p>Validation accuracy vs. Maximum depth for the Spam dataset </p>
        </div>
    </div>

</div>



