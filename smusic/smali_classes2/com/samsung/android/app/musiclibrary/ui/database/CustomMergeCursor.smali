.class public Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;
.super Landroid/database/AbstractCursor;
.source "CustomMergeCursor.java"


# instance fields
.field private mCursor:Landroid/database/Cursor;

.field private final mCursors:[Landroid/database/Cursor;

.field private final mObserver:Landroid/database/DataSetObserver;


# direct methods
.method public constructor <init>([Landroid/database/Cursor;)V
    .locals 5
    .param p1, "cursors"    # [Landroid/database/Cursor;

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    .line 33
    new-instance v2, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;)V

    iput-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;->mObserver:Landroid/database/DataSetObserver;

    .line 49
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;->mCursors:[Landroid/database/Cursor;

    .line 50
    aget-object v2, p1, v1

    iput-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;->mCursor:Landroid/database/Cursor;

    .line 52
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;->mCursors:[Landroid/database/Cursor;

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 53
    .local v0, "mCursor1":Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 52
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 57
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v4}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    goto :goto_1

    .line 59
    .end local v0    # "mCursor1":Landroid/database/Cursor;
    :cond_1
    return-void
.end method

.method static synthetic access$002(Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;
    .param p1, "x1"    # I

    .prologue
    .line 32
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;->mPos:I

    return p1
.end method

.method static synthetic access$102(Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;
    .param p1, "x1"    # I

    .prologue
    .line 32
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;->mPos:I

    return p1
.end method


# virtual methods
.method public close()V
    .locals 4

    .prologue
    .line 161
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;->mCursors:[Landroid/database/Cursor;

    array-length v1, v2

    .line 162
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 163
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 162
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 166
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 168
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;->mCursors:[Landroid/database/Cursor;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    goto :goto_1

    .line 170
    :cond_2
    invoke-super {p0}, Landroid/database/AbstractCursor;->close()V

    .line 171
    return-void
.end method

.method public deactivate()V
    .locals 4

    .prologue
    .line 151
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;->mCursors:[Landroid/database/Cursor;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 152
    .local v0, "mCursor1":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 153
    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    .line 151
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 156
    .end local v0    # "mCursor1":Landroid/database/Cursor;
    :cond_1
    invoke-super {p0}, Landroid/database/AbstractCursor;->deactivate()V

    .line 157
    return-void
.end method

.method public getBlob(I)[B
    .locals 1
    .param p1, "column"    # I

    .prologue
    .line 136
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    .line 144
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method public getCount()I
    .locals 6

    .prologue
    .line 63
    const/4 v0, 0x0

    .line 64
    .local v0, "count":I
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;->mCursors:[Landroid/database/Cursor;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v1, v3, v2

    .line 65
    .local v1, "mCursor1":Landroid/database/Cursor;
    if-eqz v1, :cond_0

    .line 66
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v5

    add-int/2addr v0, v5

    .line 64
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 69
    .end local v1    # "mCursor1":Landroid/database/Cursor;
    :cond_1
    return v0
.end method

.method public getDouble(I)D
    .locals 2
    .param p1, "column"    # I

    .prologue
    .line 121
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFloat(I)F
    .locals 1
    .param p1, "column"    # I

    .prologue
    .line 116
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    return v0
.end method

.method public getInt(I)I
    .locals 1
    .param p1, "column"    # I

    .prologue
    .line 106
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getLong(I)J
    .locals 2
    .param p1, "column"    # I

    .prologue
    .line 111
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getShort(I)S
    .locals 1
    .param p1, "column"    # I

    .prologue
    .line 101
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .param p1, "column"    # I

    .prologue
    .line 96
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType(I)I
    .locals 1
    .param p1, "column"    # I

    .prologue
    .line 126
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getType(I)I

    move-result v0

    return v0
.end method

.method public isNull(I)Z
    .locals 1
    .param p1, "column"    # I

    .prologue
    .line 131
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    return v0
.end method

.method public onMove(II)Z
    .locals 7
    .param p1, "oldPosition"    # I
    .param p2, "newPosition"    # I

    .prologue
    const/4 v2, 0x0

    .line 75
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;->mCursor:Landroid/database/Cursor;

    .line 76
    const/4 v0, 0x0

    .line 77
    .local v0, "cursorStartPos":I
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;->mCursors:[Landroid/database/Cursor;

    array-length v5, v4

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v1, v4, v3

    .line 78
    .local v1, "mCursor1":Landroid/database/Cursor;
    if-nez v1, :cond_0

    .line 77
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 82
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v6

    add-int/2addr v6, v0

    if-ge p2, v6, :cond_3

    .line 83
    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;->mCursor:Landroid/database/Cursor;

    .line 91
    .end local v1    # "mCursor1":Landroid/database/Cursor;
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;->mCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;->mCursor:Landroid/database/Cursor;

    sub-int v4, p2, v0

    invoke-interface {v3, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2

    .line 87
    .restart local v1    # "mCursor1":Landroid/database/Cursor;
    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v6

    add-int/2addr v0, v6

    goto :goto_1
.end method

.method public registerContentObserver(Landroid/database/ContentObserver;)V
    .locals 4
    .param p1, "observer"    # Landroid/database/ContentObserver;

    .prologue
    .line 175
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;->mCursors:[Landroid/database/Cursor;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 176
    .local v0, "mCursor1":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 177
    invoke-interface {v0, p1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 175
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 180
    .end local v0    # "mCursor1":Landroid/database/Cursor;
    :cond_1
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 4
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 193
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;->mCursors:[Landroid/database/Cursor;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 194
    .local v0, "mCursor1":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 195
    invoke-interface {v0, p1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 193
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 198
    .end local v0    # "mCursor1":Landroid/database/Cursor;
    :cond_1
    return-void
.end method

.method public requery()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 212
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;->mCursors:[Landroid/database/Cursor;

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v0, v3, v2

    .line 214
    .local v0, "mCursor1":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 212
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 218
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    move-result v5

    if-nez v5, :cond_0

    .line 223
    .end local v0    # "mCursor1":Landroid/database/Cursor;
    :goto_1
    return v1

    :cond_2
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public unregisterContentObserver(Landroid/database/ContentObserver;)V
    .locals 4
    .param p1, "observer"    # Landroid/database/ContentObserver;

    .prologue
    .line 184
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;->mCursors:[Landroid/database/Cursor;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 185
    .local v0, "mCursor1":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 186
    invoke-interface {v0, p1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 184
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 189
    .end local v0    # "mCursor1":Landroid/database/Cursor;
    :cond_1
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 4
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 202
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;->mCursors:[Landroid/database/Cursor;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 203
    .local v0, "mCursor1":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 204
    invoke-interface {v0, p1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 202
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 207
    .end local v0    # "mCursor1":Landroid/database/Cursor;
    :cond_1
    return-void
.end method
