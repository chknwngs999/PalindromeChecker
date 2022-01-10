public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  System.out.println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if (palindrome(lines[i])==true)
    {
      System.out.println(lines[i] + " IS a palindrome.");
    } else
    {
      System.out.println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  //your code here
  String result = "";
  for (int i = 0; i < word.length(); i++){
    if (Character.isLetter(word.charAt(i)))
      result = result + word.charAt(i);
  }
  result = result.toLowerCase().replaceAll(" ", "");
  return result.equals(reverse(result));
}
public String reverse(String str)
{
  String sNew = new String();
  //your code here
  for (int i = str.length()-1; i >= 0; i--) {
    char current = str.charAt(i);
    sNew = sNew + current;
  }

  return sNew;
}
