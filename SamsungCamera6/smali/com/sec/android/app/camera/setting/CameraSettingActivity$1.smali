.class Lcom/sec/android/app/camera/setting/CameraSettingActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "CameraSettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/setting/CameraSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/setting/CameraSettingActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/setting/CameraSettingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity$1;->this$0:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const/16 v5, 0x16

    const/4 v4, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraSettingActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity$1;->this$0:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    invoke-static {v1}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->access$000(Lcom/sec/android/app/camera/setting/CameraSettingActivity;)Lcom/sec/android/app/camera/DimController;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity$1;->this$0:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    invoke-static {v1}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->access$100(Lcom/sec/android/app/camera/setting/CameraSettingActivity;)Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity$1;->this$0:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    invoke-static {v1}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->access$200(Lcom/sec/android/app/camera/setting/CameraSettingActivity;)Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setStorage(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity$1;->this$0:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    invoke-static {v1}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->access$000(Lcom/sec/android/app/camera/setting/CameraSettingActivity;)Lcom/sec/android/app/camera/DimController;

    move-result-object v1

    invoke-virtual {v1, v5, v4}, Lcom/sec/android/app/camera/DimController;->setButtonDim(II)V

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity$1;->this$0:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    invoke-static {v1}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->access$100(Lcom/sec/android/app/camera/setting/CameraSettingActivity;)Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->refreshMenu()V

    goto :goto_0

    :cond_2
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity$1;->this$0:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    invoke-static {v1}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->access$000(Lcom/sec/android/app/camera/setting/CameraSettingActivity;)Lcom/sec/android/app/camera/DimController;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity$1;->this$0:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    invoke-static {v1}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->access$100(Lcom/sec/android/app/camera/setting/CameraSettingActivity;)Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/sec/android/app/camera/util/StorageUtils;->setStorageVolume(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity$1;->this$0:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    invoke-static {v1}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->access$000(Lcom/sec/android/app/camera/setting/CameraSettingActivity;)Lcom/sec/android/app/camera/DimController;

    move-result-object v1

    invoke-virtual {v1, v5, v4}, Lcom/sec/android/app/camera/DimController;->setButtonDim(II)V

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraSettingActivity$1;->this$0:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    invoke-static {v1}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->access$100(Lcom/sec/android/app/camera/setting/CameraSettingActivity;)Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->refreshMenu()V

    goto :goto_0
.end method
