.class Lcom/android/keyguard/KeyguardDirectionLockView$8;
.super Lcom/android/keyguard/KnoxStateMonitorCallback;
.source "KeyguardDirectionLockView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardDirectionLockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardDirectionLockView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardDirectionLockView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/KeyguardDirectionLockView;

    .prologue
    .line 1557
    iput-object p1, p0, Lcom/android/keyguard/KeyguardDirectionLockView$8;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-direct {p0}, Lcom/android/keyguard/KnoxStateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisableDeviceWhenReachMaxFailed()V
    .locals 3

    .prologue
    .line 1560
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView$8;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardDirectionLockView;->-get22(Lcom/android/keyguard/KeyguardDirectionLockView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    .line 1562
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    .line 1561
    const/4 v2, 0x2

    .line 1560
    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->requireStrongAuth(II)V

    .line 1563
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView$8;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardDirectionLockView;->-wrap4(Lcom/android/keyguard/KeyguardDirectionLockView;)V

    .line 1559
    return-void
.end method
