.class final Lcom/android/settings/fingerprint/FingerprintSettings_Utils$2;
.super Ljava/lang/Object;
.source "FingerprintSettings_Utils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/FingerprintSettings_Utils;->showSensorErrorDialog(Landroid/app/Activity;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$isFinish:Z

.field final synthetic val$pActivity:Landroid/app/Activity;


# direct methods
.method constructor <init>(ZLandroid/app/Activity;)V
    .locals 0
    .param p1, "val$isFinish"    # Z
    .param p2, "val$pActivity"    # Landroid/app/Activity;

    .prologue
    .line 112
    iput-boolean p1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_Utils$2;->val$isFinish:Z

    iput-object p2, p0, Lcom/android/settings/fingerprint/FingerprintSettings_Utils$2;->val$pActivity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "arg0"    # Landroid/content/DialogInterface;

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings_Utils$2;->val$isFinish:Z

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings_Utils$2;->val$pActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 114
    :cond_0
    return-void
.end method
