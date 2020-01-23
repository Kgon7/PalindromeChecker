public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
   String p = word;
   p = noSpaces(word);
   p = noCapitals(p);
   p = onlyLetters(p);
   if(p.equals(reverse(p)))
    return true;
   else if (p.equals(reverse(p)))
    return true;
   else 
    return false;
}
public String reverse(String str)
{
    String sNew = new String();
     for(int i = str.length(); i >0; i--)
    sNew = sNew + str.substring(i-1,i);
    return sNew;
}
public String onlyLetters(String sString){
  String w = "";
  for(int i = 0; i < sString.length(); i++)
    if(Character.isLetter(sString.charAt(i)) == true)
      w = w + sString.substring(i,i+1);
  return w;
}
public String noCapitals(String sWord){
  return sWord.toLowerCase();
}
public String noSpaces(String sWord){
  String l = "";
  for(int i = 0; i < sWord.length(); i++)
    if(sWord.substring(i, i+1).equals(" "))
      l = l;
    else
      l = l + sWord.substring(i, i+1);
  return l;
}



