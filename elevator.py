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
    if to > self.current_floor:
      fn=self.__up
    else:
      fn=self.__down
    for i in range(1,to):
      fn()
    print('Beep!')


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


e1=Elevator('Elevator 1',1,-5,100)
e1.goto(10)
