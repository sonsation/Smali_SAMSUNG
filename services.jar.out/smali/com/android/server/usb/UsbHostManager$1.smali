.class Lcom/android/server/usb/UsbHostManager$1;
.super Landroid/content/BroadcastReceiver;
.source "UsbHostManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbHostManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usb/UsbHostManager;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbHostManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/usb/UsbHostManager;

    .prologue
    .line 448
    iput-object p1, p0, Lcom/android/server/usb/UsbHostManager$1;->this$0:Lcom/android/server/usb/UsbHostManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 451
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager$1;->this$0:Lcom/android/server/usb/UsbHostManager;

    invoke-static {v0}, Lcom/android/server/usb/UsbHostManager;->-wrap0(Lcom/android/server/usb/UsbHostManager;)V

    .line 450
    return-void
.end method
