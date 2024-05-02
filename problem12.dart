class Solution {
  int mostWordsFound(List<String> sentences) {
    int res = 0;
    for(int i =0; i<sentences.length; i++)
    {
        int local = 0;
        for(int j=0; j<sentences[i].length;j++)
        {
            if(sentences[i][j]==' ')
            local++;
        }
        res = max(local,res);
    }
    return res+1;
  }
}