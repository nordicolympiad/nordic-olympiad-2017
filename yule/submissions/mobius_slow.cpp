#include <bits/stdc++.h>
using namespace std;
template <class T> int size(const T &x) { return x.size(); }
#define rep(i,a,b) for (__typeof(a) i=(a); i<(b); ++i)
#define iter(it,c) for (__typeof((c).begin()) it = (c).begin(); it != (c).end(); ++it)
typedef pair<int, int> ii;
typedef vector<int> vi;
typedef vector<ii> vii;
typedef long long ll;
const int INF = 2147483647;

int mobius(int n) {
    int ans = 1;
    for (int i = 2; i*i <= n; i++) {
        if (n % i == 0) {
            n /= i;
            ans = -ans;
            if (n % i == 0) {
                return 0;
            }
        }
    }
    if (n > 1) {
        ans = -ans;
    }
    return ans;
}

int main() {
    int n;
    cin >> n;
    int cnt = 0;
    rep(i,1,n+1) {
        cnt += mobius(i) * (n / i / i);
    }
    cout << cnt << endl;

    return 0;
}

