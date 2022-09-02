

#include <iostream>
#include <vector>

using namespace std;

long long abs(long long n) {
  if (n < 0) return -n;
  return n;
}

long long getNumberOfGoodPairs(int n, const vector<int>& numbers) {
  long long count_pairs = 0;
  for (long i = 0; i < n; i++) {
    for (long j = i + 1; j < n; j++) {
      if (abs(numbers[i] - numbers[j]) % 200 == 0) count_pairs++;
    }
  }
  return count_pairs;
}

int readInt() {
  int x;
  cin >> x;
  return x;
}

vector<int> readList(int n) {
  vector<int> res(n);
  for (int i = 0; i < n; i++) {
    cin >> res[i];
  }
  return res;
}

int main() {
  int n = readInt();
  vector<int> numbers = readList(n);
  cout << getNumberOfGoodPairs(n, numbers);
}
