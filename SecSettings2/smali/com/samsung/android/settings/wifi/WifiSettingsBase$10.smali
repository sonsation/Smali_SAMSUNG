.class Lcom/samsung/android/settings/wifi/WifiSettingsBase$10;
.super Ljava/lang/Object;
.source "WifiSettingsBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/WifiSettingsBase;->onAccessPointChanged(Lcom/android/settingslib/wifi/AccessPoint;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

.field final synthetic val$accessPoint:Lcom/android/settingslib/wifi/AccessPoint;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/WifiSettingsBase;Lcom/android/settingslib/wifi/AccessPoint;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/wifi/WifiSettingsBase;
    .param p2, "val$accessPoint"    # Lcom/android/settingslib/wifi/AccessPoint;

    .prologue
    .line 1458
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$10;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$10;->val$accessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1461
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$10;->val$accessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 1462
    .local v0, "tag":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1463
    check-cast v0, Lcom/android/settings/wifi/LongPressAccessPointPreference;

    .end local v0    # "tag":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/android/settings/wifi/LongPressAccessPointPreference;->refresh()V

    .line 1460
    :cond_0
    return-void
.end method
