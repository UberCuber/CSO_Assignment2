#include <stdio.h>
#include <stdlib.h>
typedef long long ll;

// ll majorityElement(ll* arr, ll n){
//     ll count = 0;
//     ll candidate;
//     for(ll i = 0; i < n; i++){
//         if(count == 0) candidate = arr[i];
//         if(arr[i] == candidate) count++;
//         else count--;
//     } 
//     return candidate; 
// }

ll majorityElement(ll* arr, ll n);

int main(){
    ll n;
    scanf("%lld", &n);
    ll arr[n];
    for(ll i = 0; i < n; i++){
        scanf("%lld", &arr[i]);
    }
    printf("%lld\n", majorityElement(arr, n));
    return 0;

}
