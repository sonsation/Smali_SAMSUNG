.class Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$showRemainingTimerDialog$2;
.super Ljava/lang/Object;
.source "BiometricsAuthenticationActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$showRemainingTimerDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$showRemainingTimerDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$showRemainingTimerDialog;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$showRemainingTimerDialog;

    .prologue
    .line 396
    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$showRemainingTimerDialog$2;->this$1:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$showRemainingTimerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 399
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$showRemainingTimerDialog$2;->this$1:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$showRemainingTimerDialog;

    invoke-virtual {v0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$showRemainingTimerDialog;->dismiss()V

    .line 398
    return-void
.end method
