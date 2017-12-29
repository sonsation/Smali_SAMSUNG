.class public Lcom/samsung/android/settings/iris/IrisUiHelper;
.super Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;
.source "IrisUiHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/iris/IrisUiHelper$1;,
        Lcom/samsung/android/settings/iris/IrisUiHelper$Callback;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/samsung/android/settings/iris/IrisUiHelper$Callback;

.field private mCancellationSignal:Landroid/os/CancellationSignal;

.field private mContext:Landroid/content/Context;

.field mIrisFailedCount:I

.field private mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

.field private mIrisMessage:Landroid/widget/TextView;

.field private mIrisPreviewLayout:Landroid/widget/LinearLayout;

.field private mResetErrorTextRunnable:Ljava/lang/Runnable;

.field private mUserId:I


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/iris/IrisUiHelper;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisUiHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/iris/IrisUiHelper;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisUiHelper;->mIrisMessage:Landroid/widget/TextView;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/widget/TextView;Lcom/samsung/android/settings/iris/IrisUiHelper$Callback;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layout"    # Landroid/widget/LinearLayout;
    .param p3, "tv"    # Landroid/widget/TextView;
    .param p4, "callback"    # Lcom/samsung/android/settings/iris/IrisUiHelper$Callback;
    .param p5, "userId"    # I

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;-><init>()V

    .line 142
    new-instance v0, Lcom/samsung/android/settings/iris/IrisUiHelper$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/iris/IrisUiHelper$1;-><init>(Lcom/samsung/android/settings/iris/IrisUiHelper;)V

    iput-object v0, p0, Lcom/samsung/android/settings/iris/IrisUiHelper;->mResetErrorTextRunnable:Ljava/lang/Runnable;

    .line 55
    iput-object p1, p0, Lcom/samsung/android/settings/iris/IrisUiHelper;->mContext:Landroid/content/Context;

    .line 56
    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisUiHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->getSemIrisManager(Landroid/content/Context;)Lcom/samsung/android/camera/iris/SemIrisManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/iris/IrisUiHelper;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    .line 57
    iput-object p2, p0, Lcom/samsung/android/settings/iris/IrisUiHelper;->mIrisPreviewLayout:Landroid/widget/LinearLayout;

    .line 58
    iput-object p3, p0, Lcom/samsung/android/settings/iris/IrisUiHelper;->mIrisMessage:Landroid/widget/TextView;

    .line 59
    iput-object p4, p0, Lcom/samsung/android/settings/iris/IrisUiHelper;->mCallback:Lcom/samsung/android/settings/iris/IrisUiHelper$Callback;

    .line 60
    iput p5, p0, Lcom/samsung/android/settings/iris/IrisUiHelper;->mUserId:I

    .line 54
    return-void
.end method

.method private setIrisPreviewMessage()V
    .locals 4

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisUiHelper;->isListening()Z

    move-result v0

    if-nez v0, :cond_0

    .line 135
    return-void

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisUiHelper;->mIrisMessage:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisUiHelper;->mResetErrorTextRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 139
    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisUiHelper;->mIrisMessage:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisUiHelper;->mResetErrorTextRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 133
    return-void
.end method


# virtual methods
.method public irisConfirmCredentialFailedCount(Landroid/content/Context;)I
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 159
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "iris_confirm_credential_fail_count"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public isListening()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 98
    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisUiHelper;->mCancellationSignal:Landroid/os/CancellationSignal;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisUiHelper;->mCancellationSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v1}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 3
    .param p1, "errMsgId"    # I
    .param p2, "errString"    # Ljava/lang/CharSequence;

    .prologue
    .line 104
    const-string/jumbo v0, "IrisUiHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAuthenticationError : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisUiHelper;->mIrisMessage:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisUiHelper;->setIrisPreviewMessage()V

    .line 102
    return-void
.end method

