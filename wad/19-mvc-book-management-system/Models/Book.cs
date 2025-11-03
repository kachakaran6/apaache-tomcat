using System.ComponentModel.DataAnnotations;

namespace WebApplication18.Models
{
    public class Book
    {
        [Key]
        public int book_id { get; set; }

        [Required(ErrorMessage = "Book name is required")]
        public string book_name { get; set; }

        [Required(ErrorMessage = "Author is required")]
        public string author { get; set; }

        [Range(1, 9999, ErrorMessage = "Enter valid price")]
        public decimal price { get; set; }
    }
}