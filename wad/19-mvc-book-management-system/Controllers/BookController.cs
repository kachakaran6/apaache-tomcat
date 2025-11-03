// Controllers/BookController.cs

using System.Linq;
using System.Web.Mvc;
using WebApplication18.Models;

namespace WebApplication18.Controllers
{
    public class BookController : Controller
    {
        BookDBContext db = new BookDBContext();

        // View all books
        public ActionResult Index() => View(db.Books.ToList());

        // Create
        public ActionResult Create() => View();

        [HttpPost]
        public ActionResult Create(Book b)
        {
            if (ModelState.IsValid)
            {
                db.Books.Add(b);
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(b);
        }

        // Edit
        public ActionResult Edit(int id) => View(db.Books.Find(id));

        [HttpPost]
        public ActionResult Edit(Book b)
        {
            if (ModelState.IsValid)
            {
                db.Entry(b).State = System.Data.Entity.EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(b);
        }

        // Delete
        public ActionResult Delete(int id)
        {
            var book = db.Books.Find(id);
            db.Books.Remove(book);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        // Search
        public ActionResult Search(string name)
        {
            var result = db.Books.Where(x => x.book_name.Contains(name)).ToList();
            return View("Index", result);
        }
    }
}