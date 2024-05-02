class Solution {
  String maximumOddBinaryNumber(String s) {
        int one =0;
        String  res = "";
        for(int i =0; i<s.length; i++)
        {
            if(s[i]=='1')one++;
        }
        one--;
        for(int i=1; i<=s.length; i++)
        {
            if(i<=one || i==s.length)res+='1';
            else res+='0';
        }
        return res;
  }
}