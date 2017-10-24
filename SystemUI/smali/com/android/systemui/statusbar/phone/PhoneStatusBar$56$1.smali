.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$56$1;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar$56;->onDismiss()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$56;

.field final synthetic val$afterKeyguardGone:Z

.field final synthetic val$keyguardShowing:Z

.field final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar$56;ZZLjava/lang/Runnable;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar$56;
    .param p2, "val$keyguardShowing"    # Z
    .param p3, "val$afterKeyguardGone"    # Z
    .param p4, "val$runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 4988
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$56$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$56;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$56$1;->val$keyguardShowing:Z

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$56$1;->val$afterKeyguardGone:Z

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$56$1;->val$runnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 4991
    :try_start_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$56$1;->val$keyguardShowing:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$56$1;->val$afterKeyguardGone:Z

    if-eqz v1, :cond_2

    .line 4995
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$56$1;->val$runnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    .line 4996
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$56$1;->val$runnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 4989
    :cond_1
    :goto_1
    return-void

    .line 4992
    :cond_2
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->keyguardWaitingForActivityDrawn()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4998
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method
