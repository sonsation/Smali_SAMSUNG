.class public final Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Editor;
.super Ljava/lang/Object;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Editor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Editor$FaultHidingOutputStream;
    }
.end annotation


# instance fields
.field private final entry:Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;

.field private hasErrors:Z

.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;
    .param p2, "entry"    # Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;

    .prologue
    .line 722
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Editor;->this$0:Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 723
    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Editor;->entry:Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;

    .line 724
    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;
    .param p2, "x1"    # Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;
    .param p3, "x2"    # Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$1;

    .prologue
    .line 718
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Editor;-><init>(Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Editor;)Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Editor;

    .prologue
    .line 718
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Editor;->entry:Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Editor;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Editor;
    .param p1, "x1"    # Z

    .prologue
    .line 718
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Editor;->hasErrors:Z

    return p1
.end method


# virtual methods
.method public abort()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 798
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Editor;->this$0:Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->access$1900(Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Editor;Z)V

    .line 799
    return-void
.end method

.method public commit()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 785
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Editor;->hasErrors:Z

    if-eqz v0, :cond_0

    .line 786
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Editor;->this$0:Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->access$1900(Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Editor;Z)V

    .line 787
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Editor;->this$0:Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Editor;->entry:Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;->access$1100(Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->remove(Ljava/lang/String;)Z

    .line 791
    :goto_0
    return-void

    .line 789
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Editor;->this$0:Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->access$1900(Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Editor;Z)V

    goto :goto_0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 747
    const/4 v2, 0x0

    .line 748
    .local v2, "ret":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Editor;->newInputStream(I)Ljava/io/InputStream;

    move-result-object v1

    .line 749
    .local v1, "in":Ljava/io/InputStream;
    if-eqz v1, :cond_0

    .line 752
    :try_start_0
    invoke-static {v1}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->access$1600(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 756
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 761
    :cond_0
    return-object v2

    .line 753
    :catch_0
    move-exception v0

    .line 754
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 756
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v3
.end method

.method public newInputStream(I)Ljava/io/InputStream;
    .locals 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 731
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Editor;->this$0:Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;

    monitor-enter v1

    .line 732
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Editor;->entry:Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;->access$700(Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;)Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Editor;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 733
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 739
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 735
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Editor;->entry:Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;->access$600(Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 736
    const/4 v0, 0x0

    monitor-exit v1

    .line 738
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Editor;->entry:Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;

    invoke-virtual {v2, p1}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public newOutputStream(I)Ljava/io/OutputStream;
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 772
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Editor;->this$0:Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;

    monitor-enter v1

    .line 773
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Editor;->entry:Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;->access$700(Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;)Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Editor;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 774
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 777
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 776
    :cond_0
    :try_start_1
    new-instance v0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Editor$FaultHidingOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Editor;->entry:Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;

    invoke-virtual {v3, p1}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/4 v3, 0x0

    invoke-direct {v0, p0, v2, v3}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Editor$FaultHidingOutputStream;-><init>(Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Editor;Ljava/io/OutputStream;Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$1;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method
