.class Lcom/samsung/android/app/music/service/PlayerService$4;
.super Ljava/lang/Object;
.source "PlayerService.java"

# interfaces
.implements Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController$onErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/service/PlayerService;->onCreateServiceMediaChangeCenter()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;
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
    .line 392
    iput-object p1, p0, Lcom/samsung/android/app/music/service/PlayerService$4;->this$0:Lcom/samsung/android/app/music/service/PlayerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 395
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService$4;->this$0:Lcom/samsung/android/app/music/service/PlayerService;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/service/PlayerService;->access$1300(Lcom/samsung/android/app/music/service/PlayerService;I)V

    .line 396
    return-void
.end method
