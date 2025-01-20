class Solution {
public:
    bool canPlaceFlowers(vector<int>& flowerbed, int n) {
        int count = 0;
        for (int i = 0; i<flowerbed.size(); i++)
        {
            // Check if the current plot is empty.
            if (flowerbed[i] == 0)
            {
                // Check if the left and right plot are empty.
                bool empty_left = (i == 0) || (flowerbed[i-1] == 0);
                bool empty_right = (i == flowerbed.size() - 1) || (flowerbed[i+1] == 0);

                //  If both plot are empty, we can plot a flower here.
                if (empty_left && empty_right)
                {
                    flowerbed[i] = 1;
                    count += 1;
                    if (count >= n)
                    {
                        return true;
                    }
                }
            }
        }
        return count >= n;
    }
};