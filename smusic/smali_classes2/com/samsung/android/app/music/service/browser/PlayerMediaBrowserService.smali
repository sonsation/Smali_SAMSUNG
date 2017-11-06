.class public final Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService;
.super Landroid/service/media/MediaBrowserService;
.source "PlayerMediaBrowserService.java"


# static fields
.field private static final EMPTY_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV-MediaBrowser"

.field private static final PKG_BT_ROOT:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PKG_GOOGLE_DEMO:Ljava/lang/String; = "com.google.android.music.experimental.mediasessiondemo"

.field private static final TAG:Ljava/lang/String; = "SV-MediaBrowser"


# instance fields
.field private mCoreServiceToken:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;

.field private mResultTaskFactory:Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTaskFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 33
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.android.bluetooth"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.google.android.music.experimental.mediasessiondemo"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService;->PKG_BT_ROOT:Ljava/util/List;

    .line 39
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService;->EMPTY_LIST:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/service/media/MediaBrowserService;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;)Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService;
    .param p1, "x1"    # Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService;->mCoreServiceToken:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;

    return-object p1
.end method

.method private ensureTaskFactory()V
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService;->mResultTaskFactory:Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTaskFactory;

    if-nez v0, :cond_0

    .line 132
    new-instance v0, Lcom/samsung/android/app/music/service/browser/LoadItemsTaskFactory;

    new-instance v1, Lcom/samsung/android/app/music/service/browser/LoadDataFactory;

    invoke-direct {v1}, Lcom/samsung/android/app/music/service/browser/LoadDataFactory;-><init>()V

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/service/browser/LoadItemsTaskFactory;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadDataFactory;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService;->mResultTaskFactory:Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTaskFactory;

    .line 134
    :cond_0
    return-void
.end method

.method private loadChildrenInternal(Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;)V
    .locals 3
    .param p1, "parentId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/service/media/MediaBrowserService$Result",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 108
    .local p2, "result":Landroid/service/media/MediaBrowserService$Result;, "Landroid/service/media/MediaBrowserService$Result<Ljava/util/List<Landroid/media/browse/MediaBrowser$MediaItem;>;>;"
    invoke-virtual {p2}, Landroid/service/media/MediaBrowserService$Result;->detach()V

    .line 109
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadDataFactory;->fromString(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadDataFactory$BrowseId;

    move-result-object v0

    .line 110
    .local v0, "id":Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadDataFactory$BrowseId;
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService;->ensureTaskFactory()V

    .line 111
    iget-object v1, v0, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadDataFactory$BrowseId;->category:Ljava/lang/String;

    iget-object v2, v0, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadDataFactory$BrowseId;->id:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/browser/BrowsableItems;->getCategoryType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 125
    :pswitch_0
    iget-object v1, p0, Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService;->mResultTaskFactory:Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTaskFactory;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTaskFactory;->runPlayableResultTask(Landroid/content/Context;Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;)V

    .line 128
    :goto_0
    return-void

    .line 113
    :pswitch_1
    iget-object v1, p0, Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService;->mResultTaskFactory:Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTaskFactory;

    .line 114
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTaskFactory;->runBrowsableRootResultTask(Landroid/content/Context;Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;)V

    goto :goto_0

    .line 117
    :pswitch_2
    iget-object v1, p0, Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService;->mResultTaskFactory:Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTaskFactory;

    .line 118
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTaskFactory;->runBrowsableResultTask(Landroid/content/Context;Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;)V

    goto :goto_0

    .line 121
    :pswitch_3
    iget-object v1, p0, Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService;->mResultTaskFactory:Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTaskFactory;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTaskFactory;->runPlayableResultTask(Landroid/content/Context;Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;)V

    goto :goto_0

    .line 111
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public onCreate()V
    .locals 6

    .prologue
    .line 47
    invoke-super {p0}, Landroid/service/media/MediaBrowserService;->onCreate()V

    .line 48
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 51
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/browser/MediaSessionUtils;->getSessionInstance(Landroid/content/Context;)Landroid/media/session/MediaSession;

    move-result-object v1

    .line 52
    .local v1, "ms":Landroid/media/session/MediaSession;
    invoke-virtual {v1}, Landroid/media/session/MediaSession;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v2

    .line 53
    .local v2, "token":Landroid/media/session/MediaSession$Token;
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService;->setSessionToken(Landroid/media/session/MediaSession$Token;)V

    .line 54
    const-string v3, "SV-MediaBrowser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCreate token "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    new-instance v3, Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService$1;-><init>(Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService;)V

    const-class v4, Lcom/samsung/android/app/music/service/PlayerService;

    invoke-static {v0, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->bindToService(Landroid/content/Context;Landroid/content/ServiceConnection;Ljava/lang/Class;)Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService;->mCoreServiceToken:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;

    .line 68
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 72
    invoke-super {p0}, Landroid/service/media/MediaBrowserService;->onDestroy()V

    .line 73
    iget-object v0, p0, Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService;->mCoreServiceToken:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService;->mCoreServiceToken:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->unbindFromService(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;)V

    .line 76
    :cond_0
    return-void
.end method

.method public onGetRoot(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/service/media/MediaBrowserService$BrowserRoot;
    .locals 4
    .param p1, "clientPackageName"    # Ljava/lang/String;
    .param p2, "clientUid"    # I
    .param p3, "rootHints"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x0

    .line 80
    const-string v1, "SV-MediaBrowser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onGetRoot clientPackageName "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " clientUid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "rootHints"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/samsung/android/app/musiclibrary/core/service/browser/MediaBrowseClientPermissionCheckUtils;->isValidClient(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 90
    :goto_0
    return-object v0

    .line 87
    :cond_0
    sget-object v1, Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService;->PKG_BT_ROOT:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 88
    new-instance v1, Landroid/service/media/MediaBrowserService$BrowserRoot;

    const-string v2, "bt_root"

    invoke-direct {v1, v2, v0}, Landroid/service/media/MediaBrowserService$BrowserRoot;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    move-object v0, v1

    goto :goto_0

    .line 90
    :cond_1
    new-instance v1, Landroid/service/media/MediaBrowserService$BrowserRoot;

    const-string/jumbo v2, "root"

    invoke-direct {v1, v2, v0}, Landroid/service/media/MediaBrowserService$BrowserRoot;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public onLoadChildren(Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;)V
    .locals 4
    .param p1, "parentId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/service/media/MediaBrowserService$Result",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 96
    .local p2, "result":Landroid/service/media/MediaBrowserService$Result;, "Landroid/service/media/MediaBrowserService$Result<Ljava/util/List<Landroid/media/browse/MediaBrowser$MediaItem;>;>;"
    const-string v1, "SV-MediaBrowser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLoadChildren parentId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " result "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService;->loadChildrenInternal(Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :goto_0
    return-void

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SMUSIC-SV-MediaBrowser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLoadChildren fail parentId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    sget-object v1, Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService;->EMPTY_LIST:Ljava/util/List;

    invoke-virtual {p2, v1}, Landroid/service/media/MediaBrowserService$Result;->sendResult(Ljava/lang/Object;)V

    goto :goto_0
.end method
