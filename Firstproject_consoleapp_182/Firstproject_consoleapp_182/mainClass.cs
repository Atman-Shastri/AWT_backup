using System;

namespace Firstproject_consoleapp_182

{
    class mainClass
    {
        static void Main(string[] args)
        {
            international i = new international();
            domestic d = new domestic();
            Console.WriteLine("Atman Shastri, 182");
            Console.WriteLine("Enter number of seats: ");
            int internationalSeats = Convert.ToInt32(Console.ReadLine());
            i.getRate();
            d.getRate();
            i.calculate(internationalSeats);
            d.calculate(internationalSeats);
        }
    }
}
