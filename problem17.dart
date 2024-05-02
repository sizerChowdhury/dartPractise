class Solution {
  List<int> nextGreaterElement(List<int> nums1, List<int> nums2) {
    Map<int,int> mp = {};
    List<int> list = [];
    List<int> stack = [];
    for(int i=nums2.length-1;i>=0;i--){
        while(stack.length>0 && stack.last<=nums2[i])stack.removeLast();
        if(stack.length==0){
            mp[nums2[i]] = -1;
            stack.add(nums2[i]);
        }
        else{
            mp[nums2[i]] = stack.last;
            stack.add(nums2[i]);
        }
    }

    for(int i = 0; i<nums1.length; i++)
    {
        list.add(mp[nums1[i]] ?? -1);
    }
    return list;
    
  }
}