class Solution:
    def canPlaceFlowers(self, flowerbed: List[int], n: int) -> bool:
        count = 0
        for i in range(len(flowerbed)):
            # Check if the current plot is empty.
            if flowerbed[i] == 0:
                # Check if the left and right plot are empty.
                empty_left = (i == 0) or (flowerbed[i-1] == 0)
                empty_right = (i == len(flowerbed) - 1) or (flowerbed[i+1] == 0)

                # If both plot are empty, we can plot a flower here.
                if empty_left and empty_right:
                    flowerbed[i] = 1
                    count += 1
                    if count >= n:
                        return True
        return count >= n