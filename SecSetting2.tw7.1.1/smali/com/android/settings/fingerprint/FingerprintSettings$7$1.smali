.class Lcom/android/settings/fingerprint/FingerprintSettings$7$1;
.super Ljava/lang/Object;
.source "FingerprintSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/FingerprintSettings$7;->onStateReceived()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/fingerprint/FingerprintSettings$7;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerprintSettings$7;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/settings/fingerprint/FingerprintSettings$7;

    .prologue
    .line 2131
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$7$1;->this$1:Lcom/android/settings/fingerprint/FingerprintSettings$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2134
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$7$1;->this$1:Lcom/android/settings/fingerprint/FingerprintSettings$7;

    iget-object v0, v0, Lcom/android/settings/fingerprint/FingerprintSettings$7;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    const-string/jumbo v1, "FingerprintSettings_register"

    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/FingerprintSettings;->-wrap3(Lcom/android/settings/fingerprint/FingerprintSettings;Ljava/lang/String;)V

    .line 2133
    return-void
.end method
