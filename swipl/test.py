from pyswip import Prolog

prolog = Prolog()
prolog.consult("likes.pl")  # Load the Prolog file

queries = ["likes(sam, dahl)", 
           "likes(sam, chop_suey)", 
           "likes(sam, pizza)", 
           "likes(sam, chips)", 
           "likes(sam, curry)",
           "likes(sam, chow_mein)",
           "likes(sam, sweet_and_sour)"]

# Store results in a txt file
with open("prolog_results.txt", "w") as f:
    for query in queries:
        result = list(prolog.query(query))
        if result:
            f.write(f"Query: {query} -> true\n")
            print(f"Query: {query} -> true")  # Also print to terminal
        else:
            f.write(f"Query: {query} -> false\n")
            print(f"Query: {query} -> false") 
              
    for result in prolog.query("likes(sam, X)"):
        f.write(f"Sam likes {result['X']}.\n")
        print(f"Sam likes {result['X']}.")
