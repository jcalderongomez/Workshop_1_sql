using Data;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Models.Entidades;

namespace API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class VehiculoController : ControllerBase
    {
        private readonly ApplicationDbContext _context;

        public VehiculoController(ApplicationDbContext context)
        {
            _context = context;
        }
        [HttpGet]
        public async Task<ActionResult<List<Vehiculo>>> Get()
        {
            
            var lista = await _context.Vehiculos.Include(v => v.Marca).ToListAsync();
            return Ok(lista);
        }
    }
}
