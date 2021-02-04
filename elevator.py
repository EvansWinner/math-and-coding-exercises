from time import sleep
from random import randint

DELAY = 0.4
TRIPS = 5
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


if __name__ == '__main__':
  e1=Elevator('Elevator 1',1,-5,10)
  e2=Elevator('Elevator 2',10,-5,10)
  e3=Elevator('Elevator 3',2,-5,10)
  e4=Elevator('Elevator 4',1,-5,10)

  do_list=[]
  elevator_list=[e1, e2, e3, e4]

  while TRIPS > 0:
    TRIPS -= 1 
    elevator = randint(0,len(elevator_list) - 1)
    destination = randint(elevator_list[elevator].min_floor, elevator_list[elevator].max_floor)
    if destination == 0:
      TRIPS += 1
    elevator_list[elevator].goto(destination)
    

      
