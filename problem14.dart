class Solution {
  int countPairs(List<int> nums, int target) {
        nums.sort();
        int cnt = 0;
        for(int i=0; i<nums.length-1; i++)
        {
            for(int j = i+1; j<nums.length; j++)
            {
                if(nums[i]+nums[j]<target)cnt++;
                else break;
            }
        }
        return cnt;
  }
}