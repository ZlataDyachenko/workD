#include <iostream>
#include <string>
#include <math.h>
#include <iomanip>
#include <ctime> 
#include <stdlib.h>
using namespace std;



void convert(string letter, int array[])
{
	
    for (int i = 0; i < letter.length(); i++)
    {
        unsigned char x = letter.at(i);
        array[i]= int(x);
    }   
}

void printM (int array[], int len){
	 for (int j = 0; j < len; j++) {
            cout << setw(4) << array[j];
        }
        cout<<endl;
}

void gammir(int text[], int key[], int len, int shifrotext[]){
	for (int i=0; i<len; i++){
		shifrotext[i]=text[i]^key[i];
	}
}

void poisk(int c1[], int c2[], int len1, int p1[], int p2[]){
	for (int i=0; i<len1; i++){
		p2[i]=c1[i]^c2[i]^p1[i];
	}
}

int main(){
	setlocale(LC_ALL, "Russian");
	string p1,p2;
    int len1;
	p1="НаВашисходящийот1204";
	p2="ВСеверныйфилиалБанка";
	len1=p1.size();
	int s1[len1], s2[len1];
    convert(p1, s1);
    convert(p2,s2);
    cout<<"P1"<<endl;
    printM(s1, len1);
    cout<<"P2"<<endl;
    printM(s2, len1);
    
    int K[len1];
    K[0]=0x05;
    K[1]=0x0C;
    K[2]=0x17;
    K[3]=0x7F;
    K[4]=0x0E;
    K[5]=0x4E;
    K[6]=0x37;
    K[7]=0xD2;
    K[8]=0x94;
    K[9]=0x10;
    K[10]=0x09;
    K[11]=0x2E;
    K[12]=0x22;
    K[13]=0x57;
    K[14]=0xFF;
    K[15]=0xC8;
    K[16]=0x0B;
    K[17]=0xB2;
    K[18]=0x70;
    K[19]=0x54;
    
    int c1[len1], c2[len1];
    gammir(s1, K, len1, c1);
    cout<<"Шифротекст C1:"<<endl;
    printM(c1, len1);
    gammir(s2, K, len1, c2);
    cout<<"Шифротекст C2:"<<endl;
    printM(c2, len1);
    
    int d1[len1],d2[len1];
    gammir(c1, K, len1, d1);
    cout<<"Дешифрованный текст P1:"<<endl;
    printM(d1, len1);
    gammir(c2, K, len1, d2);
    cout<<"Дешифрованный текст P12:"<<endl;
    printM(d2, len1);
    
    int p22[len1];
    poisk(c1,c2,len1,s1,p22);
    cout<<"Прочитанный P2:"<<endl;
    printM(p22, len1);
    
}
