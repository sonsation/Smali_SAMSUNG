.class public Lcom/samsung/android/app/music/common/update/SamsungAppsManager;
.super Ljava/lang/Object;
.source "SamsungAppsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/common/update/SamsungAppsManager$Downloader;,
        Lcom/samsung/android/app/music/common/update/SamsungAppsManager$UrlParams;,
        Lcom/samsung/android/app/music/common/update/SamsungAppsManager$VersionCheckPublisher;,
        Lcom/samsung/android/app/music/common/update/SamsungAppsManager$VersionCheckTask;,
        Lcom/samsung/android/app/music/common/update/SamsungAppsManager$ResultListener;,
        Lcom/samsung/android/app/music/common/update/SamsungAppsManager$PackageName;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Lcom/samsung/android/app/music/common/update/SamsungAppsManager;


# instance fields
.field private final mVersionCheckInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/app/music/common/update/VersionCheckInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mVersionCheckPublisherMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/app/music/common/update/SamsungAppsManager$VersionCheckPublisher;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/samsung/android/app/music/common/update/SamsungAppsManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/common/update/SamsungAppsManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/update/SamsungAppsManager;->mVersionCheckInfoMap:Ljava/util/Map;

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/update/SamsungAppsManager;->mVersionCheckPublisherMap:Ljava/util/Map;

    .line 92
    return-void
.end method

