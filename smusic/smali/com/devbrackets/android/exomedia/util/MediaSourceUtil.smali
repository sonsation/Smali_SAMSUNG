.class public Lcom/devbrackets/android/exomedia/util/MediaSourceUtil;
.super Ljava/lang/Object;
.source "MediaSourceUtil.java"


# direct methods
.method public static getExtension(Landroid/net/Uri;)Ljava/lang/String;
    .locals 7
    .param p0, "uri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/16 v6, 0x2e

    const/4 v5, -0x1

    .line 27
    invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 29
    .local v0, "path":Ljava/lang/String;
    invoke-virtual {v0, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 30
    .local v1, "periodIndex":I
    if-ne v1, v5, :cond_0

    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    .line 32
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "path":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 33
    .restart local v0    # "path":Ljava/lang/String;
    invoke-virtual {v0, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 37
    :cond_0
    if-ne v1, v5, :cond_1

    .line 38
    const/4 v1, 0x0

    .line 39
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 42
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 43
    .local v2, "rawExtension":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getType(Landroid/net/Uri;)Lcom/devbrackets/android/exomedia/type/MediaSourceType;
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 17
    invoke-static {p0}, Lcom/devbrackets/android/exomedia/util/MediaSourceUtil;->getExtension(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 18
    .local v0, "extension":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 19
    invoke-static {v0}, Lcom/devbrackets/android/exomedia/type/MediaSourceType;->getByExtension(Ljava/lang/String;)Lcom/devbrackets/android/exomedia/type/MediaSourceType;

    move-result-object v1

    .line 22
    :goto_0
    return-object v1

    :cond_0
    invoke-static {p0}, Lcom/devbrackets/android/exomedia/type/MediaSourceType;->getByLooseComparison(Landroid/net/Uri;)Lcom/devbrackets/android/exomedia/type/MediaSourceType;

    move-result-object v1

    goto :goto_0
.end method
