.class Lcom/android/keyguard/KeyguardSecurityContainer$4;
.super Ljava/lang/Object;
.source "KeyguardSecurityContainer.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardSecurityContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardSecurityContainer;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSecurityContainer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/KeyguardSecurityContainer;

    .prologue
    .line 781
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer$4;->this$0:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dismiss(Z)V
    .locals 0
    .param p1, "securityVerified"    # Z

    .prologue
    .line 789
    return-void
.end method

.method public getRemainingAttemptsBeforeWipe()I
    .locals 1

    .prologue
    .line 794
    const/4 v0, -0x1

    return v0
.end method

.method public isVerifyUnlockOnly()Z
    .locals 1

    .prologue
    .line 787
    const/4 v0, 0x0

    return v0
.end method

.method public reportUnlockAttempt(IZI)V
    .locals 0
    .param p1, "userId"    # I
    .param p2, "success"    # Z
    .param p3, "timeoutMs"    # I

    .prologue
    .line 785
    return-void
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 791
    return-void
.end method

.method public setNeedsInput(Z)V
    .locals 0
    .param p1, "needsInput"    # Z

    .prologue
    .line 802
    return-void
.end method

.method public showBackupSecurity(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V
    .locals 0
    .param p1, "mode"    # Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .prologue
    .line 798
    return-void
.end method

.method public userActivity()V
    .locals 0

    .prologue
    .line 783
    return-void
.end method
