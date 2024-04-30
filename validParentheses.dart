/*
problem link: https://leetcode.com/problems/valid-parentheses/description/
*/

class Solution {
  bool isValid(String s) {
    Map<String,int> mp ={};
    int ans=0;
    for(int i = 0;i<s.length;i++)
    {
        if(s[i]=='(' || s[i]=='{' || s[i]=='[')
        {
           mp[s[i]] = (mp[s[i]] ?? 0) + 1;
            ans++;
        }
        else
        {
            if(s[i]==')' && (mp['('] ?? 0)>0)
            {
                mp[s[i]] = (mp[s[i]] ?? 0) - 1;
                ans--;
            }
            else if(s[i]=='}' && (mp['{'] ?? 0)>0)
            {
                mp[s[i]] = (mp[s[i]] ?? 0) - 1;
                ans--;
            }
            else if(s[i]==']' && (mp['['] ?? 0)>0)
            {
                mp[s[i]] = (mp[s[i]] ?? 0) - 1;
                ans--;
            }
            else return false;
        } 
    }
    if(ans==0)return true;
    else return false;
}
}