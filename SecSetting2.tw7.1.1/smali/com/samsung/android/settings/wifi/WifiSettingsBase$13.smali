.class Lcom/samsung/android/settings/wifi/WifiSettingsBase$13;
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
    .line 1612
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$13;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 3
    .param p1, "reason"    # I

    .prologue
    .line 1618
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$13;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1619
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 1621
    const v1, 0x7f0b1597

    .line 1622
    const/4 v2, 0x0

    .line 1620
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1617
    :cond_0
    return-void
.end method

.method public onSuccess()V
    .locals 0

    .prologue
    .line 1614
    return-void
.end method
