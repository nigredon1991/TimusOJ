//
// Created by admin on 28.04.2016.
//

#include <stdio.h>
#include <vector>
#include <algorithm>

int main() {
#ifndef ONLINE_JUDGE
    freopen("C:/Users/admin/ClionProjects/TimusOJ/T1014/input.txt", "rt", stdin);
#endif

    


    int N;
    scanf("%d", &N);
    std::vector <int> vec;
    int sqrtn = (int)sqrt(N);
    int  n = N;
    int k = 0;
    int j = 0;
    for(;n!=1;j++){
        for(int i = 2; i < sqrtn;i++){
            if(n%i==0){
                vec.push_back(i);
                j++;
                n = n/i;
                i = sqrtn;
                k = 1;
            }
        }
        if(k==0){
            vec.push_back(n);
            j++;
            n = 1;
        }
        k = 0;
        if(vec[j-1]>9) n = 1;
    }
    if(vec[j]>9) {
        printf("%d", -1);
        return 0;
    }
    for(std::vector<int>::iterator i = vec.begin();i != vec.end();i++) {
        printf("%d", *i);
    }
    return 0;
}