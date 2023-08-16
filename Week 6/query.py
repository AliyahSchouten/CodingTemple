# Imports first:
from pathlib import Path
import streamlit as st
import sys
import os

# Grab the filepath:
filepath = os.path.join(Path(__file__).parents[1])
print(filepath)

# Insert the filepath into the system:
sys.path.insert(0, filepath)

# Import the ToMongo Class now:
from to_mongo import ToMongo

# Instantiate the class:
c = ToMongo()
st.header('Query Page')
st.write('This where you will put what your looking for')

answer = st.text_input('Enter a student name:', value = 'Sol Ring')
st.write(list(c.cards.find({'name': answer})))