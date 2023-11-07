library("biomaRt")
listMarts()
ensembl = useMart("ensembl")
listDatasets(ensembl)
ensembl = useDataset("hsapiens_gene_ensembl", mart = ensembl)
filters = listFilters(ensembl)
filters
attributes = listAttributes(ensembl)
attributes
globinsymbols <- c("HBB","HBA2","HBE","HBF")
myinterpro <- getBM(attributes=c("interpro","interpro_description"), filters="hgnc_symbol", values=globinsymbols, mart=ensembl)
myinterpro
