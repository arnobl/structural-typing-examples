
#include <string>
#include <iostream>

using namespace std;

class Duck {
	public:
		virtual string quack() = 0;
		virtual string dance() = 0;
};

class Wolf {
	public:
		string eat(Duck* d) { return " 😈 "; } 
		string quack() { return "QUACK QUACK WHOO"; }
		string dance() { return " ¯\\_()_/¯ "; }	
};

class Mallard : public Duck {
	public:
		string quack() { return "quack quack"; }
		string dance() { return " _/¯ "; }	
};

class DuckCosplay : public Duck {
	Wolf* wolf;
	public:
		DuckCosplay(Wolf* w) : wolf(w){}
		string quack() { return wolf->quack(); }
		string dance() { return wolf->dance(); }	
};


void twoDucksAlone(Duck* d1, Duck* d2) {
	cout<<d1->quack()<<endl;
	cout<<d2->quack()<<endl;

	cout<<d1->dance()<<endl;
	cout<<d2->dance()<<endl;
}

int main() {
	Wolf* wolf = new Wolf();
	Duck* theDuck = new DuckCosplay(wolf);
	Duck* aDuck = new Mallard();

	twoDucksAlone(aDuck, theDuck);

	cout<<wolf->eat(aDuck)<<endl;

	delete aDuck;
	delete theDuck;
	delete wolf;

	return 0;
}
