from time import sleep
from random import randint, random


DELAY = 0.3
NUM_PEOPLE = 100
NUM_FLOORS = 100


class Elevator:

  current_floor=1
  max_floor=100
  min_floor=-5
  name="elevator"

  def __init__(self,name,current_floor,min_floor,max_floor):
    self.name=name
    self.max_floor=max_floor
    self.min_floor=min_floor
    self.current_floor=current_floor
    print('Initializing ',self.name,'on floor',self.current_floor)


  def is_legit(self,floor):
    """True if floor number is valid for elevator."""
    if floor >= self.min_floor and floor <= self.max_floor:
      return True
    return False


  def goto(self,to):
    if not self.is_legit(to):
      raise Exception("You're an idiot.")
    if to == self.current_floor:
      print('Beep! Already at floor',self.current_floor)
      return None
    print(self.name,'heading for floor',to)
    if to > self.current_floor:
      fn=self.__up
    else:
      fn=self.__down
    for i in range(self.current_floor,to):
      fn()
      sleep(DELAY)
    print('Beep!',self.name,'arriving at floor',self.current_floor)


  def __up(self):
    if self.current_floor == -1:
      self.current_floor += 1
    else:
      self.current_floor += 1
    print(self.name,'at floor:',self.get_floor())


  def __down(self):
    if self.current_floor == 1:
      self.current_floor -= 2
    else:
      self.current_floor -= 1
    print(self.name,self.get_floor())


  def get_floor(self):
    return self.current_floor


  def recall_to(self,floor):
    self.set_floor(floor)



class Person:
  current_floor=1
  destination=10

   
  def __init__(self,ident,current_floor):
    self.ident=ident
    self.current_floor=current_floor
    print('Person',id, 'entering building.')



class Building:
  num_elevators=4
  max_floor=10
  elevator_list = []

  def __init__(self,max_floor,min_floor,num_elevators):
    self.max_floor=max_floor
    self.min_floor=min_floor
    self.num_elevators = num_elevators
    for elevator in range(1,num_elevators+1):
      elevator_list.append(Elevator('Elevator'+str(elevator),1,-5,10))
     


if __name__ == '__main__':
  queue = []
  for person in range(1,NUM_PEOPLE+1):
    queue.append(Person(person, randint(1, NUM_FLOORS+1))
  for person in queue:
    queue.append 

    elevator = randint(0,len(elevator_list) - 1)
    destination = randint(elevator_list[elevator].min_floor, elevator_list[elevator].max_floor)
    if elevator_list[elevator].get_floor() != 1:
      if random() < RETURN_TO_1_PROPORTION:
        destination = 1  
    if destination == 0:
      TRIPS += 1; continue # Easier than trying to make the math work out
    elevator_list[elevator].goto(destination)
    

      
