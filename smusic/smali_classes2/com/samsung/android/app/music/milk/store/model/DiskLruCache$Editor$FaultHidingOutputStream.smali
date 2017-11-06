.class Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Editor$FaultHidingOutputStream;
.super Ljava/io/FilterOutputStream;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FaultHidingOutputStream"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Editor;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Editor;Ljava/io/OutputStream;)V
    .locals 0
    .param p2, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 802
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Editor$FaultHidingOutputStream;->this$1:Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Editor;

    .line 803
    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 804
    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Editor;Ljava/io/OutputStream;Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Editor;
    .param p2, "x1"    # Ljava/io/OutputStream;
    .param p3, "x2"    # Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$1;

    .prologue
    .line 801
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Editor$FaultHidingOutputStream;-><init>(Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Editor;Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 824
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Editor$FaultHidingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 828
    :goto_0
    return-void

    .line 825
    :catch_0
    move-exception v0

    .line 826
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Editor$FaultHidingOutputStream;->this$1:Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Editor;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Editor;->access$2002(Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Editor;Z)Z

    goto :goto_0
.end method

.method public flush()V
    .locals 3

    .prologue
    .line 832
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Editor$FaultHidingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 836
    :goto_0
    return-void

    .line 833
    :catch_0
    move-exception v0

    .line 834
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Editor$FaultHidingOutputStream;->this$1:Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Editor;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Editor;->access$2002(Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Editor;Z)Z

    goto :goto_0
.end method

.method public write(I)V
    .locals 3
    .param p1, "oneByte"    # I

    .prologue
    .line 808
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Editor$FaultHidingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 812
    :goto_0
    return-void

    .line 809
    :catch_0
    move-exception v0

    .line 810
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Editor$FaultHidingOutputStream;->this$1:Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Editor;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Editor;->access$2002(Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Editor;Z)Z

    goto :goto_0
.end method

.method public write([BII)V
    .locals 3
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 816
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Editor$FaultHidingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 820
    :goto_0
    return-void

    .line 817
    :catch_0
    move-exception v0

    .line 818
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Editor$FaultHidingOutputStream;->this$1:Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Editor;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Editor;->access$2002(Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Editor;Z)Z

    goto :goto_0
.end method
