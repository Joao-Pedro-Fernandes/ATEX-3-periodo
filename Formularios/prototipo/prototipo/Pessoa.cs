using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace prototipo
{
    abstract public class Pessoa
    {
        public Pessoa(string nome)
        {
            Nome = nome;
        }
        public int Id { get; set; }
        public string Nome { get; set; }
    }
}
