#include <stdio.h>
#include <stdlib.h>
typedef long long ll;

// void NGR(ll* arr, ll n, ll* stack, ll* output){
//     ll top = -1;
//     for(ll i = n-1; i >= 0; i--){
//         while(top >= 0 && stack[top] < arr[i]){
//             top--; // pop
//         }
//         if(top == -1) output[i] = -1;
//         else output[i] = stack[top];
//         // push
//         top++;
//         stack[top] = arr[i];
//     }
// }

void NGR(ll*, ll, ll*, ll*);

int main(){
    ll n;
    scanf("%lld", &n);
    ll arr[n];
    ll stack[n];
    ll output[n];
    for(ll i = 0; i < n; i++){
        scanf("%lld", &arr[i]);
    }
    NGR(arr, n, stack, output);
    for(ll i = 0; i < n; i++){
        printf("%lld ", output[i]);
    }
    printf("\n");
    return 0;
}
