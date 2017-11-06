.class public final Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Snapshot;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Snapshot"
.end annotation


# instance fields
.field private final ins:[Ljava/io/InputStream;

.field private final key:Ljava/lang/String;

.field private final sequenceNumber:J

.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;Ljava/lang/String;J[Ljava/io/InputStream;)V
    .locals 1
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "sequenceNumber"    # J
    .param p5, "ins"    # [Ljava/io/InputStream;

    .prologue
    .line 679
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Snapshot;->this$0:Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 680
    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Snapshot;->key:Ljava/lang/String;

    .line 681
    iput-wide p3, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Snapshot;->sequenceNumber:J

    .line 682
    iput-object p5, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Snapshot;->ins:[Ljava/io/InputStream;

    .line 683
    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;Ljava/lang/String;J[Ljava/io/InputStream;Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$1;)V
    .locals 1
    .param p1, "x0"    # Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # J
    .param p5, "x3"    # [Ljava/io/InputStream;
    .param p6, "x4"    # Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$1;

    .prologue
    .line 674
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Snapshot;-><init>(Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;Ljava/lang/String;J[Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    .prologue
    .line 709
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Snapshot;->ins:[Ljava/io/InputStream;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 710
    .local v0, "in":Ljava/io/InputStream;
    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->access$1700(Ljava/io/Closeable;)V

    .line 709
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 712
    .end local v0    # "in":Ljava/io/InputStream;
    :cond_0
    return-void
.end method

.method public edit()Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Editor;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 691
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Snapshot;->this$0:Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Snapshot;->key:Ljava/lang/String;

    iget-wide v2, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Snapshot;->sequenceNumber:J

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->access$1500(Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;Ljava/lang/String;J)Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Editor;

    move-result-object v0

    return-object v0
.end method

.method public getInputStream(I)Ljava/io/InputStream;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 698
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Snapshot;->ins:[Ljava/io/InputStream;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 705
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Snapshot;->getInputStream(I)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->access$1600(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
