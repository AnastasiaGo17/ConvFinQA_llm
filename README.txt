# ConvFinQA_llm
Example of a simple AI RAG architecture combining automated prompt engineering and RAG with evaluation framework

Based on the following codigng assignment: 

The Assignment
We would like to see what you can build with the data
provided. Feel free to present the results in any
format you prefer and explore any additional ideas you
have with the dataset. You may use any model or
architecture of your choice. The goal is to
demonstrate your knowledge and experience. We are
particularly interested in the logic and reasoning
behind your choice of accuracy metrics and your
ability to communicate your solutions and ideas
effectively.
We’d like you to please demonstrate a LLM driven
prototype that can answer questions based on financial
documents (texts, tables, figures etc.).
The dataset we'd like you to use is the train.json in
the ConvFinQA dataset.
Here is a snippet of the json which contains the
question, as well as the correct answer that your
solution should aim to produce:

qa": {
    "question": "what was the percentage
change in the net cash from operating activities
from 2008 to 2009”,
    "answer": "14.1%"
    }

Please produce a report on metrics with the accuracies
of your system, and a short write-up of your findings
and shortcomings.

Problem statement: 

It is a classic RAG problem that is comprised of two parts: Retrieval and EQA (Extractive Question Answering).

Key operational challenges are:

* Retrieving the right data for stated question using a query or queries that maximize relevance

* Extracting the right answer or answers from the retrieved context

* Fair evaluation of the system performance, ideally including both retriever and EQA component. 

Key architectural challenges are:

* Simplicity - the solution should be a quick demo-version of a more mature product

* Reproducibility - the saved information about the experiments and the best-performing solution should be adequate to reproduce the experiment. There should be clear documentation of the environment variables needed in code / Python module dependencies.

About the original dataset:
link available here: https://github.com/czyssrs/ConvFinQA

Proof-of-Concept stage

Environment setup: setup.sh
Workflow: llm_qa.ipynb

POC workflow has the following components:

* Data analysis and pre-processing
* Pseudo-retriever LLM call
* Question answering LLM call
* Evaluation

In scope of POC:

* Accept the train.json file and produce a series of responses.
* Do not use the qa elements other that the 'question' itself to generate responses
* Evaluate performance vs the extracted answers 

Out of scope for POC: 

* Vector storage of the text (can be impleented via Chroma DB)
* 'Proper' retriever implementation with Cosine Distance score of the embedded retriever query and documents in vector DB
* Logging and caching of API calls
* Model-agnostic architecture (plug-and-play clients)
* Parallelization and optimization of model call timeouts


