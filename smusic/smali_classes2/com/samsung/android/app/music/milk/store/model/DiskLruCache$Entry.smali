.class final Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;
.super Ljava/lang/Object;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Entry"
.end annotation


# instance fields
.field private currentEditor:Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Editor;

.field private final key:Ljava/lang/String;

.field private final lengths:[J

.field private readable:Z

.field private sequenceNumber:J

.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;Ljava/lang/String;)V
    .locals 1
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 855
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;->this$0:Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 856
    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;->key:Ljava/lang/String;

    .line 857
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->access$2100(Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;)I

    move-result v0

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;->lengths:[J

    .line 858
    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;Ljava/lang/String;Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$1;

    .prologue
    .line 840
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;-><init>(Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;)[J
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;

    .prologue
    .line 840
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;->lengths:[J

    return-object v0
.end method

.method static synthetic access$1100(Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;

    .prologue
    .line 840
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;->key:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;)J
    .locals 2
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;

    .prologue
    .line 840
    iget-wide v0, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;->sequenceNumber:J

    return-wide v0
.end method

.method static synthetic access$1202(Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;J)J
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;
    .param p1, "x1"    # J

    .prologue
    .line 840
    iput-wide p1, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;->sequenceNumber:J

    return-wide p1
.end method

.method static synthetic access$600(Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;

    .prologue
    .line 840
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;->readable:Z

    return v0
.end method

.method static synthetic access$602(Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;
    .param p1, "x1"    # Z

    .prologue
    .line 840
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;->readable:Z

    return p1
.end method

.method static synthetic access$700(Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;)Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Editor;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;

    .prologue
    .line 840
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;->currentEditor:Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Editor;

    return-object v0
.end method

.method static synthetic access$702(Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Editor;)Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Editor;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;
    .param p1, "x1"    # Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Editor;

    .prologue
    .line 840
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;->currentEditor:Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Editor;

    return-object p1
.end method

.method static synthetic access$800(Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;[Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;
    .param p1, "x1"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 840
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;->setLengths([Ljava/lang/String;)V

    return-void
.end method

.method private invalidLengths([Ljava/lang/String;)Ljava/io/IOException;
    .locals 3
    .param p1, "strings"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 886
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unexpected journal line: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setLengths([Ljava/lang/String;)V
    .locals 6
    .param p1, "strings"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 872
    array-length v2, p1

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;->this$0:Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;

    invoke-static {v3}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->access$2100(Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;)I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 873
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;->invalidLengths([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v2

    throw v2

    .line 877
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 878
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;->lengths:[J

    aget-object v3, p1, v1

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    aput-wide v4, v2, v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 877
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 880
    :catch_0
    move-exception v0

    .line 881
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;->invalidLengths([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v2

    throw v2

    .line 883
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    return-void
.end method


# virtual methods
.method public checkFilename(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "inFile"    # Ljava/lang/String;

    .prologue
    .line 909
    const-string v1, "/"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 911
    .local v0, "outFile":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 912
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    .line 915
    .end local p1    # "inFile":Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method public getCleanFile(I)Ljava/io/File;
    .locals 4
    .param p1, "i"    # I

    .prologue
    .line 890
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 891
    .local v0, "name":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 892
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 893
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 894
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;->this$0:Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->access$2200(Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;->checkFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method public getDirtyFile(I)Ljava/io/File;
    .locals 5
    .param p1, "i"    # I

    .prologue
    .line 898
    const-string v0, ".tmp"

    .line 899
    .local v0, "ext":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 900
    .local v1, "name":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 901
    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 902
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 903
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 905
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;->this$0:Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;

    invoke-static {v3}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->access$2200(Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;->checkFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v2
.end method

.method public getLengths()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 861
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 862
    .local v0, "result":Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$Entry;->lengths:[J

    array-length v5, v4

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v5, :cond_0

    aget-wide v2, v4, v1

    .line 863
    .local v2, "size":J
    const/16 v6, 0x20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 862
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 865
    .end local v2    # "size":J
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
