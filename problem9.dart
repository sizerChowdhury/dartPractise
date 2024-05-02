class Solution {
  bool canConstruct(String ransomNote, String magazine) {
    int f=0;
    Map<String,int> ransom= {};
     Map<String,int> maga= {};
    for(int i=0; i<ransomNote.length; i++)
    {
        ransom[ransomNote[i]] = (ransom[ransomNote[i]]??0)+1;
    }

    for(int i=0; i<magazine.length; i++)
    {
        maga[magazine[i]] = ( maga[magazine[i]]??0)+1;
    }
    for(int i=0; i<ransomNote.length; i++)
    {
        if((ransom[ransomNote[i]]??0)>(maga[ransomNote[i]]??0))
        {
            return false;
        }
    }
   return true;
  }
}