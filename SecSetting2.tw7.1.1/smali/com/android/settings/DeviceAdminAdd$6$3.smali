.class Lcom/android/settings/DeviceAdminAdd$6$3;
.super Ljava/lang/Object;
.source "DeviceAdminAdd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DeviceAdminAdd$6;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/DeviceAdminAdd$6;


# direct methods
.method constructor <init>(Lcom/android/settings/DeviceAdminAdd$6;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/settings/DeviceAdminAdd$6;

    .prologue
    .line 437
    iput-object p1, p0, Lcom/android/settings/DeviceAdminAdd$6$3;->this$1:Lcom/android/settings/DeviceAdminAdd$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 439
    iget-object v0, p0, Lcom/android/settings/DeviceAdminAdd$6$3;->this$1:Lcom/android/settings/DeviceAdminAdd$6;

    iget-object v0, v0, Lcom/android/settings/DeviceAdminAdd$6;->this$0:Lcom/android/settings/DeviceAdminAdd;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceAdminAdd;->continueRemoveAction(Ljava/lang/CharSequence;)V

    .line 438
    return-void
.end method