.method public onAuthenticationFailed()V
    .locals 2

    .prologue
    .line 117
    const-string/jumbo v0, "IrisUiHelper"

    const-string/jumbo v1, "onAuthenticationFailed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisUiHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/iris/IrisUiHelper;->reportFailedIrisAttempts(Landroid/content/Context;)V

    .line 119
    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisUiHelper;->mIrisMessage:Landroid/widget/TextView;

    const v1, 0x7f0b095e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 121
    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisUiHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/iris/IrisUiHelper;->irisConfirmCredentialFailedCount(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 122
    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisUiHelper;->mCallback:Lcom/samsung/android/settings/iris/IrisUiHelper$Callback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/samsung/android/settings/iris/IrisUiHelper$Callback;->onIrisVisibilityChanged(Z)V

    .line 124
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisUiHelper;->setIrisPreviewMessage()V

    .line 116
    return-void
.end method

.method public onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .locals 3
    .param p1, "helpMsgId"    # I
    .param p2, "helpString"    # Ljava/lang/CharSequence;

    .prologue
    .line 111
    const-string/jumbo v0, "IrisUiHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAuthenticationHelp : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisUiHelper;->mIrisMessage:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    return-void
.end method

.method public onAuthenticationSucceeded(Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationResult;)V
    .locals 2
    .param p1, "result"    # Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationResult;

    .prologue
    .line 129
    const-string/jumbo v0, "IrisUiHelper"

    const-string/jumbo v1, "onAuthenticationSucceeded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisUiHelper;->mCallback:Lcom/samsung/android/settings/iris/IrisUiHelper$Callback;

    invoke-interface {v0}, Lcom/samsung/android/settings/iris/IrisUiHelper$Callback;->onAuthenticated()V

    .line 128
    return-void
.end method

.method public reportFailedIrisAttempts(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 164
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/iris/IrisUiHelper;->irisConfirmCredentialFailedCount(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/iris/IrisUiHelper;->mIrisFailedCount:I

    .line 165
    iget v0, p0, Lcom/samsung/android/settings/iris/IrisUiHelper;->mIrisFailedCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/settings/iris/IrisUiHelper;->mIrisFailedCount:I

    .line 167
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "iris_confirm_credential_fail_count"

    iget v2, p0, Lcom/samsung/android/settings/iris/IrisUiHelper;->mIrisFailedCount:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 163
    return-void
.end method

.method public startListening()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 65
    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisUiHelper;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisUiHelper;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-virtual {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->isHardwareDetected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisUiHelper;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-virtual {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->hasEnrolledIrises()Z

    move-result v0

    .line 65
    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisUiHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/iris/IrisUiHelper;->irisConfirmCredentialFailedCount(Landroid/content/Context;)I

    move-result v0

    const/4 v2, 0x5

    if-lt v0, v2, :cond_1

    .line 69
    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisUiHelper;->mIrisPreviewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 70
    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisUiHelper;->mIrisMessage:Landroid/widget/TextView;

    const v1, 0x7f0b098f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/iris/IrisUiHelper;->mCancellationSignal:Landroid/os/CancellationSignal;

    .line 75
    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisUiHelper;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-eqz v0, :cond_2

    .line 76
    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisUiHelper;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisUiHelper;->mCancellationSignal:Landroid/os/CancellationSignal;

    move-object v4, p0

    move-object v5, v1

    move-object v6, v1

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/camera/iris/SemIrisManager;->authenticate(Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;Landroid/os/Handler;Landroid/view/View;)V

    .line 79
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisUiHelper;->mIrisPreviewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 80
    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisUiHelper;->mIrisMessage:Landroid/widget/TextView;

    const v1, 0x7f0b098d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 81
    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisUiHelper;->mCallback:Lcom/samsung/android/settings/iris/IrisUiHelper$Callback;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/samsung/android/settings/iris/IrisUiHelper$Callback;->onIrisVisibilityChanged(Z)V

    goto :goto_0
.end method

.method public stopListening()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 87
    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisUiHelper;->mCancellationSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisUiHelper;->mCancellationSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    .line 89
    iput-object v1, p0, Lcom/samsung/android/settings/iris/IrisUiHelper;->mCancellationSignal:Landroid/os/CancellationSignal;

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisUiHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/iris/IrisUiHelper;->irisConfirmCredentialFailedCount(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    .line 93
    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisUiHelper;->mIrisMessage:Landroid/widget/TextView;

    const v1, 0x7f0b098e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 86
    :cond_1
    return-void
.end method
