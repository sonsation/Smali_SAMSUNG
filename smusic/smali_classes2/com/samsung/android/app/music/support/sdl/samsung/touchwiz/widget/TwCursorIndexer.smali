.class public Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwCursorIndexer;
.super Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;
.source "TwCursorIndexer.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final debug:Z

.field protected mColumnIndex:I

.field protected mCursor:Landroid/database/Cursor;

.field protected mSavedCursorPos:I


# direct methods
.method public constructor <init>(Landroid/database/Cursor;ILjava/lang/CharSequence;)V
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "sortedColumnIndex"    # I
    .param p3, "indexCharacters"    # Ljava/lang/CharSequence;

    .prologue
    .line 82
    invoke-direct {p0, p3}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;-><init>(Ljava/lang/CharSequence;)V

    .line 46
    const-string v1, "TwCursorIndexer"

    iput-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwCursorIndexer;->TAG:Ljava/lang/String;

    .line 48
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwCursorIndexer;->debug:Z

    .line 83
    iput-object p1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwCursorIndexer;->mCursor:Landroid/database/Cursor;

    .line 84
    iput p2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwCursorIndexer;->mColumnIndex:I

    .line 86
    const-string v1, "TwCursorIndexer"

    const-string v2, "TwCursorIndexer constructor"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    if-gez p2, :cond_0

    .line 89
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "here"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 90
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 91
    const-string v1, "TwCursorIndexer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TwCursorIndexer() called with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 93
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;ILjava/lang/CharSequence;II)V
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "sortedColumnIndex"    # I
    .param p3, "indexCharacters"    # Ljava/lang/CharSequence;
    .param p4, "profileCount"    # I
    .param p5, "favoriteCount"    # I

    .prologue
    .line 138
    invoke-direct {p0, p3, p4, p5}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;-><init>(Ljava/lang/CharSequence;II)V

    .line 46
    const-string v1, "TwCursorIndexer"

    iput-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwCursorIndexer;->TAG:Ljava/lang/String;

    .line 48
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwCursorIndexer;->debug:Z

    .line 139
    iput-object p1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwCursorIndexer;->mCursor:Landroid/database/Cursor;

    .line 140
    iput p2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwCursorIndexer;->mColumnIndex:I

    .line 142
    const-string v1, "TwCursorIndexer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TwCursorIndexer constructor, profileCount:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", favoriteCount:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    if-gez p2, :cond_0

    .line 146
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "here"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 147
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 148
    const-string v1, "TwCursorIndexer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TwCursorIndexer() called with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 150
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;I[Ljava/lang/String;I)V
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "sortedColumnIndex"    # I
    .param p3, "indexCharacters"    # [Ljava/lang/String;
    .param p4, "aLangIndex"    # I

    .prologue
    .line 108
    invoke-direct {p0, p3, p4}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;-><init>([Ljava/lang/String;I)V

    .line 46
    const-string v1, "TwCursorIndexer"

    iput-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwCursorIndexer;->TAG:Ljava/lang/String;

    .line 48
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwCursorIndexer;->debug:Z

    .line 109
    iput-object p1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwCursorIndexer;->mCursor:Landroid/database/Cursor;

    .line 110
    iput p2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwCursorIndexer;->mColumnIndex:I

    .line 112
    const-string v1, "TwCursorIndexer"

    const-string v2, "TwCursorIndexer constructor"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    if-gez p2, :cond_0

    .line 115
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "here"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 116
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 117
    const-string v1, "TwCursorIndexer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TwCursorIndexer() called with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 119
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;I[Ljava/lang/String;III)V
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "sortedColumnIndex"    # I
    .param p3, "indexCharacters"    # [Ljava/lang/String;
    .param p4, "aLangIndex"    # I
    .param p5, "profileCount"    # I
    .param p6, "favoriteCount"    # I

    .prologue
    .line 170
    invoke-direct {p0, p3, p4, p5, p6}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbstractIndexer;-><init>([Ljava/lang/String;III)V

    .line 46
    const-string v1, "TwCursorIndexer"

    iput-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwCursorIndexer;->TAG:Ljava/lang/String;

    .line 48
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwCursorIndexer;->debug:Z

    .line 171
    iput-object p1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwCursorIndexer;->mCursor:Landroid/database/Cursor;

    .line 172
    iput p2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwCursorIndexer;->mColumnIndex:I

    .line 174
    const-string v1, "TwCursorIndexer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TwCursorIndexer constructor, profileCount:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", favoriteCount:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    if-gez p2, :cond_0

    .line 178
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "here"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 179
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 180
    const-string v1, "TwCursorIndexer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TwCursorIndexer() called with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 182
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_0
    return-void
.end method


# virtual methods
.method protected getItemAt(I)Ljava/lang/String;
    .locals 5
    .param p1, "pos"    # I

    .prologue
    const/4 v1, 0x0

    .line 197
    iget-object v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwCursorIndexer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 198
    const-string v2, "TwCursorIndexer"

    const-string v3, "TwCursorIndexer getItemCount : mCursor is closed  "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :goto_0
    return-object v1

    .line 200
    :cond_0
    iget v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwCursorIndexer;->mColumnIndex:I

    if-gez v2, :cond_1

    .line 202
    const-string v2, "TwCursorIndexer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getItemAt() mColumnIndex : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwCursorIndexer;->mColumnIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwCursorIndexer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 207
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwCursorIndexer;->mCursor:Landroid/database/Cursor;

    iget v3, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwCursorIndexer;->mColumnIndex:I

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 208
    :catch_0
    move-exception v0

    .line 210
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected getItemCount()I
    .locals 2

    .prologue
    .line 220
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwCursorIndexer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    const-string v0, "TwCursorIndexer"

    const-string v1, "TwCursorIndexer getItemCount : mCursor is closed  "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    const/4 v0, 0x0

    .line 224
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwCursorIndexer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method protected isDataToBeIndexedAvailable()Z
    .locals 1

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwCursorIndexer;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwCursorIndexer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onBeginTransaction()V
    .locals 3

    .prologue
    .line 232
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwCursorIndexer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwCursorIndexer;->mSavedCursorPos:I

    .line 234
    const-string v0, "TwCursorIndexer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TwCursorIndexer.onBeginTransaction() : Current cursor pos to save is :  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwCursorIndexer;->mSavedCursorPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    return-void
.end method

.method protected onEndTransaction()V
    .locals 3

    .prologue
    .line 245
    const-string v0, "TwCursorIndexer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TwCursorIndexer.onEndTransaction() : Saved cursor pos to restore  is :  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwCursorIndexer;->mSavedCursorPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwCursorIndexer;->mCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwCursorIndexer;->mSavedCursorPos:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 249
    return-void
.end method

.method public setDigitItemCount(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 257
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwCursorIndexer;->setDigitItem(I)V

    .line 258
    return-void
.end method
