.class Lcom/android/settings/fingerprint/FingerprintSettings$8;
.super Ljava/lang/Object;
.source "FingerprintSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/FingerprintSettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/FingerprintSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerprintSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/fingerprint/FingerprintSettings;

    .prologue
    .line 1004
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$8;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1007
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$8;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    const-string/jumbo v1, "FingerprintSettings_register"

    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/FingerprintSettings;->-wrap2(Lcom/android/settings/fingerprint/FingerprintSettings;Ljava/lang/String;)V

    .line 1006
    return-void
.end method
