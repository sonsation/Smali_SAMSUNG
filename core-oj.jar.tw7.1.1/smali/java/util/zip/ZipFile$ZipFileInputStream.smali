.class Ljava/util/zip/ZipFile$ZipFileInputStream;
.super Ljava/io/InputStream;
.source "ZipFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/zip/ZipFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ZipFileInputStream"
.end annotation


# instance fields
.field private volatile closeRequested:Z

.field protected jzentry:J

.field private pos:J

.field protected rem:J

.field protected size:J

.field final synthetic this$0:Ljava/util/zip/ZipFile;


# direct methods
.method constructor <init>(Ljava/util/zip/ZipFile;J)V
    .locals 2
    .param p1, "this$0"    # Ljava/util/zip/ZipFile;
    .param p2, "jzentry"    # J

    .prologue
    .line 686
    iput-object p1, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->this$0:Ljava/util/zip/ZipFile;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 680
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->closeRequested:Z

    .line 687
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->pos:J

    .line 688
    invoke-static {p2, p3}, Ljava/util/zip/ZipFile;->-wrap3(J)J

    move-result-wide v0

    iput-wide v0, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->rem:J

    .line 689
    invoke-static {p2, p3}, Ljava/util/zip/ZipFile;->-wrap4(J)J

    move-result-wide v0

    iput-wide v0, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->size:J

    .line 690
    iput-wide p2, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->jzentry:J

    .line 686
    return-void
.end method


# virtual methods
.method public available()I
    .locals 4

    .prologue
    .line 742
    iget-wide v0, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->rem:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const v0, 0x7fffffff

    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->rem:J

    long-to-int v0, v0

    goto :goto_0
.end method

.method public close()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 750
    iget-boolean v0, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->closeRequested:Z

    if-eqz v0, :cond_0

    .line 751
    return-void

    .line 752
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->closeRequested:Z

    .line 754
    iput-wide v4, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->rem:J

    .line 755
    iget-object v1, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->this$0:Ljava/util/zip/ZipFile;

    monitor-enter v1

    .line 756
    :try_start_0
    iget-wide v2, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->jzentry:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->this$0:Ljava/util/zip/ZipFile;

    invoke-static {v0}, Ljava/util/zip/ZipFile;->-get1(Ljava/util/zip/ZipFile;)J

    move-result-wide v2

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    .line 757
    iget-object v0, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->this$0:Ljava/util/zip/ZipFile;

    invoke-static {v0}, Ljava/util/zip/ZipFile;->-get1(Ljava/util/zip/ZipFile;)J

    move-result-wide v2

    iget-wide v4, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->jzentry:J

    invoke-static {v2, v3, v4, v5}, Ljava/util/zip/ZipFile;->-wrap8(JJ)V

    .line 758
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->jzentry:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v1

    .line 761
    iget-object v0, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->this$0:Ljava/util/zip/ZipFile;

    invoke-static {v0}, Ljava/util/zip/ZipFile;->-get3(Ljava/util/zip/ZipFile;)Ljava/util/Map;

    move-result-object v1

    monitor-enter v1

    .line 762
    :try_start_1
    iget-object v0, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->this$0:Ljava/util/zip/ZipFile;

    invoke-static {v0}, Ljava/util/zip/ZipFile;->-get3(Ljava/util/zip/ZipFile;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v1

    .line 749
    return-void

    .line 755
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 761
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 767
    invoke-virtual {p0}, Ljava/util/zip/ZipFile$ZipFileInputStream;->close()V

    .line 766
    return-void
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 722
    new-array v0, v2, [B

    .line 723
    .local v0, "b":[B
    invoke-virtual {p0, v0, v3, v2}, Ljava/util/zip/ZipFile$ZipFileInputStream;->read([BII)I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 724
    aget-byte v1, v0, v3

    and-int/lit16 v1, v1, 0xff

    return v1

    .line 726
    :cond_0
    const/4 v1, -0x1

    return v1
.end method

.method public read([BII)I
    .locals 12
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v10, 0x0

    const/4 v2, 0x0

    .line 696
    iget-object v0, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->this$0:Ljava/util/zip/ZipFile;

    invoke-static {v0}, Ljava/util/zip/ZipFile;->-wrap6(Ljava/util/zip/ZipFile;)V

    .line 698
    iget-wide v0, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->rem:J

    cmp-long v0, v0, v10

    if-nez v0, :cond_0

    .line 699
    const/4 v0, -0x1

    return v0

    .line 701
    :cond_0
    if-gtz p3, :cond_1

    .line 702
    return v2

    .line 704
    :cond_1
    int-to-long v0, p3

    iget-wide v2, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->rem:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 705
    iget-wide v0, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->rem:J

    long-to-int p3, v0

    .line 707
    :cond_2
    iget-object v9, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->this$0:Ljava/util/zip/ZipFile;

    monitor-enter v9

    .line 708
    :try_start_0
    iget-object v0, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->this$0:Ljava/util/zip/ZipFile;

    invoke-static {v0}, Ljava/util/zip/ZipFile;->-get1(Ljava/util/zip/ZipFile;)J

    move-result-wide v0

    iget-wide v2, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->jzentry:J

    iget-wide v4, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->pos:J

    move-object v6, p1

    move v7, p2

    move v8, p3

    invoke-static/range {v0 .. v8}, Ljava/util/zip/ZipFile;->-wrap0(JJJ[BII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result p3

    monitor-exit v9

    .line 711
    if-lez p3, :cond_3

    .line 712
    iget-wide v0, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->pos:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->pos:J

    .line 713
    iget-wide v0, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->rem:J

    int-to-long v2, p3

    sub-long/2addr v0, v2

    iput-wide v0, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->rem:J

    .line 715
    :cond_3
    iget-wide v0, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->rem:J

    cmp-long v0, v0, v10

    if-nez v0, :cond_4

    .line 716
    invoke-virtual {p0}, Ljava/util/zip/ZipFile$ZipFileInputStream;->close()V

    .line 718
    :cond_4
    return p3

    .line 707
    :catchall_0
    move-exception v0

    monitor-exit v9

    throw v0
.end method

.method public size()J
    .locals 2

    .prologue
    .line 746
    iget-wide v0, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->size:J

    return-wide v0
.end method

.method public skip(J)J
    .locals 5
    .param p1, "n"    # J

    .prologue
    .line 731
    iget-wide v0, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->rem:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 732
    iget-wide p1, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->rem:J

    .line 733
    :cond_0
    iget-wide v0, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->pos:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->pos:J

    .line 734
    iget-wide v0, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->rem:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->rem:J

    .line 735
    iget-wide v0, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->rem:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 736
    invoke-virtual {p0}, Ljava/util/zip/ZipFile$ZipFileInputStream;->close()V

    .line 738
    :cond_1
    return-wide p1
.end method
