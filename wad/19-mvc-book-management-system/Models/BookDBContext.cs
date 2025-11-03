// Models/BookDBContext.cs


using System.Data.Entity;

namespace WebApplication18.Models
{
    public class BookDBContext : DbContext
    {
        public BookDBContext() : base("BookDb") { }

        public DbSet<Book> Books { get; set; }
    }
}