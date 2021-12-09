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

void keyGen (int key[], int len){
	srand(time(NULL));
	for (int i = 0; i < len; i++){
		key[i]= rand() % 256;
	}
}

void gammir(int text[], int key[], int len, int shifrotext[]){
	for (int i=0; i<len; i++){
		shifrotext[i]=text[i]^key[i];
	}
}

void getKey(int shifrotext[], int text[], int len, int key[]){
	for (int i=0; i<len; i++){
		key[i]=shifrotext[i]^text[i];
	}
}

int main (){
	
    setlocale(LC_ALL, "Russian");
	string text;
    int len;
	text="� ����� �����, ������!";
	len=text.size();
	int shifr[len];
	convert(text, shifr);
    cout<<"�����"<<endl;
    printM(shifr, len);
    
    int key[len];
    keyGen(key, len);
    cout<<"����:"<<endl;
    printM(key, len);
    
    int shifrotext[len];
    gammir(shifr, key, len, shifrotext);
    cout<<"����������:"<<endl;
    printM(shifrotext, len);
    
    int newKey[len];
    getKey(shifrotext, shifr, len, newKey);
    cout<<"����, ����������, ���� ���������� � �������� ����� :"<<endl;
    printM(newKey, len);
    
    string text2= "� ����� �����, ������!";
    int shifr2[len];
    convert(text2, shifr2);
    cout<<"�����, ������� ���� �������� "<<endl;
    printM(shifr2, len);
    
    getKey(shifrotext, shifr2, len, newKey);
    cout<<"����, ������� ��� ����� ����� ������������ (���������� �� ����������):"<<endl;
    printM(newKey, len);
}
