.class public Lcom/samsung/android/app/musiclibrary/ui/list/query/cardview/FolderCardViewQueryArgs;
.super Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
.source "FolderCardViewQueryArgs.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "limit"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;-><init>()V

    .line 13
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v1, v2, :cond_1

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT bucket_id,  CASE WHEN bucket_id=? THEN ?      WHEN bucket_id=? THEN ?      ELSE bucket_display_name END AS bucket_display_name  ,(SELECT album_id FROM audio_meta WHERE audio_meta.bucket_id = audio.bucket_id     ORDER BY audio_meta._display_name COLLATE LOCALIZED LIMIT 1) AS album_id  FROM audio  WHERE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/list/query/cardview/FolderCardViewQueryArgs;->DEFAULT_SELECTION:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " GROUP BY "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "bucket_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ORDER BY date_added DESC"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " LIMIT "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 21
    .local v0, "rawQuery":Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->getRawQueryAppendedUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/query/cardview/FolderCardViewQueryArgs;->uri:Landroid/net/Uri;

    .line 34
    .end local v0    # "rawQuery":Ljava/lang/String;
    :goto_1
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/query/FolderQueryArgs;->getSelectionArgs(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/query/cardview/FolderCardViewQueryArgs;->selectionArgs:[Ljava/lang/String;

    .line 35
    return-void

    .line 14
    :cond_0
    const-string v1, ""

    goto :goto_0

    .line 23
    :cond_1
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Folders;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p2}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->getLimitAppendedUri(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/query/cardview/FolderCardViewQueryArgs;->uri:Landroid/net/Uri;

    .line 25
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "bucket_id"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, " CASE WHEN bucket_id=? THEN ?      WHEN bucket_id=? THEN ?      ELSE bucket_display_name END AS bucket_display_name"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "album_id"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "dummy"

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/query/cardview/FolderCardViewQueryArgs;->projection:[Ljava/lang/String;

    .line 32
    const-string v1, "max_date_added DESC"

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/query/cardview/FolderCardViewQueryArgs;->orderBy:Ljava/lang/String;

    goto :goto_1
.end method
