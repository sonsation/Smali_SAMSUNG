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
    .line 1450
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
    .line 1452
    const-string/jumbo v0, "WifiConfigController"

    const-string/jumbo v1, "OnFocusChangeListener"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1453
    if-eqz p2, :cond_0

    .line 1454
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 1451
    :cond_0
    :goto_0
    return-void

    .line 1465
    :sswitch_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$1;->this$0:Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->hideSoftKeyboard()V

    goto :goto_0

    .line 1468
    :sswitch_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$1;->this$0:Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->showSoftKeyboard()V

    goto :goto_0

    .line 1454
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f11072a -> :sswitch_1
        0x7f11077a -> :sswitch_0
        0x7f11077c -> :sswitch_0
        0x7f1107ec -> :sswitch_0
        0x7f1107ed -> :sswitch_0
        0x7f1107ee -> :sswitch_0
        0x7f1107f1 -> :sswitch_0
        0x7f1107fa -> :sswitch_0
        0x7f110803 -> :sswitch_0
        0x7f110809 -> :sswitch_0
        0x7f11080b -> :sswitch_0
    .end sparse-switch
.end method
