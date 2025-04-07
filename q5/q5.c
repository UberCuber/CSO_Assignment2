#include <stdio.h>
#include <stdlib.h>
typedef long long ll;

// int peakValue(short int* arr, ll n){
//     ll lp = 0;
//     ll rp = n-1;

//     short left, right;

//     while(lp <= rp){
//         ll mid = (lp + rp)/2;

//         if(mid != 0) left = arr[mid-1];
//         else left = -32769;

//         if(mid != n-1) right = arr[mid+1];
//         else right = -32769;

//         if(arr[mid] >= left && arr[mid] >= right) {
//             return arr[mid];
//         }
//         else{
//             if(right >= left){
//                 lp = mid+1;
//             }
//             else rp = mid-1;
//         }
//     }
// }

short int peakValue(short int* arr, ll n);

int main(){
    ll n;
    scanf("%lld", &n);
    short arr[n];
    for(ll i = 0; i < n; i++){
        scanf("%hd", &arr[i]);
    }
    printf("%hd\n", peakValue(arr, n));
}