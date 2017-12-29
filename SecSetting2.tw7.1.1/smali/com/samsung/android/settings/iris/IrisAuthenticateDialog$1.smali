.class Lcom/samsung/android/settings/iris/IrisAuthenticateDialog$1;
.super Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;
.source "IrisAuthenticateDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog$1;->this$0:Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;

    invoke-direct {p0}, Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 8
    .param p1, "errorCode"    # I
    .param p2, "errString"    # Ljava/lang/CharSequence;

    .prologue
    const/16 v7, 0xf

    const/16 v6, 0xc

    const/16 v5, 0x9

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 169
    const-string/jumbo v0, "IrisAuthenticateDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mAuthenticationCallback - onAuthenticationError : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-super {p0, p1, p2}, Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    .line 171
    if-eq p1, v5, :cond_0

    .line 172
    if-ne p1, v4, :cond_2

    .line 178
    :cond_0
    :goto_0
    if-ne p1, v5, :cond_3

    .line 179
    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog$1;->this$0:Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;

    const/4 v1, 0x4

    iput v1, v0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mResultValue:I

    .line 192
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog$1;->this$0:Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;

    invoke-static {v0}, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->-wrap0(Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;)V

    .line 193
    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog$1;->this$0:Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;

    invoke-virtual {v0}, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->dismiss()V

    .line 168
    :cond_1
    return-void

    .line 173
    :cond_2
    if-eq p1, v6, :cond_0

    .line 174
    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    .line 175
    if-eqz p1, :cond_0

    .line 176
    const/16 v0, 0xd

    if-eq p1, v0, :cond_0

    .line 177
    if-ne p1, v7, :cond_1

    goto :goto_0

    .line 180
    :cond_3
    if-ne p1, v6, :cond_4

    .line 181
    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog$1;->this$0:Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;

    const/4 v1, 0x5

    iput v1, v0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mResultValue:I

    goto :goto_1

    .line 182
    :cond_4
    if-ne p1, v4, :cond_5

    .line 183
    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog$1;->this$0:Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;

    const/4 v1, 0x7

    iput v1, v0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mResultValue:I

    goto :goto_1

    .line 184
    :cond_5
    if-nez p1, :cond_6

    .line 185
    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog$1;->this$0:Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;

    const/16 v1, 0x8

    iput v1, v0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mResultValue:I

    goto :goto_1

    .line 186
    :cond_6
    if-ne p1, v7, :cond_7

    .line 187
    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog$1;->this$0:Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;

    const/16 v1, 0xa

    iput v1, v0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mResultValue:I

    goto :goto_1

    .line 189
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog$1;->this$0:Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;

    iput v3, v0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mResultValue:I

    .line 190
    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog$1;->this$0:Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;

    iget-object v0, v0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog$1;->this$0:Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;

    iget-object v1, v1, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mContext:Landroid/content/Context;

    const v2, 0x7f0b096e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method public onAuthenticationFailed()V
    .locals 2

    .prologue
    .line 199
    const-string/jumbo v0, "IrisAuthenticateDialog"

    const-string/jumbo v1, "mAuthenticationCallback - onAuthenticationFailed "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-super {p0}, Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;->onAuthenticationFailed()V

    .line 202
    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog$1;->this$0:Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;

    const/4 v1, 0x6

    iput v1, v0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mResultValue:I

    .line 203
    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog$1;->this$0:Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;

    iget-object v0, v0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/biometrics/BiometricsConfig;->reportFailedBiometricsAttempts(Landroid/content/Context;)V

    .line 204
    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog$1;->this$0:Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;

    invoke-virtual {v0}, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->dismiss()V

    .line 198
    return-void
.end method

.method public onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .locals 3
    .param p1, "helpCode"    # I
    .param p2, "helpString"    # Ljava/lang/CharSequence;

    .prologue
    .line 210
    const-string/jumbo v0, "IrisAuthenticateDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mAuthenticationCallback - onAuthenticationHelp : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    invoke-super {p0, p1, p2}, Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;->onAuthenticationHelp(ILjava/lang/CharSequence;)V

    .line 209
    return-void
.end method

.method public onAuthenticationSucceeded(Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationResult;)V
    .locals 2
    .param p1, "result"    # Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationResult;

    .prologue
    .line 217
    const-string/jumbo v0, "IrisAuthenticateDialog"

    const-string/jumbo v1, "mAuthenticationCallback - onAuthenticationSucceeded "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog$1;->this$0:Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;

    const/4 v1, 0x1

    iput v1, v0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mResultValue:I

    .line 219
    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog$1;->this$0:Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;

    iget-object v0, v0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/biometrics/BiometricsConfig;->resetFailedBiometricsBackupAttempts(Landroid/content/Context;)V

    .line 220
    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog$1;->this$0:Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;

    invoke-virtual {v0}, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->dismiss()V

    .line 216
    return-void
.end method

.method public onIRImage([BII)V
    .locals 0
    .param p1, "irisImage"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 224
    return-void
.end method
