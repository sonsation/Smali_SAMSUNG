.class Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService$1;
.super Ljava/lang/Object;
.source "PlayerMediaBrowserService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService$1;->this$0:Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 59
    const-string v0, "SV-MediaBrowser"

    const-string v1, "Bound to play back service."

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 64
    const-string v0, "SV-MediaBrowser"

    const-string v1, "Disconnect with play back service."

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService$1;->this$0:Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService;->access$002(Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;)Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;

    .line 66
    return-void
.end method
