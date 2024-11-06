import os
print("Solved " + str(len(os.listdir('solutions/easy'))) + " easy problems and " + 
                  str(len(os.listdir('solutions/medium'))) + " medium problems and " +
                  str(len(os.listdir('solutions/hard'))) + " hard problems. Total: " +
                  str(len(os.listdir('solutions/easy')) + len(os.listdir('solutions/medium')) + len(os.listdir('solutions/hard'))))