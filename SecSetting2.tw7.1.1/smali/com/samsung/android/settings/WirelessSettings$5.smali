.class Lcom/samsung/android/settings/WirelessSettings$5;
.super Landroid/database/ContentObserver;
.source "WirelessSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/WirelessSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/WirelessSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/WirelessSettings;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/WirelessSettings;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 284
    iput-object p1, p0, Lcom/samsung/android/settings/WirelessSettings$5;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .param p1, "selfChange"    # Z

    .prologue
    .line 287
    iget-object v2, p0, Lcom/samsung/android/settings/WirelessSettings$5;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 288
    iget-object v2, p0, Lcom/samsung/android/settings/WirelessSettings$5;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 289
    .local v0, "resolver":Landroid/content/ContentResolver;
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/WirelessSettings$5;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/WirelessSettings;->-get6(Lcom/samsung/android/settings/WirelessSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 290
    const/4 v1, 0x0

    .line 292
    .local v1, "ssValue":I
    const-string/jumbo v2, "WirelessSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mScreenSharingObserver DB value : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iget-object v2, p0, Lcom/samsung/android/settings/WirelessSettings$5;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/WirelessSettings;->-get6(Lcom/samsung/android/settings/WirelessSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 294
    const v3, 0x7f0b1d09

    .line 293
    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 286
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v1    # "ssValue":I
    :cond_0
    return-void
.end method