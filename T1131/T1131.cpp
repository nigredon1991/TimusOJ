//
// Created by admin on 17.04.2016.
//

#include <stdio.h>
int main() {
     long int n,k;
#ifndef ONLINE_JUDGE
    freopen("C:/Users/admin/ClionProjects/TimusOJ/T1131/input.txt", "rt", stdin);
#endif
    scanf("%d%d",&n,&k);

    if (k == 1 || n == 1 ) {
        printf("%d", n);
        return 0;
    }
    if (n==2){
        printf("%d", 1);
        return 0;
    }
    if (n==3 && k==3){
        printf("%d", 2);
        return 0;

    }
   // printf("%d\n%d\n",n,k);
    int dn = n>>1;
    dn = dn<<1;
    int temp = dn;
    int i =0;
    for(;temp!=0;i++)
        temp = temp>>1;

    if(i==k) {
        if(dn == n) {
            printf("%d", i);
            return 0;
        }
        else {
            printf("%d", i+1);
            return 0;
        }
    }
    if (i<k){
        dn = 1;
        dn = dn<<(i-1);
        printf("%d", i + (n-dn)/i+ 1);
        return 0;

    }
    //if(i>k)
    dn = 1;
    temp =k;
    int j =0;
    for(;temp!=0;j++)
        temp = temp>>1;
    temp = 1;
    temp = temp <<j;
    if(j==k){
        printf("%d", j + (n-temp)/k);
        return 0;
    }
    printf("%d", j + (n-temp)/k+1);
    return 0;



    printf("%d\n",dn);



    /*
    long int prod = 2;
    long int i = 2;
    int step= 1;

    while(i<=k){
        prod += i;
        i*=2;
        step++;
    }

    if(prod == n){
        printf("%d\n",step);
        return 0;
    }
    if(prod < n&&(n-prod)%k==0){
        printf("%d\n",step + (n-prod)/k);
        return 0;
    }
    else if ((prod < n&&(n-prod)%k!=0)) {
        printf("%d\n",step + (n-prod)/k+ 1);
        return 0;
    }
    //prod>n
    printf("%d\n",step);
    //printf("%d", (n-prod)%k);
    return 0;*/
}