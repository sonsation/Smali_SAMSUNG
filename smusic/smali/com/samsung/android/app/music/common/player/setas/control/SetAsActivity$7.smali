.class Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity$7;
.super Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemGroup;
.source "SetAsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;
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
    .line 463
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity$7;->this$0:Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;

    invoke-direct {p0}, Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemGroup;-><init>()V

    return-void
.end method


# virtual methods
.method public getGroupName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 466
    const-string v0, "RecommendGroup"

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    .line 471
    invoke-static {}, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;->access$700()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity$7;->getGroupName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - onClick() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 474
    .local v1, "id":I
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity$7;->isChecked(I)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity$7;->this$0:Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;

    invoke-static {v3}, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;->access$400(Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;)Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 475
    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity$7;->this$0:Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;

    invoke-static {v3}, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;->access$400(Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;)Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->stop()V

    .line 490
    :goto_0
    return-void

    .line 478
    :cond_0
    const/4 v0, 0x0

    .line 479
    .local v0, "fromHighlight":Z
    const v3, 0x7f12056c

    if-ne v1, v3, :cond_1

    .line 480
    const/4 v0, 0x1

    .line 482
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity$7;->this$0:Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;

    invoke-static {v3}, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;->access$400(Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;)Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity$7;->this$0:Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;

    invoke-static {v4}, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;->access$500(Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5, v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->startPlayer(JZ)V

    .line 484
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity$7;->getItem(I)Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemLayout;

    move-result-object v2

    .line 485
    .local v2, "item":Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemLayout;
    if-eqz v2, :cond_2

    .line 486
    invoke-virtual {v2, v6}, Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemLayout;->setChecked(Z)V

    .line 487
    invoke-virtual {v2, v6}, Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemLayout;->sendAccessibilityEvent(I)V

    .line 489
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity$7;->this$0:Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;->getScreenId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/samsung/android/app/music/common/player/logger/PlayerSALoggingUtils;->sendSetAsRecommendTypeEvent(Ljava/lang/String;I)V

    goto :goto_0
.end method
