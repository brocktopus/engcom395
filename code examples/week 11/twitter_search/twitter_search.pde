import twitter4j.conf.*;
import twitter4j.internal.async.*;
import twitter4j.internal.org.json.*;
import twitter4j.internal.logging.*;
import twitter4j.json.*;
import twitter4j.internal.util.*;
import twitter4j.management.*;
import twitter4j.auth.*;
import twitter4j.api.*;
import twitter4j.util.*;
import twitter4j.internal.http.*;
import twitter4j.*;
import twitter4j.internal.json.*;

/*
The 'Twitter' data type we set up a variable for calls in a bunch of pre-defined functionality from the Twitter4J library. (We'll see one such capability later on in the sketch.) The 'theSearchTweets' string array we set up will serve as a container for 10 search results from a search we initialize as part of our setup() function.
*/

Twitter twitter = new TwitterFactory().getInstance();
String[] theSearchTweets = new String[10];

void setup() {
  size(400, 400);
  background(0);

/*
getSearchTweets() is a function we'll define below that makes a single search (since it's in our setup() function) and stores the results in the string array we defined above.
*/
  getSearchTweets();
}


void draw() {
  fill(255);

/*
We count how many results we have (10, since that's how long we defined our array to be above) and then draw the text for each array element to the screen at a specific place within our sketch window.
*/
  for (int i = 0; i < theSearchTweets.length; i++) {
    text(theSearchTweets[i], 10, (i*40)+20, 380, 40);
  }
}

/*
Here's our custom search function. First, we decide what our search string is ("NCSU"). Then, we create a 'Query' datatype variable to search for that string. I've asked it to only search for 10 results, since that's how long our theSearchTweets string array is. However, we could search for up to 100 "results per page" (the Rpp part below). 

After that's done, we create a 'QueryResult' variable to store that information, and then we break that down further a few times until we strip out everything except the actual tweet itself (so we've removed date/time of posting, user ID, username, etc.).

Then, we take each element of the tweets ArrayList corresponding to a twitter message, and copy that information into the corresponding element 'slot' of our theSearchTweets array, which we'll then use to populate the text of our window in our draw() function.
*/
void getSearchTweets() {
  String queryStr = "NCSU";
  try {
    Query query = new Query(queryStr);    
    query.setRpp(10); // Get 10 of the 100 search results  
    QueryResult result = twitter.search(query);    
    ArrayList tweets = (ArrayList) result.getTweets();    

    for (int i=0; i<tweets.size(); i++) {	
      Tweet t = (Tweet)tweets.get(i);	
      theSearchTweets[i] = t.getText();
    }
  } 

/*
This final bit of code here allows us to see, in the event of some sort of error, what's prevented us from grabbing the tweets we wanted. Normally this will only kick in if you try to search for a large number of tweets in a short amount of time (like multiple thousands of tweets every 5-10 seconds).
*/
  catch (TwitterException e) {    
    println("Search tweets: " + e);
  }
}