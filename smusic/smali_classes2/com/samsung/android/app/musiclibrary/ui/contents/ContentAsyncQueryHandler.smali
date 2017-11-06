.class public Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "ContentAsyncQueryHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler$ContentsChangeHandler;,
        Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler$ContentChangeObserver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MusicContentObserver"


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private mObserver:Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler$ContentChangeObserver;

.field protected mObserverRegistered:Z

.field private mProjection:[Ljava/lang/String;

.field private mSelection:Ljava/lang/String;

.field private mSelectionArgs:[Ljava/lang/String;

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p1, "res"    # Landroid/content/ContentResolver;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "projection"    # [Ljava/lang/String;
    .param p4, "selection"    # Ljava/lang/String;
    .param p5, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler;->mObserverRegistered:Z

    .line 39
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler;->mUri:Landroid/net/Uri;

    .line 40
    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler;->mProjection:[Ljava/lang/String;

    .line 41
    iput-object p4, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler;->mSelection:Ljava/lang/String;

    .line 42
    iput-object p5, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler;->mSelectionArgs:[Ljava/lang/String;

    .line 43
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler;->mContentResolver:Landroid/content/ContentResolver;

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler;->mProjection:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler;->mSelection:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler;->mSelectionArgs:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler;
    .param p1, "x1"    # Landroid/net/Uri;
    .param p2, "x2"    # [Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # [Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler;->startQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method private startQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 53
    const-string v0, "MusicContentObserver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "startQuery"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler;->mSelection:Ljava/lang/String;

    .line 55
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler;->mUri:Landroid/net/Uri;

    .line 56
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler;->mProjection:[Ljava/lang/String;

    .line 57
    iput-object p4, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler;->mSelectionArgs:[Ljava/lang/String;

    .line 58
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler;->cancelOperation(I)V

    .line 59
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler;->mUri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler;->mProjection:[Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler;->mSelection:Ljava/lang/String;

    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler;->mSelectionArgs:[Ljava/lang/String;

    move-object v0, p0

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "c"    # Landroid/database/Cursor;

    .prologue
    .line 101
    const-string v0, "MusicContentObserver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "onQueryComplete cursor : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    if-eqz p3, :cond_0

    .line 103
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 105
    :cond_0
    return-void
.end method

.method public startObserving()V
    .locals 4

    .prologue
    .line 66
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler;->mUri:Landroid/net/Uri;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler;->mProjection:[Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler;->mSelection:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler;->mSelectionArgs:[Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler;->startObserving(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public startObserving(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 76
    const-string v0, "MusicContentObserver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "startObserving"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler;->mObserverRegistered:Z

    if-nez v0, :cond_0

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler;->mObserverRegistered:Z

    .line 79
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler$ContentChangeObserver;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler$ContentsChangeHandler;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler$ContentsChangeHandler;-><init>(Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler;)V

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler$ContentChangeObserver;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler;->mObserver:Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler$ContentChangeObserver;

    .line 80
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler;->mUri:Landroid/net/Uri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler;->mObserver:Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler$ContentChangeObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 83
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler;->startQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public stopObserving()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 90
    const-string v0, "MusicContentObserver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "stopObserving"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0, v3}, Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler;->cancelOperation(I)V

    .line 92
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler;->mObserver:Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler$ContentChangeObserver;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler;->mObserver:Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler$ContentChangeObserver;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler$ContentChangeObserver;->cancel()V

    .line 94
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler;->mObserver:Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler$ContentChangeObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 95
    iput-boolean v3, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler;->mObserverRegistered:Z

    .line 97
    :cond_0
    return-void
.end method
