using System;

namespace Firstproject_consoleapp_182
{
     class helloworld
    {
        static void Main(string[] args)
        {
              //Console.WriteLine("Hello World");
              //Console.ReadKey();

              //int i = 75;
              // float f = 53.005f;
              // double d = 2345.7652;
              // bool b = true;

              // Console.WriteLine(i.ToString());
              // Console.WriteLine(f.ToString());
              // Console.WriteLine(d.ToString());
              // Console.WriteLine(b.ToString());
              // Console.ReadKey();
           
            //int num1, num2,num3;
            //Console.WriteLine("Enter 1st number");
            //num1 = Convert.ToInt32(Console.ReadLine());
            //Console.WriteLine("Enter 2nd number");
            //num2 = Convert.ToInt32(Console.ReadLine());
            //Console.WriteLine("Enter 1st number");
            //num3 = Convert.ToInt32(Console.ReadLine());
            //Console.WriteLine("Adding three Numbers = " + Convert.ToInt32(num1 + num2 + num3));

            employee e = new employee();
            string empname;
            Console.WriteLine("Enter name of Employee");
            empname = Convert.ToString(Console.ReadLine());
            e.getEmp(empname);
            e.printDept();

        }
    }
}
