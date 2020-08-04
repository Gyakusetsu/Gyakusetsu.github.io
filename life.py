
class Reymar(Human):

    alive = True

    def __init__(self):
        self.startLife()

    def startLife(self):
        try:
            while (self.alive):
                self.sleep()
                self.eat()
                self.code()
        except SystemError as problem:
            self.fix(problem)

    def fix(self, problem):
        identifiedProblem = self.identify(problem)
        identifiedProblem.learn()
        identifiedProblem.solve()
        self.startLife()
