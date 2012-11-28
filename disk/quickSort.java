public class QuickSort{
	public int part(int a[],int low,int high){
		int plot=a[low];
			while(low<heigh){
				while(low<heigh&&a[heihg]>=plot)
					--heigh;
					a[low]=a[heihg];
				while(low<heigh&&a[low]<plot)
					++low;
					a[heigh]=a[low];
			}
		
		a[low]=plot;
		return low;
	}

public void sort(int a[],int low,int heigh){
			if(low<heigh){
			int plot=part(a,low,heigh);
			sort(a,low,plot-1);
			sort(a,plot+1,heigh);
	
		}
		}

public static void main(String []args){

		QuickSort qs=new QuickSort():
		int a[]=new int []{1,4,3,5,2,6};
		qs.sort(a);
		}

}	

  
