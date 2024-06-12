
# REDVBLUE FOR COMPETITIVE JAILBREAKING

![Alt text](redvblue/images/redvblue-header-image.png)
![Alt text](redvblue/images/red-team-preview.png)
## VERSION 0.1

## What the fuck is this?

This is a game where a red teamer needs to jailbreak a model that is scored between 0 and 1, where 1 is maximally inappropriate. The score is defined by our Jailbreak Score Function (NOT TRADEMARKED). 

Lineage of Game
 
0. Signin: User Signs in with Secret (not stored on server)
1. Redteam Attack: User Sends a message to the Model of Choice
2. Jailbreak Score Model: Jail Break Score from Jailbreak Score Model
3. Response Saved on Server side for Jailbreak Leaderboards.

## The Jailbreak Score Function

The Jailbreak Score Function is a function that takes in the model's response and returns a score. The score is a float between 0 and 1. The score is 0 if the response is appropriate and 1 if the response is inappropriate. The threshold can be adjusted to make the scoring more or less strict. At the moment, we assume that the threshold is 0.5.


## Flexible and Upgradable Function

This model is very flexible and can allow for any method that can score a response between 0 and 1. This means we can upgrade the function to a flexible functions


## Leaderboards

The leaderboard calculates a list of the top models and their scores. The leaderboard is updated every time a new model is scored. The leaderboard is sorted by the score in ascending order.


## Install Instructions

1. Clone the repository

2. Install the requirements

```
pip install -e ./
```

3. Run the app

```
c app redvblue.app port=8501
```

4. Go to the browser and type in the following URL

```
http://localhost:8501/
```

5. Sign in with the secret key (in the sidebar)

![Alt text](redvblue/images/signin.png)

6. Choose the model you want to attack and try to jailbreak it

![Alt text](redvblue/images/red-team-preview.png)

7. The model will be scored and you will see the score

![Alt text](redvblue/images/jailbreak_score.png)

7. Check the leaderboard to see how you did

![Alt text](redvblue/images/leaderboard.png)

![Alt text](image.png)







