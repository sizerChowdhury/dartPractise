class Solution {
  int finalValueAfterOperations(List<String> operations) {
    int res = 0;
    for(int i=0; i<operations.length; i++)
    {
        if(operations[i] == 'X++' || operations[i] == '++X')
        res++;
        else 
        res--;
    }
    return res;
  }
}