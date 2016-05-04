//
// Created by admin on 17.04.2016.
//
#include <stdio.h>
#include<math.h>
#include <vector>
int main() {
    double n;
    std::vector<double> stack;
#ifndef ONLINE_JUDGE
    freopen("C:/Users/admin/ClionProjects/TimusOJ/T1001/input.txt", "rt", stdin);
#endif

    int i = 0;
    while (scanf("%lf", &n) != EOF)
    {
        stack.push_back(n);

        //printf("%d",stack[i]);
        i++;
    }
   i--;
    while(i!= -1) {
        printf("%.4f\n", sqrt(stack[i]));
        i--;
    }
    return 0;
}