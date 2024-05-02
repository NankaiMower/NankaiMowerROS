import tensorflow as tf

FROZEN_GRAPH_NAME = '../frozen_inference_graph.pb'
# Load the frozen graph
with tf.io.gfile.GFile(FROZEN_GRAPH_NAME, "rb") as f:
    graph_def = tf.compat.v1.GraphDef()
    graph_def.ParseFromString(f.read())

# Print the names of all operations in the graph
for op in graph_def.node:
    print(op.name)

# Find the input tensor name based on the operation names
# It's usually an input operation that doesn't have any inputs
# and has the type "Placeholder" or "Const"
input_tensor_name = None
for op in graph_def.node:
    if op.op == 'Placeholder' or op.op == 'Const':
        if len(op.input) == 0:
            input_tensor_name = op.name
            break

print("Input tensor name:", input_tensor_name)
