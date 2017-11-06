.class final Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$ArrayIterator;
.super Ljava/lang/Object;
.source "SeslMapCollections.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ArrayIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field mCanRemove:Z

.field mIndex:I

.field final mOffset:I

.field mSize:I

.field final synthetic this$0:Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;I)V
    .locals 1
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;
    .param p2, "offset"    # I

    .prologue
    .line 40
    .local p0, "this":Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$ArrayIterator;, "Lcom/samsung/android/support/sesl/core/util/SeslMapCollections<TK;TV;>.ArrayIterator<TT;>;"
    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$ArrayIterator;->this$0:Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$ArrayIterator;->mCanRemove:Z

    .line 41
    iput p2, p0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$ArrayIterator;->mOffset:I

    .line 42
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;->colGetSize()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$ArrayIterator;->mSize:I

    .line 43
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 47
    .local p0, "this":Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$ArrayIterator;, "Lcom/samsung/android/support/sesl/core/util/SeslMapCollections<TK;TV;>.ArrayIterator<TT;>;"
    iget v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$ArrayIterator;->mIndex:I

    iget v1, p0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$ArrayIterator;->mSize:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 52
    .local p0, "this":Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$ArrayIterator;, "Lcom/samsung/android/support/sesl/core/util/SeslMapCollections<TK;TV;>.ArrayIterator<TT;>;"
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$ArrayIterator;->this$0:Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;

    iget v2, p0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$ArrayIterator;->mIndex:I

    iget v3, p0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$ArrayIterator;->mOffset:I

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v0

    .line 53
    .local v0, "res":Ljava/lang/Object;
    iget v1, p0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$ArrayIterator;->mIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$ArrayIterator;->mIndex:I

    .line 54
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$ArrayIterator;->mCanRemove:Z

    .line 55
    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 60
    .local p0, "this":Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$ArrayIterator;, "Lcom/samsung/android/support/sesl/core/util/SeslMapCollections<TK;TV;>.ArrayIterator<TT;>;"
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$ArrayIterator;->mCanRemove:Z

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 63
    :cond_0
    iget v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$ArrayIterator;->mIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$ArrayIterator;->mIndex:I

    .line 64
    iget v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$ArrayIterator;->mSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$ArrayIterator;->mSize:I

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$ArrayIterator;->mCanRemove:Z

    .line 66
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$ArrayIterator;->this$0:Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;

    iget v1, p0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$ArrayIterator;->mIndex:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;->colRemoveAt(I)V

    .line 67
    return-void
.end method
