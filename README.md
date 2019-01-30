# slowmo
slowmo is an ontology-like structure used to inform various components of the Display Lab's Tailored Performance Feedback System. More information can be found on the [Display Lab's GitHub Page](https://github.com/Display-Lab). slowmo is primarily used to assign annotations various knowledge base and tailoring software objects/processes. slowmo does not import an upper-level ontology, so organization of terms based on software needs.

This work is not peer reviewed.

## Developer
### IRIs
The format for the ontology IRIs is as follows:

```
http://example.com/slowmo#TimeCardinality
```

### Annotations
There are three annotations properties that are important to understanding classes in slowmo:

1. `rdfs:label`: EVERY class is expected to have a human readable label that corresponds to the IRI for that class.
1. `http://purl.obolibrary.org/obo/IAO_0000115` (definition): this class is imported from the [Information Artifact Ontology](http://www.obofoundry.org/ontology/iao.html). This class is used in the formal ontologies [PSDO](https://github.com/Display-Lab/psdo) and [CPO](https://github.com/Display-Lab/cpo) to provide human-readable semantic definitions for each class. While it is not strictly necessary that every class have a definition, it is advisable that definitions be provided where possible.
1. `rdfs:comment`: For human-readable notes concerning attribution, definition clarification, ect. Use generously.

## Competing Interests
The authors declare no competing interests.

## Acknowledgements
Research reported in this ontology was supported by the National Library of Medicine of the National Institutes of Health under grant number 1K01LM012528-01.
