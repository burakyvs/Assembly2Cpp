#include <iostream>
using namespace std;

//int strfind(string str1, string str2)
//{
//	int k;
//	int i = 0;
//	int j;
//	while(str1[i] != '\0')
//	{
//		k = i;
//		j = 0;
//		while (str1[k] == str2[j])
//		{
//			if (str2[j+1] == '\0') return i;
//			k++;
//			j++;
//		}
//		i++;
//	}
//	return -1;
//}

extern "C" int strfind(char str1[], char str2[]);

int main(int argc, char * argv[])
{
	if (argc == 3)
	{
		string str1 = argv[1];
		string str2 = argv[2];
		int sonuc = strfind(&str1[0], &str2[0]);
		cout << sonuc << endl;
		getchar(); // <- if you need that to see the result.
	}
	return 0;
}
