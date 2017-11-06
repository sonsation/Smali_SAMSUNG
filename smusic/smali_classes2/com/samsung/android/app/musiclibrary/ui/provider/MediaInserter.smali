.class public Lcom/samsung/android/app/musiclibrary/ui/provider/MediaInserter;
.super Ljava/lang/Object;
.source "MediaInserter.java"


# instance fields
.field private final mBufferSizePerUri:I

.field private final mContext:Landroid/content/Context;

.field private final mRowMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bufferSizePerUri"    # I

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaInserter;->mRowMap:Ljava/util/HashMap;

    .line 43
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaInserter;->mContext:Landroid/content/Context;

    .line 44
    iput p2, p0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaInserter;->mBufferSizePerUri:I

    .line 45
    return-void
.end method

.method private flush(Landroid/net/Uri;Ljava/util/List;)I
    .locals 3
    .param p1, "tableUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 76
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    const/4 v0, 0x0

    .line 77
    .local v0, "count":I
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 78
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    new-array v1, v2, [Landroid/content/ContentValues;

    .line 79
    .local v1, "valuesArray":[Landroid/content/ContentValues;
    invoke-interface {p2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "valuesArray":[Landroid/content/ContentValues;
    check-cast v1, [Landroid/content/ContentValues;

    .line 80
    .restart local v1    # "valuesArray":[Landroid/content/ContentValues;
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaInserter;->mContext:Landroid/content/Context;

    invoke-static {v2, p1, v1}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->bulkInsert(Landroid/content/Context;Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v0

    .line 81
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 83
    .end local v1    # "valuesArray":[Landroid/content/ContentValues;
    :cond_0
    return v0
.end method


# virtual methods
.method public flushAll()I
    .locals 5

    .prologue
    .line 67
    const/4 v0, 0x0

    .line 68
    .local v0, "count":I
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaInserter;->mRowMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 69
    .local v1, "tableUri":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/net/Uri;Ljava/util/List<Landroid/content/ContentValues;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaInserter;->flush(Landroid/net/Uri;Ljava/util/List;)I

    move-result v2

    add-int/2addr v0, v2

    .line 70
    goto :goto_0

    .line 71
    .end local v1    # "tableUri":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/net/Uri;Ljava/util/List<Landroid/content/ContentValues;>;>;"
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaInserter;->mRowMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 72
    return v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)I
    .locals 5
    .param p1, "tableUri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 48
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaInserter;->mRowMap:Ljava/util/HashMap;

    .line 49
    .local v2, "rowmap":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Ljava/util/List<Landroid/content/ContentValues;>;>;"
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 50
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-nez v1, :cond_0

    .line 51
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    :cond_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3, p2}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    const/4 v0, 0x0

    .line 56
    .local v0, "count":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    iget v4, p0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaInserter;->mBufferSizePerUri:I

    if-lt v3, v4, :cond_1

    .line 58
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaInserter;->flush(Landroid/net/Uri;Ljava/util/List;)I

    move-result v0

    .line 60
    :cond_1
    return v0
.end method
