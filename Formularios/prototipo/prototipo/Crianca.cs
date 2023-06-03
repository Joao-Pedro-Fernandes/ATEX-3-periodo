using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace prototipo
{
    internal class Crianca : Pessoa
    {
        public Crianca(string nome, int idade) :base(nome)
        {
            Jogo = new List<string>();
            RedeSocial = new List<string>();
            Idade = idade;
        }
        public int Idade { get; set; }
        public List<string> Jogo { get; set; }
        public List<string> RedeSocial { get; set; }

        public string RecuperaJogo()
        {
            string aux = "";

            foreach(string item in Jogo) 
            {
                aux += item;
            }

            return aux;
        }

        public string RecuperaRede()
        {
            string aux = "";

            foreach (string item in RedeSocial)
            {
                aux += item;
            }

            return aux;
        }
    }
}
