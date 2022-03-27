file = open("index.h", "w")
text = '''
int h_to_m(int a){
    return a*60;
}'''

file.write(text)