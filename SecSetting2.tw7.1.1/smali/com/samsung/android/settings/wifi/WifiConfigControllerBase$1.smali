.class Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$1;
.super Ljava/lang/Object;
.source "WifiConfigControllerBase.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;

    .prologue
    .line 1439
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$1;->this$0:Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 1441
    const-string/jumbo v0, "WifiConfigController"

    const-string/jumbo v1, "OnFocusChangeListener"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1442
    if-eqz p2, :cond_0

    .line 1443
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 1440
    :cond_0
    :goto_0
    return-void

    .line 1454
    :sswitch_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$1;->this$0:Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->hideSoftKeyboard()V

    goto :goto_0

    .line 1457
    :sswitch_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$1;->this$0:Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->showSoftKeyboard()V

    goto :goto_0

    .line 1443
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f110874 -> :sswitch_1
        0x7f1108c6 -> :sswitch_0
        0x7f1108c8 -> :sswitch_0
        0x7f11093e -> :sswitch_0
        0x7f11093f -> :sswitch_0
        0x7f110940 -> :sswitch_0
        0x7f110943 -> :sswitch_0
        0x7f11094c -> :sswitch_0
        0x7f110956 -> :sswitch_0
        0x7f11095c -> :sswitch_0
        0x7f11095e -> :sswitch_0
    .end sparse-switch
.end method
