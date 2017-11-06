.class Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity$5;
.super Ljava/lang/Object;
.source "SetAsActivity.java"

# interfaces
.implements Lcom/samsung/android/app/music/common/player/setas/control/SetAsRingtoneController$OnSetAsRingtoneListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;->saveRingtone()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;

    .prologue
    .line 424
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity$5;->this$0:Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity$5;->this$0:Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;->finish()V

    .line 428
    return-void
.end method

.method public onError(I)V
    .locals 1
    .param p1, "error"    # I

    .prologue
    .line 432
    const/16 v0, -0x64

    if-ne p1, v0, :cond_0

    .line 433
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity$5;->this$0:Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;->access$300(Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;)Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->requestPermissions()V

    .line 435
    :cond_0
    return-void
.end method
