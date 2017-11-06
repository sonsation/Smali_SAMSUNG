.class public Lcom/samsung/android/app/music/support/android/os/RCPManagerCompat;
.super Ljava/lang/Object;
.source "RCPManagerCompat.java"


# static fields
.field private static final UNDEFINED:I = -0x1


# instance fields
.field private final manager:Lcom/samsung/android/knox/SemRemoteContentManager;

.field private final managersdl:Lcom/samsung/android/app/music/support/sdl/android/os/RCPManagerSdlCompat;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 21
    const-string v0, "rcp"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemRemoteContentManager;

    iput-object v0, p0, Lcom/samsung/android/app/music/support/android/os/RCPManagerCompat;->manager:Lcom/samsung/android/knox/SemRemoteContentManager;

    .line 22
    iput-object v1, p0, Lcom/samsung/android/app/music/support/android/os/RCPManagerCompat;->managersdl:Lcom/samsung/android/app/music/support/sdl/android/os/RCPManagerSdlCompat;

    .line 27
    :goto_0
    return-void

    .line 24
    :cond_0
    new-instance v0, Lcom/samsung/android/app/music/support/sdl/android/os/RCPManagerSdlCompat;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/music/support/sdl/android/os/RCPManagerSdlCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/support/android/os/RCPManagerCompat;->managersdl:Lcom/samsung/android/app/music/support/sdl/android/os/RCPManagerSdlCompat;

    .line 25
    iput-object v1, p0, Lcom/samsung/android/app/music/support/android/os/RCPManagerCompat;->manager:Lcom/samsung/android/knox/SemRemoteContentManager;

    goto :goto_0
.end method


# virtual methods
.method public moveFilesForApp(ILjava/util/List;Ljava/util/List;)J
    .locals 4
    .param p1, "requestApp"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)J"
        }
    .end annotation

    .prologue
    .line 31
    .local p2, "srcFilePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "destFilePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-boolean v1, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v1, :cond_0

    .line 36
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/music/support/android/os/RCPManagerCompat;->manager:Lcom/samsung/android/knox/SemRemoteContentManager;

    const/4 v2, -0x1

    invoke-virtual {v1, p1, p2, p3, v2}, Lcom/samsung/android/knox/SemRemoteContentManager;->moveFiles(ILjava/util/List;Ljava/util/List;I)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 41
    :goto_0
    return-wide v2

    .line 37
    :catch_0
    move-exception v0

    .line 38
    .local v0, "e":Landroid/os/RemoteException;
    const-wide/16 v2, -0x1

    goto :goto_0

    .line 41
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/support/android/os/RCPManagerCompat;->managersdl:Lcom/samsung/android/app/music/support/sdl/android/os/RCPManagerSdlCompat;

    invoke-virtual {v1, p1, p2, p3}, Lcom/samsung/android/app/music/support/sdl/android/os/RCPManagerSdlCompat;->moveFilesForApp(ILjava/util/List;Ljava/util/List;)J

    move-result-wide v2

    goto :goto_0
.end method

.method public moveFilesForAppEx(ILjava/util/List;Ljava/util/List;I)J
    .locals 4
    .param p1, "requestApp"    # I
    .param p4, "containerId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)J"
        }
    .end annotation

    .prologue
    .line 47
    .local p2, "srcFilePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "destFilePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-boolean v1, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v1, :cond_0

    .line 49
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/music/support/android/os/RCPManagerCompat;->manager:Lcom/samsung/android/knox/SemRemoteContentManager;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/samsung/android/knox/SemRemoteContentManager;->moveFiles(ILjava/util/List;Ljava/util/List;I)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 55
    :goto_0
    return-wide v2

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Landroid/os/RemoteException;
    const-wide/16 v2, -0x1

    goto :goto_0

    .line 54
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/support/android/os/RCPManagerCompat;->managersdl:Lcom/samsung/android/app/music/support/sdl/android/os/RCPManagerSdlCompat;

    .line 55
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/samsung/android/app/music/support/sdl/android/os/RCPManagerSdlCompat;->moveFilesForAppEx(ILjava/util/List;Ljava/util/List;I)J

    move-result-wide v2

    goto :goto_0
.end method
