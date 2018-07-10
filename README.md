# Una pila (stack) en Ruby

Una pila es una estructura de datos que se accede en modo LIFO (último en entrar, primero en salir). Es una buena definición

## Ejemplos

![Pila de libros](http://stacktutoring.com/wp-content/uploads/2010/12/books-pile.png)

Imagina una pila de libros de la que solo puedes tomar el libro de la parte superior, y en la que solo puedes ubicar libros encima de los demás.

![Torre de Hanoi](http://www.arqhys.com/construccion/fotos/construccion/torres-de-hanoi.jpg)

La **torre de hanoi** es un clásico juego que funciona con 3 pilas y discos de diferentes tamaños. Los discos se organizan de mayor a menor tamaño en un cilindro y el objetivo es moverlos a otra pila en el mismo orden siguiendo tres reglas:

1. Solo puedes mover un disco a la vez.
2. Un disco solo se puede mover si se encuentra en la parte superior de una de las pilas.
3. Ningún disco disco se puede ubicar encima de otro de menor tamaño.

## Uso en la programación

Las pilas se usan en programación para recordar tareas y deshacer cambios. 

El ejemplo más claro es el del botón **Deshacer** (Undo). Cada acción que realizas en tu computador se almacena en una pila. Cada vez que oprimes **Deshacer**, el sistema operativo toma la última acción y la deshace.

Otro ejemplo es el llamado de métodos o funciones en la ejecución de un programa. Cuando un método se invoca, se agrega a una pila. Cuando retorna, se retira de la pila, y se le devuelve el control al método que lo llamó. Es por eso que a la lista de métodos que se imprime cuando ocure un error se le llama [stack trace](http://en.wikipedia.org/wiki/Stack_trace).

## ¿Cómo funciona una pila?

Una pila tiene dos métodos básicos: apilar (**push**) y retirar (**pop**). Esta es una implementación muy simple de una pila que se usa de la siguiente forma:

```ruby
s1 = Stack.new
s1.push(3)
s1.push(2)
s1.push(1)

p s1.pop() # => 1
p s1.pop() # => 2
p s1.pop() # => 3

```

