import networkx as nx
import matplotlib.pyplot as plt

# Create a directed graph
G = nx.DiGraph()

# Add nodes
G.add_node("Delhi")
G.add_node("City")
G.add_node("India")
G.add_node("Diwali")
G.add_node("Mahatma Gandhi")
G.add_node("Person")

# Add edges with labels
G.add_edge("Delhi", "City", label="is-a")
G.add_edge("Delhi", "India", label="capital-of")
G.add_edge("India", "Diwali", label="has-festival")
G.add_edge("Mahatma Gandhi", "Person", label="is-a")
G.add_edge("Mahatma Gandhi", "India", label="leader-of")

# Draw the graph
pos = nx.circular_layout(G)    # layout for better visualization
nx.draw(
    G, pos, with_labels=True,
    node_size=2500, node_color="lightpink",
    font_size=10, font_weight="bold", arrowsize=15
)

# Draw edge labels
edge_labels = nx.get_edge_attributes(G, 'label')
nx.draw_networkx_edge_labels(
    G, pos, edge_labels=edge_labels,
    font_color="red", font_size=9
)

# Show the semantic net
plt.title("Semantic Net Example (Indian Context)", fontsize=12, fontweight="bold")
plt.show()