.method static synthetic access$900()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/samsung/android/app/music/common/update/SamsungAppsManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private checkUpdate(Landroid/content/Context;Lcom/samsung/android/app/music/common/update/VersionCheckInfo;Lcom/samsung/android/app/music/common/update/SamsungAppsManager$ResultListener;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "versionCheckInfo"    # Lcom/samsung/android/app/music/common/update/VersionCheckInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "listener"    # Lcom/samsung/android/app/music/common/update/SamsungAppsManager$ResultListener;

    .prologue
    const/4 v4, 0x0

    .line 106
    invoke-virtual {p2}, Lcom/samsung/android/app/music/common/update/VersionCheckInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, "packageName":Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/android/app/music/common/update/SamsungAppsManager;->mVersionCheckPublisherMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/common/update/SamsungAppsManager$VersionCheckPublisher;

    .line 108
    .local v1, "publisher":Lcom/samsung/android/app/music/common/update/SamsungAppsManager$VersionCheckPublisher;
    if-nez v1, :cond_0

    .line 109
    new-instance v1, Lcom/samsung/android/app/music/common/update/SamsungAppsManager$VersionCheckPublisher;

    .end local v1    # "publisher":Lcom/samsung/android/app/music/common/update/SamsungAppsManager$VersionCheckPublisher;
    invoke-direct {v1, p0, v4}, Lcom/samsung/android/app/music/common/update/SamsungAppsManager$VersionCheckPublisher;-><init>(Lcom/samsung/android/app/music/common/update/SamsungAppsManager;Lcom/samsung/android/app/music/common/update/SamsungAppsManager$1;)V

    .line 110
    .restart local v1    # "publisher":Lcom/samsung/android/app/music/common/update/SamsungAppsManager$VersionCheckPublisher;
    iget-object v2, p0, Lcom/samsung/android/app/music/common/update/SamsungAppsManager;->mVersionCheckPublisherMap:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    :cond_0
    invoke-static {v1}, Lcom/samsung/android/app/music/common/update/SamsungAppsManager$VersionCheckPublisher;->access$100(Lcom/samsung/android/app/music/common/update/SamsungAppsManager$VersionCheckPublisher;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 113
    invoke-static {v1, p3}, Lcom/samsung/android/app/music/common/update/SamsungAppsManager$VersionCheckPublisher;->access$200(Lcom/samsung/android/app/music/common/update/SamsungAppsManager$VersionCheckPublisher;Lcom/samsung/android/app/music/common/update/SamsungAppsManager$ResultListener;)V

    .line 114
    sget-object v2, Lcom/samsung/android/app/music/common/update/SamsungAppsManager;->TAG:Ljava/lang/String;

    const-string v3, "There are already running update check. This request also receive via listener."

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :cond_1
    :goto_0
    return-void

    .line 117
    :cond_2
    invoke-static {v1, p3}, Lcom/samsung/android/app/music/common/update/SamsungAppsManager$VersionCheckPublisher;->access$200(Lcom/samsung/android/app/music/common/update/SamsungAppsManager$VersionCheckPublisher;Lcom/samsung/android/app/music/common/update/SamsungAppsManager$ResultListener;)V

    .line 118
    invoke-static {v1}, Lcom/samsung/android/app/music/common/update/SamsungAppsManager$VersionCheckPublisher;->access$300(Lcom/samsung/android/app/music/common/update/SamsungAppsManager$VersionCheckPublisher;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 119
    sget-object v2, Lcom/samsung/android/app/music/common/update/SamsungAppsManager;->TAG:Ljava/lang/String;

    const-string v3, "checkUpdate - send a request"

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    new-instance v2, Lcom/samsung/android/app/music/common/update/SamsungAppsManager$VersionCheckTask;

    invoke-direct {v2, p1, p2, v1, v4}, Lcom/samsung/android/app/music/common/update/SamsungAppsManager$VersionCheckTask;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/common/update/VersionCheckInfo;Lcom/samsung/android/app/music/common/update/SamsungAppsManager$VersionCheckPublisher;Lcom/samsung/android/app/music/common/update/SamsungAppsManager$1;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/common/update/SamsungAppsManager$VersionCheckTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public static getInstance()Lcom/samsung/android/app/music/common/update/SamsungAppsManager;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/samsung/android/app/music/common/update/SamsungAppsManager;->sInstance:Lcom/samsung/android/app/music/common/update/SamsungAppsManager;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Lcom/samsung/android/app/music/common/update/SamsungAppsManager;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/update/SamsungAppsManager;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/common/update/SamsungAppsManager;->sInstance:Lcom/samsung/android/app/music/common/update/SamsungAppsManager;

    .line 60
    :cond_0
    sget-object v0, Lcom/samsung/android/app/music/common/update/SamsungAppsManager;->sInstance:Lcom/samsung/android/app/music/common/update/SamsungAppsManager;

    return-object v0
.end method


# virtual methods
.method public cancelCheck(Ljava/lang/String;Lcom/samsung/android/app/music/common/update/SamsungAppsManager$ResultListener;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/samsung/android/app/music/common/update/SamsungAppsManager$ResultListener;

    .prologue
    .line 126
    iget-object v1, p0, Lcom/samsung/android/app/music/common/update/SamsungAppsManager;->mVersionCheckPublisherMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/update/SamsungAppsManager$VersionCheckPublisher;

    .line 127
    .local v0, "publisher":Lcom/samsung/android/app/music/common/update/SamsungAppsManager$VersionCheckPublisher;
    if-eqz v0, :cond_0

    .line 128
    invoke-static {v0, p2}, Lcom/samsung/android/app/music/common/update/SamsungAppsManager$VersionCheckPublisher;->access$500(Lcom/samsung/android/app/music/common/update/SamsungAppsManager$VersionCheckPublisher;Lcom/samsung/android/app/music/common/update/SamsungAppsManager$ResultListener;)V

    .line 129
    invoke-static {v0}, Lcom/samsung/android/app/music/common/update/SamsungAppsManager$VersionCheckPublisher;->access$100(Lcom/samsung/android/app/music/common/update/SamsungAppsManager$VersionCheckPublisher;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 130
    iget-object v1, p0, Lcom/samsung/android/app/music/common/update/SamsungAppsManager;->mVersionCheckInfoMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iget-object v1, p0, Lcom/samsung/android/app/music/common/update/SamsungAppsManager;->mVersionCheckPublisherMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    :cond_0
    return-void
.end method

.method public checkUpdate(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/app/music/common/update/SamsungAppsManager$ResultListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/samsung/android/app/music/common/update/SamsungAppsManager$ResultListener;

    .prologue
    .line 96
    iget-object v1, p0, Lcom/samsung/android/app/music/common/update/SamsungAppsManager;->mVersionCheckInfoMap:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/update/VersionCheckInfo;

    .line 97
    .local v0, "versionCheckInfo":Lcom/samsung/android/app/music/common/update/VersionCheckInfo;
    if-nez v0, :cond_0

    .line 98
    new-instance v0, Lcom/samsung/android/app/music/common/update/VersionCheckInfo;

    .end local v0    # "versionCheckInfo":Lcom/samsung/android/app/music/common/update/VersionCheckInfo;
    invoke-direct {v0, p1, p2}, Lcom/samsung/android/app/music/common/update/VersionCheckInfo;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 100
    .restart local v0    # "versionCheckInfo":Lcom/samsung/android/app/music/common/update/VersionCheckInfo;
    :cond_0
    invoke-direct {p0, p1, v0, p3}, Lcom/samsung/android/app/music/common/update/SamsungAppsManager;->checkUpdate(Landroid/content/Context;Lcom/samsung/android/app/music/common/update/VersionCheckInfo;Lcom/samsung/android/app/music/common/update/SamsungAppsManager$ResultListener;)V

    .line 101
    return-void
.end method

.method public launchDownloadPage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 137
    iget-object v1, p0, Lcom/samsung/android/app/music/common/update/SamsungAppsManager;->mVersionCheckPublisherMap:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/update/SamsungAppsManager$VersionCheckPublisher;

    .line 138
    .local v0, "publisher":Lcom/samsung/android/app/music/common/update/SamsungAppsManager$VersionCheckPublisher;
    if-eqz v0, :cond_0

    .line 139
    invoke-static {v0}, Lcom/samsung/android/app/music/common/update/SamsungAppsManager$VersionCheckPublisher;->access$600(Lcom/samsung/android/app/music/common/update/SamsungAppsManager$VersionCheckPublisher;)V

    .line 141
    :cond_0
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/common/update/SamsungAppsManager$Downloader;->access$700(Landroid/content/Context;Ljava/lang/String;)V

    .line 142
    return-void
.end method
