.class public Lcom/samsung/android/app/musiclibrary/ui/provider/MediaDeleter;
.super Ljava/lang/Object;
.source "MediaDeleter.java"


# instance fields
.field private final mBufferSizePerUri:I

.field private final mContext:Landroid/content/Context;

.field private final mIdField:Ljava/lang/String;

.field whereArgs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final whereClause:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bufferSizePerUri"    # I
    .param p3, "idField"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaDeleter;->whereClause:Ljava/lang/StringBuilder;

    .line 38
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaDeleter;->mContext:Landroid/content/Context;

    .line 39
    iput p2, p0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaDeleter;->mBufferSizePerUri:I

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaDeleter;->mBufferSizePerUri:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaDeleter;->whereArgs:Ljava/util/ArrayList;

    .line 41
    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaDeleter;->mIdField:Ljava/lang/String;

    .line 42
    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;J)V
    .locals 2
    .param p1, "tableUri"    # Landroid/net/Uri;
    .param p2, "id"    # J

    .prologue
    .line 45
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaDeleter;->whereClause:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaDeleter;->whereClause:Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaDeleter;->whereClause:Ljava/lang/StringBuilder;

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 49
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaDeleter;->whereArgs:Ljava/util/ArrayList;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaDeleter;->whereArgs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaDeleter;->mBufferSizePerUri:I

    if-lt v0, v1, :cond_1

    .line 51
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaDeleter;->flush(Landroid/net/Uri;)V

    .line 53
    :cond_1
    return-void
.end method

.method public flush(Landroid/net/Uri;)V
    .locals 5
    .param p1, "tableUri"    # Landroid/net/Uri;

    .prologue
    .line 56
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaDeleter;->whereArgs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 57
    .local v1, "size":I
    if-lez v1, :cond_0

    .line 58
    new-array v0, v1, [Ljava/lang/String;

    .line 59
    .local v0, "foo":[Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaDeleter;->whereArgs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "foo":[Ljava/lang/String;
    check-cast v0, [Ljava/lang/String;

    .line 60
    .restart local v0    # "foo":[Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaDeleter;->mContext:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaDeleter;->mIdField:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " IN ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaDeleter;->whereClause:Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 61
    invoke-static {v2, p1, v3, v0}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->delete(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 63
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaDeleter;->whereClause:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 64
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaDeleter;->whereArgs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 66
    .end local v0    # "foo":[Ljava/lang/String;
    :cond_0
    return-void
.end method
