import java.util.Random;
public class GenLoops{
	public static void main(String[] args){
		Random rand = new Random();
		System.out.println("testing java code");
		int a = 24,b = 23,c = 5;
		/*--------------------this part is get some reccuring loops in Dadda multiplier---------------------------
		
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
		----------------------------------------------------------------------------------------------------------------*/
		int[] ain_array = new int[255];
		int[] bin_array = new int[255];
		int[] m_array = new int[255];
		int[] res_array = new int[255];



		for(int i = 0;i < 250; i++)
		{
			ain_array[i] = rand.nextInt(255);
			bin_array[i] = rand.nextInt(255);
			m_array[i] = rand.nextInt(255);
			res_array[i] = m_array[i] + ain_array[i] * bin_array[i];
		}
			for(int i = 0;i<250;i++)
				System.out.println(Integer.toBinaryString(ain_array[i]));

			System.out.println("-----------------------------------------------------------------");

			for(int i = 0;i<250;i++)
				System.out.println(Integer.toBinaryString(bin_array[i]));
			System.out.println("-----------------------------------------------------------------");
			for(int i = 0;i<250;i++)
				System.out.println(Integer.toBinaryString(m_array[i]));
			System.out.println("-----------------------------------------------------------------");
			for(int i = 0;i<250;i++)
				System.out.println(Integer.toBinaryString(res_array[i]));
			System.out.println("-----------------------------------------------------------------");
	}
}
