.class public Lcom/samsung/android/app/musiclibrary/ui/list/query/TrackQueryArgs;
.super Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
.source "TrackQueryArgs.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "keyWord"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 8
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;-><init>()V

    .line 9
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/query/TrackQueryArgs;->uri:Landroid/net/Uri;

    .line 10
    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/query/TrackQueryArgs;->projection:[Ljava/lang/String;

    .line 11
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/TrackQueryArgs;->DEFAULT_SELECTION:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/query/TrackQueryArgs;->selection:Ljava/lang/String;

    .line 12
    if-nez p1, :cond_0

    .line 13
    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/query/TrackQueryArgs;->selectionArgs:[Ljava/lang/String;

    .line 17
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->DEFAULT_SORT_ORDER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " COLLATE LOCALIZED "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/query/TrackQueryArgs;->orderBy:Ljava/lang/String;

    .line 18
    return-void

    .line 15
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/query/TrackQueryArgs;->selectionArgs:[Ljava/lang/String;

    goto :goto_0
.end method
