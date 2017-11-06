.class public Lcom/samsung/android/support/sesl/component/widget/SeslCursorIndexer;
.super Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;
.source "SeslCursorIndexer.java"


# static fields
.field public static final EXTRA_INDEX_COUNTS:Ljava/lang/String; = "indexscroll_index_counts"

.field public static final EXTRA_INDEX_TITLES:Ljava/lang/String; = "indexscroll_index_titles"


# instance fields
.field private final DEBUG:Z

.field private final TAG:Ljava/lang/String;

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
    .line 71
    invoke-direct {p0, p3}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;-><init>(Ljava/lang/CharSequence;)V

    .line 29
    const-string v1, "SeslCursorIndexer"

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCursorIndexer;->TAG:Ljava/lang/String;

    .line 31
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCursorIndexer;->DEBUG:Z

    .line 72
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCursorIndexer;->mCursor:Landroid/database/Cursor;

    .line 73
    iput p2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCursorIndexer;->mColumnIndex:I

    .line 75
    const-string v1, "SeslCursorIndexer"

    const-string v2, "SeslCursorIndexer constructor"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    if-gez p2, :cond_0

    .line 78
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "here"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 79
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 80
    const-string v1, "SeslCursorIndexer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SeslCursorIndexer() called with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 83
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
    .line 123
    invoke-direct {p0, p3, p4, p5}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;-><init>(Ljava/lang/CharSequence;II)V

    .line 29
    const-string v1, "SeslCursorIndexer"

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCursorIndexer;->TAG:Ljava/lang/String;

    .line 31
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCursorIndexer;->DEBUG:Z

    .line 124
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCursorIndexer;->mCursor:Landroid/database/Cursor;

    .line 125
    iput p2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCursorIndexer;->mColumnIndex:I

    .line 127
    const-string v1, "SeslCursorIndexer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SeslCursorIndexer constructor, profileCount:"

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

    .line 129
    if-gez p2, :cond_0

    .line 130
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "here"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 131
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 132
    const-string v1, "SeslCursorIndexer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SeslCursorIndexer() called with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 135
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
    .line 95
    invoke-direct {p0, p3, p4}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;-><init>([Ljava/lang/String;I)V

    .line 29
    const-string v1, "SeslCursorIndexer"

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCursorIndexer;->TAG:Ljava/lang/String;

    .line 31
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCursorIndexer;->DEBUG:Z

    .line 96
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCursorIndexer;->mCursor:Landroid/database/Cursor;

    .line 97
    iput p2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCursorIndexer;->mColumnIndex:I

    .line 99
    const-string v1, "SeslCursorIndexer"

    const-string v2, "SeslCursorIndexer constructor"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    if-gez p2, :cond_0

    .line 102
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "here"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 103
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 104
    const-string v1, "SeslCursorIndexer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SeslCursorIndexer() called with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 107
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
    .line 152
    invoke-direct {p0, p3, p4, p5, p6}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsIndexer;-><init>([Ljava/lang/String;III)V

    .line 29
    const-string v1, "SeslCursorIndexer"

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCursorIndexer;->TAG:Ljava/lang/String;

    .line 31
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCursorIndexer;->DEBUG:Z

    .line 153
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCursorIndexer;->mCursor:Landroid/database/Cursor;

    .line 154
    iput p2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCursorIndexer;->mColumnIndex:I

    .line 156
    const-string v1, "SeslCursorIndexer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SeslCursorIndexer constructor, profileCount:"

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

    .line 158
    if-gez p2, :cond_0

    .line 159
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "here"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 160
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 161
    const-string v1, "SeslCursorIndexer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SeslCursorIndexer() called with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 164
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_0
    return-void
.end method


# virtual methods
.method protected getBundle()Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 213
    const-string v0, "SeslCursorIndexer"

    const-string v1, "SemCursorIndexer getBundle : Bundle was used by Indexer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCursorIndexer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected getItemAt(I)Ljava/lang/String;
    .locals 5
    .param p1, "pos"    # I

    .prologue
    const/4 v1, 0x0

    .line 178
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCursorIndexer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 179
    const-string v2, "SeslCursorIndexer"

    const-string v3, "SeslCursorIndexer getItemCount : mCursor is closed."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :goto_0
    return-object v1

    .line 181
    :cond_0
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCursorIndexer;->mColumnIndex:I

    if-gez v2, :cond_1

    .line 183
    const-string v2, "SeslCursorIndexer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getItemAt() mColumnIndex : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCursorIndexer;->mColumnIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCursorIndexer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 189
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCursorIndexer;->mCursor:Landroid/database/Cursor;

    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCursorIndexer;->mColumnIndex:I

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 190
    :catch_0
    move-exception v0

    .line 191
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected getItemCount()I
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCursorIndexer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    const-string v0, "SeslCursorIndexer"

    const-string v1, "SeslCursorIndexer getItemCount : mCursor is closed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    const/4 v0, 0x0

    .line 205
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCursorIndexer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method protected isDataToBeIndexedAvailable()Z
    .locals 1

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslCursorIndexer;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCursorIndexer;->mCursor:Landroid/database/Cursor;

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
    .line 222
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCursorIndexer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCursorIndexer;->mSavedCursorPos:I

    .line 224
    const-string v0, "SeslCursorIndexer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SeslCursorIndexer.onBeginTransaction() : Current cursor pos to save is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCursorIndexer;->mSavedCursorPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    return-void
.end method

.method protected onEndTransaction()V
    .locals 3

    .prologue
    .line 234
    const-string v0, "SeslCursorIndexer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SeslCursorIndexer.onEndTransaction() : Saved cursor pos to restore  is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCursorIndexer;->mSavedCursorPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCursorIndexer;->mCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCursorIndexer;->mSavedCursorPos:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 237
    return-void
.end method

.method public setFavoriteItemsCount(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 253
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslCursorIndexer;->setFavoriteItem(I)V

    .line 254
    return-void
.end method

.method public setMiscItemsCount(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 262
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslCursorIndexer;->setDigitItem(I)V

    .line 263
    return-void
.end method

.method public setProfileItemsCount(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 244
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslCursorIndexer;->setProfileItem(I)V

    .line 245
    return-void
.end method
