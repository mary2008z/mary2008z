``csharp
using System;
using System.Collections.Generic;

// Definición de la clase Nodo
class Nodo
{
public int valor;
public Nodo hijoIzquierdo;
public Nodo hijoDerecho;

public Nodo(int valor)
{
this.valor = valor;
this.hijoIzquierdo = null;
this.hijoDerecho = null;
}
}

// Clase principal
class Arbol
{
public Nodo raiz;

public Arbol()
{
this.raiz = null;
}

// Función para insertar un nuevo nodo en el árbol
public void Insertar(int valor)
{
Nodo nuevoNodo = new Nodo(valor);

if (raiz == null)
{
raiz = nuevoNodo;
}
else
{
Nodo nodoActual = raiz;
Nodo nodoPadre;

while (true)
{
nodoPadre = nodoActual;

if (valor < nodoActual.valor)
{
nodoActual = nodoActual.hijoIzquierdo;

if (nodoActual == null)
{
nodoPadre.hijoIzquierdo = nuevoNodo;
return;
}
}
else
{
nodoActual = nodoActual.hijoDerecho;

if (nodoActual == null)
{
nodoPadre.hijoDerecho = nuevoNodo;
return;
}
}
}
}
}

// Función para imprimir el árbol en orden
public void ImprimirEnOrden(Nodo nodoActual)
{
if (nodoActual != null)
{
ImprimirEnOrden(nodoActual.hijoIzquierdo);
Console.Write(nodoActual.valor + " ");
ImprimirEnOrden(nodoActual.hijoDerecho);
}
}
}

// Programa principal
class Program
{
static void Main(string[] args)
{
Arbol miArbol = new Arbol();

miArbol.Insertar(50);
miArbol.Insertar(30);
miArbol.Insertar(70);
miArbol.Insertar(20);
miArbol.Insertar(40);
miArbol.Insertar(
Enter your messa
