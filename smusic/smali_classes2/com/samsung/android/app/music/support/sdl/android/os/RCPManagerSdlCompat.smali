.class public Lcom/samsung/android/app/music/support/sdl/android/os/RCPManagerSdlCompat;
.super Ljava/lang/Object;
.source "RCPManagerSdlCompat.java"


# static fields
.field private static final UNDEFINED:I = -0x1


# instance fields
.field private final manager:Landroid/os/RCPManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string v0, "rcp"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RCPManager;

    iput-object v0, p0, Lcom/samsung/android/app/music/support/sdl/android/os/RCPManagerSdlCompat;->manager:Landroid/os/RCPManager;

    .line 16
    return-void
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
    .line 21
    .local p2, "srcFilePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "destFilePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/music/support/sdl/android/os/RCPManagerSdlCompat;->manager:Landroid/os/RCPManager;

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/RCPManager;->moveFilesForApp(ILjava/util/List;Ljava/util/List;)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 23
    :goto_0
    return-wide v2

    .line 22
    :catch_0
    move-exception v0

    .line 23
    .local v0, "e":Landroid/os/RemoteException;
    const-wide/16 v2, -0x1

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
    .line 30
    .local p2, "srcFilePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "destFilePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/music/support/sdl/android/os/RCPManagerSdlCompat;->manager:Landroid/os/RCPManager;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/os/RCPManager;->moveFilesForAppEx(ILjava/util/List;Ljava/util/List;I)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 32
    :goto_0
    return-wide v2

    .line 31
    :catch_0
    move-exception v0

    .line 32
    .local v0, "e":Landroid/os/RemoteException;
    const-wide/16 v2, -0x1

    goto :goto_0
.end method
