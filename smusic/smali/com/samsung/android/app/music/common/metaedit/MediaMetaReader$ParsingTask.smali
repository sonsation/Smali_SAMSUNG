.class Lcom/samsung/android/app/music/common/metaedit/MediaMetaReader$ParsingTask;
.super Landroid/os/AsyncTask;
.source "MediaMetaReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/metaedit/MediaMetaReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ParsingTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final EXTENSION_MP3:Ljava/lang/String; = ".mp3"


# instance fields
.field private final mReaderReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/samsung/android/app/music/common/metaedit/MediaMetaReader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/music/common/metaedit/MediaMetaReader;)V
    .locals 1
    .param p1, "reader"    # Lcom/samsung/android/app/music/common/metaedit/MediaMetaReader;

    .prologue
    .line 204
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 205
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/metaedit/MediaMetaReader$ParsingTask;->mReaderReference:Ljava/lang/ref/WeakReference;

    .line 206
    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/common/metaedit/MediaMetaReader;Lcom/samsung/android/app/music/common/metaedit/MediaMetaReader$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/music/common/metaedit/MediaMetaReader;
    .param p2, "x1"    # Lcom/samsung/android/app/music/common/metaedit/MediaMetaReader$1;

    .prologue
    .line 199
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/metaedit/MediaMetaReader$ParsingTask;-><init>(Lcom/samsung/android/app/music/common/metaedit/MediaMetaReader;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Integer;
    .locals 10
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 210
    if-eqz p1, :cond_0

    array-length v7, p1

    const/4 v8, 0x1

    if-eq v7, v8, :cond_1

    .line 211
    :cond_0
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Parameter cannot be null. only be one parameter"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 214
    :cond_1
    const/4 v6, -0x1

    .line 215
    .local v6, "resultCode":I
    aget-object v4, p1, v9

    .line 216
    .local v4, "path":Ljava/lang/String;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const-string v8, ".mp3"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 217
    :cond_2
    const/4 v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 255
    :goto_0
    return-object v7

    .line 220
    :cond_3
    const/4 v0, 0x0

    .line 221
    .local v0, "continueParsing":Z
    const/4 v2, 0x0

    .line 224
    .local v2, "editor":Lcom/samsung/android/app/music/common/metaedit/IMetaEditor;
    :try_start_0
    new-instance v3, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;

    const/4 v7, 0x0

    aget-object v7, p1, v7

    invoke-direct {v3, v7}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2MetaEditor;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/samsung/android/app/music/common/metaedit/NotSupportedVersionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/samsung/android/app/music/common/metaedit/NoExistTagInformationException; {:try_start_0 .. :try_end_0} :catch_2

    .line 225
    .end local v2    # "editor":Lcom/samsung/android/app/music/common/metaedit/IMetaEditor;
    .local v3, "editor":Lcom/samsung/android/app/music/common/metaedit/IMetaEditor;
    const/4 v6, 0x2

    .line 236
    :goto_1
    if-nez v3, :cond_5

    if-eqz v0, :cond_5

    .line 239
    :try_start_1
    new-instance v2, Lcom/samsung/android/app/music/common/metaedit/id3v1/ID3v1MetaEditor;

    const/4 v7, 0x0

    aget-object v7, p1, v7

    invoke-direct {v2, v7}, Lcom/samsung/android/app/music/common/metaedit/id3v1/ID3v1MetaEditor;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/samsung/android/app/music/common/metaedit/NoExistTagInformationException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 240
    .end local v3    # "editor":Lcom/samsung/android/app/music/common/metaedit/IMetaEditor;
    .restart local v2    # "editor":Lcom/samsung/android/app/music/common/metaedit/IMetaEditor;
    const/4 v6, 0x1

    .line 250
    :goto_2
    iget-object v7, p0, Lcom/samsung/android/app/music/common/metaedit/MediaMetaReader$ParsingTask;->mReaderReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/app/music/common/metaedit/MediaMetaReader;

    .line 251
    .local v5, "reader":Lcom/samsung/android/app/music/common/metaedit/MediaMetaReader;
    if-eqz v5, :cond_4

    .line 252
    invoke-static {v5, v2}, Lcom/samsung/android/app/music/common/metaedit/MediaMetaReader;->access$102(Lcom/samsung/android/app/music/common/metaedit/MediaMetaReader;Lcom/samsung/android/app/music/common/metaedit/IMetaEditor;)Lcom/samsung/android/app/music/common/metaedit/IMetaEditor;

    .line 253
    invoke-static {v5, v6}, Lcom/samsung/android/app/music/common/metaedit/MediaMetaReader;->access$202(Lcom/samsung/android/app/music/common/metaedit/MediaMetaReader;I)I

    .line 255
    :cond_4
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_0

    .line 226
    .end local v5    # "reader":Lcom/samsung/android/app/music/common/metaedit/MediaMetaReader;
    :catch_0
    move-exception v1

    .line 227
    .local v1, "e":Lcom/samsung/android/app/music/common/metaedit/NotSupportedVersionException;
    const-string v7, "SMUSIC-MediaMetaReader"

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/metaedit/NotSupportedVersionException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    const/4 v6, -0x1

    move-object v3, v2

    .line 235
    .end local v2    # "editor":Lcom/samsung/android/app/music/common/metaedit/IMetaEditor;
    .restart local v3    # "editor":Lcom/samsung/android/app/music/common/metaedit/IMetaEditor;
    goto :goto_1

    .line 229
    .end local v1    # "e":Lcom/samsung/android/app/music/common/metaedit/NotSupportedVersionException;
    .end local v3    # "editor":Lcom/samsung/android/app/music/common/metaedit/IMetaEditor;
    .restart local v2    # "editor":Lcom/samsung/android/app/music/common/metaedit/IMetaEditor;
    :catch_1
    move-exception v1

    .line 230
    .local v1, "e":Ljava/io/IOException;
    const-string v7, "SMUSIC-MediaMetaReader"

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    const/4 v6, -0x2

    move-object v3, v2

    .line 235
    .end local v2    # "editor":Lcom/samsung/android/app/music/common/metaedit/IMetaEditor;
    .restart local v3    # "editor":Lcom/samsung/android/app/music/common/metaedit/IMetaEditor;
    goto :goto_1

    .line 232
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "editor":Lcom/samsung/android/app/music/common/metaedit/IMetaEditor;
    .restart local v2    # "editor":Lcom/samsung/android/app/music/common/metaedit/IMetaEditor;
    :catch_2
    move-exception v1

    .line 233
    .local v1, "e":Lcom/samsung/android/app/music/common/metaedit/NoExistTagInformationException;
    const-string v7, "SMUSIC-MediaMetaReader"

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/metaedit/NoExistTagInformationException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    const/4 v0, 0x1

    move-object v3, v2

    .end local v2    # "editor":Lcom/samsung/android/app/music/common/metaedit/IMetaEditor;
    .restart local v3    # "editor":Lcom/samsung/android/app/music/common/metaedit/IMetaEditor;
    goto :goto_1

    .line 241
    .end local v1    # "e":Lcom/samsung/android/app/music/common/metaedit/NoExistTagInformationException;
    :catch_3
    move-exception v1

    .line 242
    .restart local v1    # "e":Lcom/samsung/android/app/music/common/metaedit/NoExistTagInformationException;
    const-string v7, "SMUSIC-MediaMetaReader"

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/metaedit/NoExistTagInformationException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    const/4 v6, 0x3

    move-object v2, v3

    .line 247
    .end local v3    # "editor":Lcom/samsung/android/app/music/common/metaedit/IMetaEditor;
    .restart local v2    # "editor":Lcom/samsung/android/app/music/common/metaedit/IMetaEditor;
    goto :goto_2

    .line 244
    .end local v1    # "e":Lcom/samsung/android/app/music/common/metaedit/NoExistTagInformationException;
    .end local v2    # "editor":Lcom/samsung/android/app/music/common/metaedit/IMetaEditor;
    .restart local v3    # "editor":Lcom/samsung/android/app/music/common/metaedit/IMetaEditor;
    :catch_4
    move-exception v1

    .line 245
    .local v1, "e":Ljava/io/IOException;
    const-string v7, "SMUSIC-MediaMetaReader"

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    const/4 v6, -0x2

    move-object v2, v3

    .end local v3    # "editor":Lcom/samsung/android/app/music/common/metaedit/IMetaEditor;
    .restart local v2    # "editor":Lcom/samsung/android/app/music/common/metaedit/IMetaEditor;
    goto :goto_2

    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "editor":Lcom/samsung/android/app/music/common/metaedit/IMetaEditor;
    .restart local v3    # "editor":Lcom/samsung/android/app/music/common/metaedit/IMetaEditor;
    :cond_5
    move-object v2, v3

    .end local v3    # "editor":Lcom/samsung/android/app/music/common/metaedit/IMetaEditor;
    .restart local v2    # "editor":Lcom/samsung/android/app/music/common/metaedit/IMetaEditor;
    goto :goto_2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 199
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/common/metaedit/MediaMetaReader$ParsingTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 3
    .param p1, "resultCode"    # Ljava/lang/Integer;

    .prologue
    .line 260
    iget-object v1, p0, Lcom/samsung/android/app/music/common/metaedit/MediaMetaReader$ParsingTask;->mReaderReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/metaedit/MediaMetaReader;

    .line 261
    .local v0, "reader":Lcom/samsung/android/app/music/common/metaedit/MediaMetaReader;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/samsung/android/app/music/common/metaedit/MediaMetaReader;->access$300(Lcom/samsung/android/app/music/common/metaedit/MediaMetaReader;)Lcom/samsung/android/app/music/common/metaedit/MediaMetaReader$OnCompletedParsingListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 262
    invoke-static {v0}, Lcom/samsung/android/app/music/common/metaedit/MediaMetaReader;->access$300(Lcom/samsung/android/app/music/common/metaedit/MediaMetaReader;)Lcom/samsung/android/app/music/common/metaedit/MediaMetaReader$OnCompletedParsingListener;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/samsung/android/app/music/common/metaedit/MediaMetaReader$OnCompletedParsingListener;->onCompletedParsing(I)V

    .line 264
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 199
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/common/metaedit/MediaMetaReader$ParsingTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
