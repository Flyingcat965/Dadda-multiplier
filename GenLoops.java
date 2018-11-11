public class GenLoops{
	public static void main(String[] args){
		System.out.println("testing java code");
		int a = 24,b = 23,c = 5;
		for (int fs_index  = 36;fs_index < 47 ; fs_index++){
			System.out.println("full_adder fa"+fs_index+"(.a(fs["+a+"]),.b(fc["+b+"]),.c_in(fs["+c+"]),.sum(fs["+fs_index+"]),.carry(fc["+fs_index+"]));");
			a +=1;b+=1;c+=2;
		}
		b = 15;
		for(a = 47;a>34;a--){
			System.out.println("sed 's/fc\\["+a+"\\]/P\\["+b+"\\]/g' processing_block.v");
			b--;
		}
		b=2;
		for(a = 35;a<48;a++){
			System.out.println("s/fs\\["+a+"\\]/MAC\\[0\\]\\["+b+"\\]/");
			b++;
		}
}
}
