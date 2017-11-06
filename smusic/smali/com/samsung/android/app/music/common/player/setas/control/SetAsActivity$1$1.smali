.class Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity$1$1;
.super Ljava/lang/Object;
.source "SetAsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity$1;->onProgressStarted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity$1;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity$1;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity$1$1;->this$1:Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity$1$1;->this$1:Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity$1;

    iget-object v0, v0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity$1;->this$0:Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;->access$000(Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;)Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemGroup;->setEnabled(Z)V

    .line 163
    return-void
.end method
