.class Lcom/android/server/policy/SamsungPhoneWindowManager$37;
.super Ljava/lang/Object;
.source "SamsungPhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/SamsungPhoneWindowManager;->updateSystemUiVisibilityLw()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/SamsungPhoneWindowManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/SamsungPhoneWindowManager;

    .prologue
    .line 6908
    iput-object p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$37;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 6911
    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$37;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 6912
    .local v1, "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    .line 6914
    :try_start_0
    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$37;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-static {v2}, Lcom/android/server/policy/SamsungPhoneWindowManager;->-get9(Lcom/android/server/policy/SamsungPhoneWindowManager;)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/statusbar/IStatusBarService;->setNavigationBarIconColor(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6910
    :cond_0
    :goto_0
    return-void

    .line 6915
    :catch_0
    move-exception v0

    .line 6916
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
