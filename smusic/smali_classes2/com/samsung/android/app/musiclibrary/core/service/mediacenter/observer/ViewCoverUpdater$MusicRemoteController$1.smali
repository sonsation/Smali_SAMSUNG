.class Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater$MusicRemoteController$1;
.super Ljava/lang/Object;
.source "ViewCoverUpdater.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater$MusicRemoteController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater$MusicRemoteController;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater$MusicRemoteController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater$MusicRemoteController;

    .prologue
    .line 217
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater$MusicRemoteController$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater$MusicRemoteController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 220
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater$MusicRemoteController$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater$MusicRemoteController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater$MusicRemoteController;->access$102(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater$MusicRemoteController;Z)Z

    .line 221
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 225
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater$MusicRemoteController$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater$MusicRemoteController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater$MusicRemoteController;->access$102(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater$MusicRemoteController;Z)Z

    .line 226
    return-void
.end method
