.class Ljava/util/stream/SliceOps$1$1;
.super Ljava/util/stream/Sink$ChainedReference;
.source "SliceOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/SliceOps$1;->opWrapSink(ILjava/util/stream/Sink;)Ljava/util/stream/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/Sink$ChainedReference",
        "<TT;TT;>;"
    }
.end annotation


# instance fields
.field m:J

.field n:J

.field final synthetic this$1:Ljava/util/stream/SliceOps$1;

.field final synthetic val$limit:J

.field final synthetic val$skip:J


# direct methods
.method constructor <init>(Ljava/util/stream/SliceOps$1;Ljava/util/stream/Sink;JJ)V
    .locals 5
    .param p1, "this$1"    # Ljava/util/stream/SliceOps$1;
    .param p3, "val$skip"    # J
    .param p5, "val$limit"    # J

    .prologue
    .line 190
    .local p2, "$anonymous0":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<-TT;>;"
    iput-object p1, p0, Ljava/util/stream/SliceOps$1$1;->this$1:Ljava/util/stream/SliceOps$1;

    iput-wide p3, p0, Ljava/util/stream/SliceOps$1$1;->val$skip:J

    iput-wide p5, p0, Ljava/util/stream/SliceOps$1$1;->val$limit:J

    invoke-direct {p0, p2}, Ljava/util/stream/Sink$ChainedReference;-><init>(Ljava/util/stream/Sink;)V

    .line 191
    iget-wide v0, p0, Ljava/util/stream/SliceOps$1$1;->val$skip:J

    iput-wide v0, p0, Ljava/util/stream/SliceOps$1$1;->n:J

    .line 192
    iget-wide v0, p0, Ljava/util/stream/SliceOps$1$1;->val$limit:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-wide v0, p0, Ljava/util/stream/SliceOps$1$1;->val$limit:J

    :goto_0
    iput-wide v0, p0, Ljava/util/stream/SliceOps$1$1;->m:J

    .line 190
    return-void

    .line 192
    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .local p1, "t":Ljava/lang/Object;, "TT;"
    const-wide/16 v4, 0x1

    const-wide/16 v2, 0x0

    .line 201
    iget-wide v0, p0, Ljava/util/stream/SliceOps$1$1;->n:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 202
    iget-wide v0, p0, Ljava/util/stream/SliceOps$1$1;->m:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 203
    iget-wide v0, p0, Ljava/util/stream/SliceOps$1$1;->m:J

    sub-long/2addr v0, v4

    iput-wide v0, p0, Ljava/util/stream/SliceOps$1$1;->m:J

    .line 204
    iget-object v0, p0, Ljava/util/stream/Sink$ChainedReference;->downstream:Ljava/util/stream/Sink;

    invoke-interface {v0, p1}, Ljava/util/stream/Sink;->accept(Ljava/lang/Object;)V

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    iget-wide v0, p0, Ljava/util/stream/SliceOps$1$1;->n:J

    sub-long/2addr v0, v4

    iput-wide v0, p0, Ljava/util/stream/SliceOps$1$1;->n:J

    goto :goto_0
.end method

.method public begin(J)V
    .locals 7
    .param p1, "size"    # J

    .prologue
    .line 196
    iget-object v6, p0, Ljava/util/stream/Sink$ChainedReference;->downstream:Ljava/util/stream/Sink;

    iget-wide v2, p0, Ljava/util/stream/SliceOps$1$1;->val$skip:J

    iget-wide v4, p0, Ljava/util/stream/SliceOps$1$1;->m:J

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Ljava/util/stream/SliceOps;->-wrap2(JJJ)J

    move-result-wide v0

    invoke-interface {v6, v0, v1}, Ljava/util/stream/Sink;->begin(J)V

    .line 195
    return-void
.end method

.method public cancellationRequested()Z
    .locals 4

    .prologue
    .line 214
    iget-wide v0, p0, Ljava/util/stream/SliceOps$1$1;->m:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/util/stream/Sink$ChainedReference;->downstream:Ljava/util/stream/Sink;

    invoke-interface {v0}, Ljava/util/stream/Sink;->cancellationRequested()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method