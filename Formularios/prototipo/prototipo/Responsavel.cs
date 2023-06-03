using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace prototipo
{
    public class Responsavel : Pessoa
    {
        public Responsavel(string nome, string email, string telefone):base(nome)
        {
            Email = email;
            Telefone = telefone;
        }

        public string Email { get; set; }
        public string Telefone { get; set; }
    }
}
