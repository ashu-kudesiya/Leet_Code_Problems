#include <iostream>
#include <limits>

using namespace std;

class Solution {
public:
    bool isPalindrome(int x) {
        int reverse_digit = 0, original_digit = x;
        while (x > 0) {
            int last_digit = x % 10;

            // Check for overflow before updating reverse_digit
            if (reverse_digit > (numeric_limits<int>::max() - last_digit) / 10) {
                return false;  // Overflow will occur, return false
            }

            reverse_digit = (reverse_digit * 10) + last_digit;
            x = x / 10;
        }
        return reverse_digit == original_digit;
    }
};