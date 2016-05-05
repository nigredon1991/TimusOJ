//
// Created by admin on 28.04.2016.
//

#include <stdio.h>
#include <vector>


int main() {
#ifndef ONLINE_JUDGE
    freopen("C:/Users/admin/ClionProjects/TimusOJ/T1014/input.txt", "rt", stdin);
#endif




    int N;
    scanf("%d", &N);
    if(N==0){printf("%d",10);
        return 0;
    }
    if( N ==1|| N==2 || N ==3){
        printf("%d", N);
        return 0;
    }
    std::vector <int> vec;
    int k = 9;
    bool check = false;
    while(N!=1){
        for(; k>1;k--){
            if(N%k==0){
                vec.push_back(k);
                N = N/k;
                check =true;
                break;
            }
        }
        if(!check){
            printf("%d", -1);
            return 0;
        }
        else
            check = false;
        k = 9;
    }

    for(std::vector<int>::iterator i = vec.end();i != vec.begin();) {
        i--;
        printf("%d", *i);
    }
    return 0;
}