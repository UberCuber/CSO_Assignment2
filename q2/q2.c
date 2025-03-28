#include <stdio.h>
#include <stdlib.h>

typedef long long ll;

// ll nChooser(ll n, ll r){
//     if(r == 0) return 1;
//     return (n*nChooser(n-1, r-1))/r;
// }

ll nChooser(ll, ll);

int main(){
    ll n, r;
    scanf("%lld %lld", &n, &r);
    printf("%lld\n", nChooser(n,r));
    return 0;
}