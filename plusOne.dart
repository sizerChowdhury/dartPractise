/*
problem link: https://leetcode.com/problems/plus-one/description/
*/

class Solution {
  List<int> plusOne(List<int> digits) {
    int cnt = 0;
    List<int> ans = [];

    for(int i=0; i<digits.length; i++)
    {
        if(digits[i]==9)cnt++;
    }
    if(cnt == digits.length)
    {
        ans.add(1);
        for(int i=0;i<digits.length;i++)
        {
            ans.add(0);
        }
    }
    else 
    {
        for(int i=digits.length-1; i>=0; i--)
        {
            if(digits[i]==9)
            {
                digits[i]=0;
            }
            else 
            {
                digits[i]++;
                break;
            }
        }
        for(int i=0;i<digits.length;i++)
        {
            ans.add(digits[i]);
        }
    }
    return ans;

    
  }
}