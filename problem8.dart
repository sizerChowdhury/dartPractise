class Solution {
  int numIdenticalPairs(List<int> nums) {
    Map<int,int> mp = {};
    int ans = 0;
    for(int i=0; i<nums.length; i++)
    {
        ans = ans + (mp[nums[i]] ?? 0);
        mp[nums[i]] = (mp[nums[i]] ?? 0)+1;
    }
    return ans;
    
  }
}