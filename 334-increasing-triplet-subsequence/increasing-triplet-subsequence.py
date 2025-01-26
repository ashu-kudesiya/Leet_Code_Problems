class Solution:
    def increasingTriplet(self, nums):
        first = second = float('inf')
        for third in nums:
            if third <= first:
                first = third
            elif third <= second:
                second = third
            else:
                return True
        return False