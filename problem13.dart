class Solution {
  int balancedStringSplit(String s) {
    int cnt = 0;
    int local = 0;
    for(int i =0; i<s.length; i++)
    {
        if(s[i]=='R')local++;
        else local--;
        if(local==0)cnt++;
    }
    return cnt++;
  }
}