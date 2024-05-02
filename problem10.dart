class Solution {
  int scoreOfString(String s) {
    int score = 0;
    for(int i=0; i<s.length-1; i++)
    {
        int a = s.codeUnitAt(i);
        int b = s.codeUnitAt(i+1);
        int c = (a-b).abs();
        score+=c;
    }
    return score;
  }
}