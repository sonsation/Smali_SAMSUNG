.class Lcom/samsung/android/app/music/service/PlayerService$2;
.super Ljava/lang/Object;
.source "PlayerService.java"

# interfaces
.implements Lcom/samsung/android/app/music/service/network/ServiceNetworkManager$OnNetworkStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/service/PlayerService;->registerServiceNetworkManager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/service/PlayerService;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/PlayerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/service/PlayerService;

    .prologue
    .line 215
    iput-object p1, p0, Lcom/samsung/android/app/music/service/PlayerService$2;->this$0:Lcom/samsung/android/app/music/service/PlayerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNetworkStateChanged(Z)V
    .locals 3
    .param p1, "isAvailable"    # Z

    .prologue
    .line 218
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService$2;->this$0:Lcom/samsung/android/app/music/service/PlayerService;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/PlayerService;->access$800(Lcom/samsung/android/app/music/service/PlayerService;)Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object v0

    const/4 v1, 0x6

    .line 219
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    .line 218
    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->onCustomEvent(ILjava/lang/String;)V

    .line 220
    return-void
.end method
