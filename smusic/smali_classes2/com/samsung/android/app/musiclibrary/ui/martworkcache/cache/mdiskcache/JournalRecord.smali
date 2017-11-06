.class Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/JournalRecord;
.super Ljava/lang/Object;
.source "JournalRecord.java"


# static fields
.field private static final CLEAN:I = 0x0

.field static final DELETE:I = 0x3

.field static final DIRTY_ACCESS_ORDER:I = 0x1

.field static final DIRTY_ALL:I = 0x2

.field private static final STATE_NAME:[Ljava/lang/String;


# instance fields
.field volatile accessOrder:J

.field volatile bitmapSize:I

.field volatile fileSize:J

.field volatile filename:Ljava/lang/String;

.field private final pendingUpdatesCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field volatile state:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 53
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "CLEAN"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "DIRTY_ACCESS_ORDER"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "DIRTY_ALL"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "DELETE"

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/JournalRecord;->STATE_NAME:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/ContentValues;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 10
    .param p1, "rec"    # Landroid/content/ContentValues;
    .param p2, "pendingUpdatesCount"    # Ljava/util/concurrent/atomic/AtomicInteger;

    .prologue
    const/4 v8, 0x0

    .line 57
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/JournalRecord;->getAsString(Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "BitmapSize"

    .line 58
    invoke-static {p1, v0, v8}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/JournalRecord;->getAsIntegerOrDefault(Landroid/content/ContentValues;Ljava/lang/String;I)I

    move-result v3

    const-string v0, "FileSize"

    .line 59
    invoke-static {p1, v0, v8}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/JournalRecord;->getAsIntegerOrDefault(Landroid/content/ContentValues;Ljava/lang/String;I)I

    move-result v0

    int-to-long v4, v0

    const-string v0, "AccessOrder"

    .line 60
    invoke-static {p1, v0, v8}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/JournalRecord;->getAsIntegerOrDefault(Landroid/content/ContentValues;Ljava/lang/String;I)I

    move-result v0

    int-to-long v6, v0

    move-object v1, p0

    move-object v9, p2

    .line 57
    invoke-direct/range {v1 .. v9}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/JournalRecord;-><init>(Ljava/lang/String;IJJILjava/util/concurrent/atomic/AtomicInteger;)V

    .line 62
    return-void
.end method

.method constructor <init>(Ljava/lang/String;IJJILjava/util/concurrent/atomic/AtomicInteger;)V
    .locals 1
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "bitmapSize"    # I
    .param p3, "fileSize"    # J
    .param p5, "accessOrder"    # J
    .param p7, "state"    # I
    .param p8, "pendingUpdatesCount"    # Ljava/util/concurrent/atomic/AtomicInteger;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/JournalRecord;->filename:Ljava/lang/String;

    .line 67
    iput p2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/JournalRecord;->bitmapSize:I

    .line 68
    iput-wide p3, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/JournalRecord;->fileSize:J

    .line 69
    iput-wide p5, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/JournalRecord;->accessOrder:J

    .line 70
    iput-object p8, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/JournalRecord;->pendingUpdatesCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 71
    invoke-virtual {p0, p7}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/JournalRecord;->updateState(I)V

    .line 72
    return-void
.end method

.method private static getAsIntegerOrDefault(Landroid/content/ContentValues;Ljava/lang/String;I)I
    .locals 1
    .param p0, "rec"    # Landroid/content/ContentValues;
    .param p1, "bitmapSize"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 141
    invoke-virtual {p0, p1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 142
    .local v0, "result":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 145
    .end local p2    # "defaultValue":I
    :goto_0
    return p2

    .restart local p2    # "defaultValue":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_0
.end method

.method private static getAsString(Landroid/content/ContentValues;)Ljava/lang/String;
    .locals 2
    .param p0, "rec"    # Landroid/content/ContentValues;

    .prologue
    .line 131
    const-string v1, "Filename"

    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 134
    const-string v0, ""

    .line 136
    .end local v0    # "value":Ljava/lang/String;
    :cond_0
    return-object v0
.end method


# virtual methods
.method public delete()V
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/JournalRecord;->updateState(I)V

    .line 115
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 11
    if-ne p0, p1, :cond_1

    .line 21
    :cond_0
    :goto_0
    return v1

    .line 14
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 15
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 18
    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/JournalRecord;

    .line 20
    .local v0, "that":Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/JournalRecord;
    iget-wide v4, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/JournalRecord;->accessOrder:J

    iget-wide v6, v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/JournalRecord;->accessOrder:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_4

    iget v3, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/JournalRecord;->bitmapSize:I

    iget v4, v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/JournalRecord;->bitmapSize:I

    if-ne v3, v4, :cond_4

    iget-wide v4, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/JournalRecord;->fileSize:J

    iget-wide v6, v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/JournalRecord;->fileSize:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/JournalRecord;->filename:Ljava/lang/String;

    iget-object v4, v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/JournalRecord;->filename:Ljava/lang/String;

    .line 21
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method getBindParams(Ljava/lang/String;)[Ljava/lang/String;
    .locals 8
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 89
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/JournalRecord;->state:I

    packed-switch v0, :pswitch_data_0

    .line 98
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/JournalRecord;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :pswitch_0
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/JournalRecord;->accessOrder:J

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/JournalRecord;->bitmapSize:I

    invoke-static {v0, v1, p1, v2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/SQLUtil;->updateAccessOrderBindArgs(JLjava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 95
    :goto_0
    return-object v0

    .line 93
    :pswitch_1
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/JournalRecord;->filename:Ljava/lang/String;

    iget v3, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/JournalRecord;->bitmapSize:I

    iget-wide v4, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/JournalRecord;->fileSize:J

    iget-wide v6, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/JournalRecord;->accessOrder:J

    move-object v2, p1

    invoke-static/range {v1 .. v7}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/SQLUtil;->putBindArgs(Ljava/lang/String;Ljava/lang/String;IJJ)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 95
    :pswitch_2
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/JournalRecord;->bitmapSize:I

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/SQLUtil;->deleteBindArgs(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 89
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public hashCode()I
    .locals 7

    .prologue
    const/16 v6, 0x20

    .line 26
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/JournalRecord;->filename:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 27
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/JournalRecord;->accessOrder:J

    iget-wide v4, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/JournalRecord;->accessOrder:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int v0, v1, v2

    .line 28
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/JournalRecord;->bitmapSize:I

    add-int v0, v1, v2

    .line 29
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/JournalRecord;->fileSize:J

    iget-wide v4, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/JournalRecord;->fileSize:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int v0, v1, v2

    .line 30
    return v0
.end method

.method setClean()V
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/JournalRecord;->state:I

    .line 111
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x27

    .line 120
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/JournalRecord;->state:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/JournalRecord;->state:I

    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/JournalRecord;->STATE_NAME:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 121
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/JournalRecord;->STATE_NAME:[Ljava/lang/String;

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/JournalRecord;->state:I

    aget-object v0, v1, v2

    .line 125
    .local v0, "stateName":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JournalRecord{filename=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/JournalRecord;->filename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", accessOrder=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/JournalRecord;->accessOrder:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", bitmapSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/JournalRecord;->bitmapSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", fileSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/JournalRecord;->fileSize:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 123
    .end local v0    # "stateName":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UnknownState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/JournalRecord;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "stateName":Ljava/lang/String;
    goto :goto_0
.end method

.method public update(J)V
    .locals 1
    .param p1, "accessOrderSequence"    # J

    .prologue
    .line 84
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/JournalRecord;->updateState(I)V

    .line 85
    iput-wide p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/JournalRecord;->accessOrder:J

    .line 86
    return-void
.end method

.method public update(Ljava/lang/String;IJJ)V
    .locals 1
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "bitmapSize"    # I
    .param p3, "fileSize"    # J
    .param p5, "accessOrderSequence"    # J

    .prologue
    .line 75
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/JournalRecord;->filename:Ljava/lang/String;

    .line 76
    iput p2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/JournalRecord;->bitmapSize:I

    .line 77
    iput-wide p3, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/JournalRecord;->fileSize:J

    .line 78
    iput-wide p5, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/JournalRecord;->accessOrder:J

    .line 79
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/JournalRecord;->setClean()V

    .line 80
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/JournalRecord;->updateState(I)V

    .line 81
    return-void
.end method

.method updateState(I)V
    .locals 1
    .param p1, "newState"    # I

    .prologue
    .line 103
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/JournalRecord;->state:I

    if-le p1, v0, :cond_0

    .line 104
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/JournalRecord;->state:I

    .line 105
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/JournalRecord;->pendingUpdatesCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 107
    :cond_0
    return-void
.end method
