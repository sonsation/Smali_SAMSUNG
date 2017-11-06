.class Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity$4;
.super Ljava/lang/Object;
.source "SetAsActivity.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/PermissionManager$OnPermissionResultListener;


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
    .line 366
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity$4;->this$0:Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPermissionResult([Ljava/lang/String;[I)V
    .locals 5
    .param p1, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "grantResults"    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const v4, 0x7f12056d

    .line 370
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity$4;->this$0:Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;->access$300(Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;)Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;

    move-result-object v0

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->isGranted(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 371
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity$4;->this$0:Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;->access$400(Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;)Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity$4;->this$0:Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity$4;->this$0:Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;->access$500(Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;->access$600(Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;J)V

    .line 379
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity$4;->this$0:Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;->access$300(Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;)Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;

    move-result-object v0

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->isGranted(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 380
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity$4;->this$0:Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;->access$100(Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;)Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemGroup;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemGroup;->isChecked(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 381
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity$4;->this$0:Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;->access$100(Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;)Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v4, v1}, Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemGroup;->setChecked(IZ)V

    .line 384
    :cond_1
    :goto_0
    return-void

    .line 375
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity$4;->this$0:Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;

    invoke-static {v0}, Landroid/support/v4/app/ActivityCompat;->finishAffinity(Landroid/app/Activity;)V

    goto :goto_0
.end method
