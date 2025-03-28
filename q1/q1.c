#include <stdio.h>
#include <stdlib.h>
typedef long long ll;

// ll maxSubarray(ll* arr, ll n){
//     ll count = 0;
//     for(ll i = 0; i < n; i++){
//         ll sum = 0;
//         for(ll j = i; j < n; j++){
//             sum = sum + arr[j];
//             if(sum == 0) count++;
//         }
//     }
//     return count;
// }

ll maxSubarray(ll*, ll);

int main(){
    ll n;
    scanf("%lld", &n);
    ll arr[n];
    for(ll i = 0; i < n; i++) scanf("%lld", &arr[i]);
    printf("%lld\n", maxSubarray(arr, n));
    return 0;
}