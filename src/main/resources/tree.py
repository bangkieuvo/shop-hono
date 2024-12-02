class Tree():
	def __init__(self,key):
		self.key = key
		self.branch = []
	def add(self,node):
		self.branch.append(node)
# t0 = Tree(8)
# t1 = Tree(9)
# t2 = Tree(10)
# t3 = Tree(7)
# t0.add(t1)
# t0.add(t2)
# t2.add(t3)
# print(t0.branch[1].branch[0].key)
class BinaryTree():
	def __init__(self,key):
		self.key = key
		self.left = None
		self.right = None
	def add(self,node):
		if self.left == None:
			self.left = node
			return
		if self.right == None:
			self.right = node
			return
	def lnr(self):
		if self.left != None:
			self.left.lnr()
		print(self.key,end = " ")
		if self.right != None:
			self.right.lnr()
t0 = BinaryTree(7)
t1 = BinaryTree(8)
t2 = BinaryTree(4)
t3 = BinaryTree(6)
t4 = BinaryTree(9)
t0.add(t1)
t0.add(t2)
t1.add(t3)
t1.add(t4)
t1.lnr()

		