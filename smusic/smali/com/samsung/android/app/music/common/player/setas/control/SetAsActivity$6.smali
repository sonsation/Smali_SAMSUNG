.class Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity$6;
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
    .line 439
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity$6;->this$0:Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;

    invoke-direct {p0}, Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemGroup;-><init>()V

    return-void
.end method


# virtual methods
.method public getGroupName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 442
    const-string v0, "ToneGroup"

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    .line 447
    invoke-static {}, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;->access$700()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity$6;->getGroupName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - onClick() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 449
    .local v0, "id":I
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity$6;->getItem(I)Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemLayout;

    move-result-object v1

    .line 450
    .local v1, "item":Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemLayout;
    if-eqz v1, :cond_0

    .line 451
    invoke-virtual {v1, v5}, Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemLayout;->setChecked(Z)V

    .line 452
    invoke-virtual {v1, v5}, Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemLayout;->sendAccessibilityEvent(I)V

    .line 454
    :cond_0
    const v2, 0x7f12056d

    if-ne v0, v2, :cond_1

    .line 455
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity$6;->this$0:Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;->access$300(Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;)Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;

    move-result-object v2

    const-string v3, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->isGranted(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 456
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity$6;->this$0:Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;->access$300(Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;)Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->requestPermissions()V

    .line 459
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity$6;->this$0:Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;->getScreenId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/samsung/android/app/music/common/player/logger/PlayerSALoggingUtils;->sendSetAsRingToneTypeEvent(Ljava/lang/String;I)V

    .line 460
    return-void
.end method
