'''
#1. logistic Regression: giving 97.77% accuracy
import pandas as pd
from sklearn.linear_model import LogisticRegression
from sklearn.model_selection import train_test_split
from sklearn.metrics import accuracy_score
from sklearn.metrics import classification_report
from sklearn.metrics import confusion_matrix


logr=LogisticRegression() # LogisticRegression() in Python refers to a class from the sklearn.linear_model

df=pd.read_csv("E:/Vcet's data science/Day 6/Iris.csv")
print(df)

x = df.drop('Id', axis=1)  
x = x.drop('Species', axis=1)
y = df['Species']  # Target value

pd.set_option('display.max_rows',10)
pd.set_option('display.max_columns',10)

pd.reset_option('display.max_rows')
pd.reset_option('display.max_columns')

print("Features:\n")
print(x)

print("Target\n")
print(y)

print("Splitting the data:\n")
X_train, X_test, y_train, y_test = train_test_split(x,y,random_state=1,test_size=0.3)
# This line of code is using the train_test_split function from sklearn.model_selection to split the dataset into training and testing sets.

print("Training data of x:\n",X_train)
print("Testing data of x:\n",X_test)
print("Training data of y:\n",y_train)
print("Testing data of y \n",y_test)

#Model trained or fitted
print("Model Fitting:\n")
logr.fit(X_train,y_train)

#predicting
print("Model Predicting:\n")
y_pred=logr.predict(X_test)

print("Coefficients:\n",logr.coef_)
print("Intercepts:\n",logr.intercept_)

print("Accuracy_score:\n",accuracy_score(y_test,y_pred))
print("Classification_report:\n",classification_report(y_test,y_pred))
print("Confusion matrix:\n",confusion_matrix(y_test,y_pred))
'''



'''
#2. Naive Bayes Classifier: giving: 93% accuracy
import pandas as pd
from sklearn.naive_bayes import GaussianNB

from sklearn.model_selection import train_test_split
from sklearn.metrics import  accuracy_score

nb=GaussianNB()

df=pd.read_csv("E:/Vcet's data science/Day 6/Iris.csv")
print(df)

x = df.drop('Id', axis=1)  
x = x.drop('Species', axis=1)
y = df['Species']  # Target value

X_train, X_test, y_train, y_test = train_test_split(x, y, random_state=0,test_size=0.4)

nb.fit(X_train,y_train)

y_pred1=nb.predict(X_test)

print("Naive Bayes: ",accuracy_score(y_test,y_pred1))
'''

'''
# 3. KNN: Giving 97.3 accuracy
import pandas as pd
from sklearn.model_selection import train_test_split
from sklearn.neighbors import KNeighborsClassifier
from sklearn.metrics import accuracy_score

knn=KNeighborsClassifier(n_neighbors=5)

df=pd.read_csv("E:/Vcet's data science/Day 6/Iris.csv")
print(df)

x = df.drop('Id', axis=1)  
x = x.drop('Species', axis=1)
y = df['Species']  # Target value

X_train,X_test,y_train,y_test=train_test_split(x,y,random_state=0)

train=knn.fit(X_train,y_train)

y_pred=knn.predict(X_test)

print(accuracy_score(y_test,y_pred))

'''

'''
#4. Decision Tree: giving 97% accuracy

import pandas as pd
from sklearn import tree
from sklearn.metrics import accuracy_score
from sklearn.model_selection import train_test_split

dt=tree.DecisionTreeClassifier()

df=pd.read_csv("E:/Vcet's data science/Day 6/Iris.csv")
print(df)

x = df.drop('Id', axis=1)  
x = x.drop('Species', axis=1)
y = df['Species']  # Target value

X_train,X_test,y_train,y_test=train_test_split(x,y,random_state=0,test_size=0.3)

train=dt.fit(X_train,y_train)

y_pred=dt.predict(X_test)

print(accuracy_score(y_test,y_pred))
'''

'''
# 5. Random Forest: giving 97.77% accuracy
import pandas as pd
from sklearn.model_selection import train_test_split
from sklearn.metrics import accuracy_score
from sklearn.ensemble import RandomForestClassifier

rf=RandomForestClassifier()

df=pd.read_csv("E:/Vcet's data science/Day 6/Iris.csv")
print(df)

x = df.drop('Id', axis=1)  
x = x.drop('Species', axis=1)
y = df['Species']  # Target value

X_train,X_test,y_train,y_test=train_test_split(x,y,random_state=0,test_size=0.3)

train=rf.fit(X_train,y_train)

y_pred=rf.predict(X_test)

print(accuracy_score(y_test,y_pred))
'''


# 6. Gradient Boosting: giving 1.0 means 100% accuracy
import pandas as pd
from sklearn.model_selection import train_test_split
from sklearn.metrics import accuracy_score
from sklearn.ensemble import GradientBoostingClassifier

gbm=GradientBoostingClassifier(n_estimators=10)

df=pd.read_csv("E:/Vcet's data science/Day 6/Iris.csv")
print(df)

x = df.drop('Id', axis=1)  
x = x.drop('Species', axis=1)
y = df['Species']  # Target value

X_train,X_test,Y_train,Y_test=train_test_split(x,y,random_state=0,test_size=0.2)

gbm.fit(X_train,Y_train)

y_pred=gbm.predict(X_test)

print("GBM: ",accuracy_score(Y_test,y_pred))


