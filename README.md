# Artificial_Intelligence_Project1

# 1) Maze Pathfinding with AI Search Algorithms

## Project Overview

This project involves implementing and experimenting with various search algorithms to solve a maze of dimensions N×N. The algorithms aim to find the shortest path from the start to the end while avoiding a chasing ghost that also uses the A* algorithm to follow the player. The project explores different pathfinding algorithms, comparing their complexities, and evaluating their effectiveness in terms of time and optimality.

## Algorithms Implemented

In this project, we have implemented and tested the following search algorithms to find the shortest path in the maze:

1. **Dijkstra Algorithm**: 
2. **A\* Algorithm (Euclidean)**: 
   - **Heuristic**: Euclidean distance
3. **A\* Algorithm (Manhattan)**: 
   - **Heuristic**: Manhattan distance
4. **Best-First Algorithm (Euclidean)**: 
   - **Heuristic**: Euclidean distance
5. **Best-First Algorithm (Manhattan)**: 
   - **Heuristic**: Manhattan distance

### Heuristics

- **Euclidean Distance**: Measures the straight-line distance between two nodes.
- **Manhattan Distance**: Considers only horizontal and vertical movements between nodes.

## Features

- **Comparative Analysis**: Algorithms are tested on mazes of different sizes, and their performance is compared based on time complexity, optimality of the solution, and efficiency.
- **Ghost Pathfinding**: A dynamic element (ghost) that also runs the A* algorithm, adding a layer of complexity by requiring the pathfinding algorithm to avoid the ghost.

## How It Works

1. **Maze Generation**: A random N×N maze is generated.
2. **Algorithm Execution**: The above-listed algorithms are executed to find the shortest path from the start to the end.
3. **Ghost Avoidance**: The pathfinding algorithms avoid a ghost that runs its own A* search algorithm, making the pathfinding more challenging.
4. **Performance Analysis**: The algorithms are evaluated based on:
   - **Time taken**: How long it takes to find the solution.
   - **Optimality**: The quality and length of the path found.
   - **Complexity**: The computational complexity in terms of both time and memory usage.


# 2) Movie Recommendation System using Prolog and Python

## Project Overview

The aim of this project is to create a **Movie Recommendation System** in Python that utilizes a **Prolog-based world** to process and query movie data. The system leverages data from the `movies_metadata.csv` file, which includes various features of movies, to categorize and recommend films. By using Prolog predicates, the system can provide movie recommendations based on similarity levels and user preferences.

This system is capable of:

- Querying movies based on common attributes.
- Providing recommendations based on multiple levels of similarity.
- Incorporating user ratings to improve personalized recommendations.

## Data Processing

### Movies Metadata
The system processes the `movies_metadata.csv` file to extract key features such as:

- **Genres**
- **Actors**
- **Directors**
- **Keywords**

These features are stored in **literals** (lists) that are used to categorize the films in the Prolog world.

## Prolog World and Predicates

Once the data is processed, a **Prolog world** is created that allows querying of the movie data using predefined predicates. The Prolog file containing the predicates is named `predicates`. Some key functionality includes:

- **Categorical Queries**: You can query movies based on shared characteristics. For example:

    ```prolog
    give_movies_with_common_genres('Terminator', 3).
    ```

    This query returns all movies that share three genres with the movie *Terminator*.

- **Recommendation System**: The system uses **five levels of similarity** to recommend movies:

    - **Level 1**: Movies that share one common genre.
    - **Level 2**: Movies that share one common genre and one common actor.
    - **Level 3**: And so on, with additional shared features increasing the similarity level.

More details about the predicates and query structure can be found in the `predicates` file.

## User Preferences and Ratings

The system also incorporates user preferences by allowing users to rate films on a scale of 1 to 5. These ratings are used to refine and personalize the recommendations further. As users provide more ratings, the system adjusts its recommendations to better match the user's tastes.

## Evaluation

The system's performance is evaluated using predefined metrics, including accuracy of the recommendations and effectiveness of the similarity levels. The evaluation code, provided in the project prompt, has been processed and extended with additional features to improve the recommendation system.
