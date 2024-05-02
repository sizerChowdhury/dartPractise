class Solution {
  int numberOfEmployeesWhoMetTarget(List<int> hours, int target) {
        int cnt = 0;
        for(int i=0; i<hours.length; i++)
        {
            if(hours[i]>=target)cnt++;
        }
        return cnt;
  }
}