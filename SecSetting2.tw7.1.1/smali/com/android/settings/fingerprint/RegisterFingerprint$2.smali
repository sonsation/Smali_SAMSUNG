.class Lcom/android/settings/fingerprint/RegisterFingerprint$2;
.super Landroid/os/Handler;
.source "RegisterFingerprint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fingerprint/RegisterFingerprint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/RegisterFingerprint;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/fingerprint/RegisterFingerprint;

    .prologue
    .line 423
    iput-object p1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$2;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 426
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 427
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$2;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-set0(Lcom/android/settings/fingerprint/RegisterFingerprint;Z)Z

    .line 425
    return-void
.end method
