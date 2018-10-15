//
// Created by admin on 17.04.2016.
//
#include <stdio.h>
#include <vector>
#include<stdlib.h>
#include <algorithm>

int main() {

#ifndef ONLINE_JUDGE
    freopen("C:/Users/admin/ClionProjects/TimusOJ/T1005/input.txt", "rt", stdin);
#endif
    int n;
    scanf("%d", &n);
    std::vector <int> vec(n);
    for(int i = 0; i<n; i++){
        scanf("%d", &vec[i]);
    }
    if(n ==1) {
        printf("%d",vec[0]);
        return 0;
    }
    if (n==2){
        printf("%d",abs(vec[0]-vec[1]));
        return 0;
    }

    int k1 = 0,k2 = 0;
    int min=100000000, n2 = 2<<(n-1);
    const int bit1 = 0x1;
    for (int i = 1 ; i < n2 ; i++) {
        for(int j = 0; j<n;j++)
        {
            k1 += vec[j] * (((i>>j&bit1)+1)&bit1);
            k2 += vec[j] * (i>>j&bit1);
        }
        if (abs(k1-k2)<min)
            min = abs(k1-k2);
        k1 = 0;
        k2 = 0;
        if( min ==0 )
            break;
    }

    printf("%d", min);
    return 0;
}