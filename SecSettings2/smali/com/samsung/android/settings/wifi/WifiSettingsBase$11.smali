.class Lcom/samsung/android/settings/wifi/WifiSettingsBase$11;
.super Ljava/lang/Object;
.source "WifiSettingsBase.java"

# interfaces
.implements Landroid/net/wifi/WifiManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/WifiSettingsBase;->initFailListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    .prologue
    .line 1476
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$11;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 3
    .param p1, "reason"    # I

    .prologue
    const/4 v2, 0x0

    .line 1483
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$11;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v1, v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-set0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;Z)Z

    .line 1484
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$11;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1485
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 1487
    const v1, 0x7f0b121a

    .line 1486
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1482
    :cond_0
    return-void
.end method

.method public onSuccess()V
    .locals 2

    .prologue
    .line 1479
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$11;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-set0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;Z)Z

    .line 1478
    return-void
.end method
