.class public Lcom/samsung/android/app/music/milk/deeplink/task/FilePlayTask;
.super Lcom/samsung/android/app/music/milk/deeplink/task/DeepLinkTask;
.source "FilePlayTask.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "FilePlayTask"


# instance fields
.field private mCursor:Landroid/database/Cursor;

.field private mPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/net/Uri;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x0

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/deeplink/task/DeepLinkTask;-><init>(Landroid/app/Activity;Landroid/net/Uri;)V

    .line 23
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/FilePlayTask;->mPath:Ljava/lang/String;

    .line 24
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/FilePlayTask;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p2

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/FilePlayTask;->mCursor:Landroid/database/Cursor;

    .line 25
    return-void
.end method

.method private executePlay(Ljava/io/File;)V
    .locals 0
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 103
    return-void
.end method

.method private getLocalTrackId(Ljava/io/File;)Ljava/lang/String;
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 153
    const-string v0, ""

    return-object v0
.end method


# virtual methods
.method public execute()V
    .locals 0

    .prologue
    .line 63
    return-void
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    const-string v0, "FilePlayTask"

    return-object v0
.end method

.method public isValidTask()Z
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/FilePlayTask;->mPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
