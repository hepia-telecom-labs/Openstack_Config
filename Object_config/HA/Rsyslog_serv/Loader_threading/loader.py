import elasticsearch

es = elasticsearch.Elasticsearch("192.168.1.9:9200")
es.index(
    index="my_app",
    doc_type="blog_post",
    id=1,
    body={
        "title": "Elasticsearch clients",
        "content": "Interesting content...",
        "date": "date(2013, 9, 24)",
    }
)
