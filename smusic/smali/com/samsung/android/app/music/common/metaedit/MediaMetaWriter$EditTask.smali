.class Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter$EditTask;
.super Landroid/os/AsyncTask;
.source "MediaMetaWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EditTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mEditArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPath:Ljava/lang/String;

.field private final mWriterReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter;Ljava/lang/String;Landroid/util/SparseArray;)V
    .locals 1
    .param p1, "writer"    # Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter;
    .param p2, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter;",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 135
    .local p3, "editArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 136
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter$EditTask;->mWriterReference:Ljava/lang/ref/WeakReference;

    .line 137
    iput-object p2, p0, Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter$EditTask;->mPath:Ljava/lang/String;

    .line 138
    iput-object p3, p0, Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter$EditTask;->mEditArray:Landroid/util/SparseArray;

    .line 139
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 126
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter$EditTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Void;
    .locals 11
    .param p1, "params"    # [Ljava/lang/Integer;

    .prologue
    const/4 v10, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 143
    if-eqz p1, :cond_0

    array-length v7, p1

    if-eq v7, v10, :cond_1

    .line 144
    :cond_0
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Parameter cannot be null. only be one parameter"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 147
    :cond_1
    aget-object v7, p1, v8

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 149
    .local v4, "resultCode":I
    if-eq v4, v10, :cond_2

    const/4 v7, 0x3

    if-ne v4, v7, :cond_4

    .line 151
    :cond_2
    iget-object v7, p0, Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter$EditTask;->mEditArray:Landroid/util/SparseArray;

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 152
    .local v3, "metaType":I
    iget-object v7, p0, Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter$EditTask;->mEditArray:Landroid/util/SparseArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 154
    .local v6, "value":Ljava/lang/String;
    :try_start_0
    new-instance v2, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;

    iget-object v7, p0, Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter$EditTask;->mPath:Ljava/lang/String;

    invoke-direct {v2, v7, v3, v6}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;-><init>(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    .local v2, "metaEditor":Lcom/samsung/android/app/music/common/metaedit/IMetaEditor;
    :goto_0
    iget-object v7, p0, Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter$EditTask;->mEditArray:Landroid/util/SparseArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 166
    .end local v3    # "metaType":I
    .end local v6    # "value":Ljava/lang/String;
    :goto_1
    if-nez v2, :cond_5

    .line 180
    :cond_3
    :goto_2
    return-object v9

    .line 155
    .end local v2    # "metaEditor":Lcom/samsung/android/app/music/common/metaedit/IMetaEditor;
    .restart local v3    # "metaType":I
    .restart local v6    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 156
    .local v0, "e":Ljava/io/IOException;
    const/4 v2, 0x0

    .restart local v2    # "metaEditor":Lcom/samsung/android/app/music/common/metaedit/IMetaEditor;
    goto :goto_0

    .line 161
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "metaEditor":Lcom/samsung/android/app/music/common/metaedit/IMetaEditor;
    .end local v3    # "metaType":I
    .end local v6    # "value":Ljava/lang/String;
    :cond_4
    :try_start_1
    new-instance v2, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;

    iget-object v7, p0, Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter$EditTask;->mPath:Ljava/lang/String;

    invoke-direct {v2, v7}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .restart local v2    # "metaEditor":Lcom/samsung/android/app/music/common/metaedit/IMetaEditor;
    goto :goto_1

    .line 162
    .end local v2    # "metaEditor":Lcom/samsung/android/app/music/common/metaedit/IMetaEditor;
    :catch_1
    move-exception v0

    .line 163
    .restart local v0    # "e":Ljava/io/IOException;
    const/4 v2, 0x0

    .restart local v2    # "metaEditor":Lcom/samsung/android/app/music/common/metaedit/IMetaEditor;
    goto :goto_1

    .line 171
    .end local v0    # "e":Ljava/io/IOException;
    :cond_5
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    :try_start_2
    iget-object v7, p0, Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter$EditTask;->mEditArray:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v1, v7, :cond_3

    .line 172
    iget-object v7, p0, Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter$EditTask;->mEditArray:Landroid/util/SparseArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 173
    .restart local v3    # "metaType":I
    iget-object v7, p0, Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter$EditTask;->mEditArray:Landroid/util/SparseArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 174
    .local v5, "string":Ljava/lang/String;
    invoke-interface {v2, v3, v5}, Lcom/samsung/android/app/music/common/metaedit/IMetaEditor;->putString(ILjava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 171
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 176
    .end local v3    # "metaType":I
    .end local v5    # "string":Ljava/lang/String;
    :catch_2
    move-exception v0

    .line 177
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v7, "SMUSIC-MediaMetaWriter"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 126
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter$EditTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 7
    .param p1, "aVoid"    # Ljava/lang/Void;

    .prologue
    .line 185
    iget-object v3, p0, Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter$EditTask;->mWriterReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter;

    .line 186
    .local v1, "writer":Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter;
    if-nez v1, :cond_0

    .line 200
    :goto_0
    return-void

    .line 190
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter$EditTask;->mEditArray:Landroid/util/SparseArray;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 191
    .local v0, "genre":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v1}, Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter;->access$400(Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 192
    :cond_1
    invoke-static {v1}, Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter;->access$000(Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v1}, Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter;->access$500(Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter;)J

    move-result-wide v4

    invoke-static {v1, v3, v4, v5}, Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter;->access$600(Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter;Landroid/content/Context;J)V

    .line 194
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter$EditTask;->mEditArray:Landroid/util/SparseArray;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 195
    .local v2, "year":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 196
    invoke-static {v1}, Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter;->access$000(Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v1}, Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter;->access$500(Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter;)J

    move-result-wide v4

    invoke-static {v1, v3, v4, v5}, Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter;->access$700(Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter;Landroid/content/Context;J)V

    .line 198
    :cond_3
    invoke-static {v1}, Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter;->access$000(Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter;)Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v1}, Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter;->access$800(Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    .line 199
    invoke-static {v1}, Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter;->access$900(Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter;)Landroid/media/MediaScannerConnection$OnScanCompletedListener;

    move-result-object v6

    .line 198
    invoke-static {v3, v4, v5, v6}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    goto :goto_0
.end method
