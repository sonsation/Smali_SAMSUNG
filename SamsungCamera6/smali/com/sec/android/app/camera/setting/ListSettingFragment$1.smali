.class Lcom/sec/android/app/camera/setting/ListSettingFragment$1;
.super Ljava/lang/Object;
.source "ListSettingFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/setting/ListSettingFragment;->initializeList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/setting/ListSettingFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/setting/ListSettingFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/setting/ListSettingFragment$1;->this$0:Lcom/sec/android/app/camera/setting/ListSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/ListSettingFragment$1;->this$0:Lcom/sec/android/app/camera/setting/ListSettingFragment;

    invoke-static {v0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->access$000(Lcom/sec/android/app/camera/setting/ListSettingFragment;)Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/Util;->changeBooleanToInt(Ljava/lang/Boolean;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setPictureFormat(I)V

    return-void
.end method
