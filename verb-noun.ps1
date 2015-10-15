Function Verb-Noun{
param($path,$timeout)

ForEach($dir in $path){
 if(test-path $dir){$true}else{throw "ham"}
}



}