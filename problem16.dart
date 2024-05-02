class Solution {
  List<int> nextGreaterElement(List<int> nums1, List<int> nums2) {
    Map<int,int> mp = {};
    List<int> list = [];
    mp[nums2[nums2.length-1]] = -1;
    for(int i = 0; i<nums2.length; i++)
    {
        for(int j = i+1; j<nums2.length; j++)
        {
            if(nums2[j]>nums2[i])
            {
                mp[nums2[i]] = nums2[j];
                break;
            }
            else if(j == nums2.length-1)
            {
                mp[nums2[i]] = -1;
            }
        }
    }
    for(int i = 0; i<nums1.length; i++)
    {
        list.add(mp[nums1[i]] ?? -1);
    }
    return list;
  }
}