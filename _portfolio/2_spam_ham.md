---
title: "Spam Email Classification"
collection: portfolio
---

* Utilizied `Python`, `Pandas`, and `Sklearn` to build a classifier which identifies spam emails with 90% accuracy

<style>
.center {
  display: block;
  margin-left: auto;
  margin-right: auto;
  width: 40%;
  border-radius:15px; 
}
</style>

<img class="center" src='../img/spam_ham.png'>

## What do 'spam' and 'ham' mean? 
* Spam (1) emails are unsolicited or bulk messages, often commercial in nature, while ham (0) emails are legitimate, non-spam communications.

## Description 
* The GitHub Repo for this project can be found <a href = "https://github.com/brandonconcepcion/Spam-vs-Ham/tree/main" target = "_blank">here!</a>
* Engineered a logistic regression model on a dataset of over 7,500 points, resulting in an email classifier that achieved 90% testing accuracy and an Area Under the ROC Curve (AUC) of 0.91.
* Applied advanced feature engineering and Principal Component Analysis (PCA) to reduce dimensionality from 18 to 5 features, mitigating overfitting and ensuring 92% of legitimate (ham) emails in the test set of 1065 were correctly identified and retained in the inbox.
* Enhanced model performance through GridSearch optimization across 4 hyperparameters, resulting in a 5% increase in accuracy when classifying a validation set of 1250 emails.

### Tools
* Python 
* NumPy
* Pandas
* Seaborn
* Scikit-Learn 
* Regular Expressions

### Skills
* Machine Learning 
* Data Visualization
* Principal Component Analysis (PCA)
* Classification 
* Logistic Regression
* Feature Engineering