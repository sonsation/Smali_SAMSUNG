.class Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity$2;
.super Ljava/lang/Object;
.source "SetAsActivity.java"

# interfaces
.implements Lcom/samsung/android/app/music/common/player/setas/control/SetAsActionMenuController$OnCommandDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;->initMenuControllerInternal()V
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
    .line 188
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity$2;->this$0:Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity$2;->this$0:Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;->finish()V

    .line 198
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity$2;->this$0:Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;->getScreenId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/common/player/logger/PlayerSALoggingUtils;->sendSetAsCancelEvent(Ljava/lang/String;)V

    .line 199
    return-void
.end method

.method public done()V
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity$2;->this$0:Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;->saveRingtone()V

    .line 192
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity$2;->this$0:Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;->getScreenId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/common/player/logger/PlayerSALoggingUtils;->sendSetAsDoneEvent(Ljava/lang/String;)V

    .line 193
    return-void
.end method

.method public isRecommendChecked()Z
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity$2;->this$0:Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;->access$000(Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;)Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemGroup;->isChecked()Z

    move-result v0

    return v0
.end method

.method public isToneChecked()Z
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity$2;->this$0:Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;->access$100(Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;)Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemGroup;->isChecked()Z

    move-result v0

    return v0
.end method
