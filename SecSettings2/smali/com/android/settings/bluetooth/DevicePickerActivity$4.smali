.class Lcom/android/settings/bluetooth/DevicePickerActivity$4;
.super Ljava/lang/Object;
.source "DevicePickerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/DevicePickerActivity;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/DevicePickerActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/DevicePickerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/bluetooth/DevicePickerActivity;

    .prologue
    .line 396
    iput-object p1, p0, Lcom/android/settings/bluetooth/DevicePickerActivity$4;->this$0:Lcom/android/settings/bluetooth/DevicePickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 399
    const-string/jumbo v0, "DevicePickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Key pressed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    sparse-switch p2, :sswitch_data_0

    .line 408
    const/4 v0, 0x0

    return v0

    .line 405
    :sswitch_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity$4;->this$0:Lcom/android/settings/bluetooth/DevicePickerActivity;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/DevicePickerActivity;->finish()V

    .line 410
    const/4 v0, 0x1

    return v0

    .line 400
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0xbb -> :sswitch_0
        0x3e9 -> :sswitch_0
    .end sparse-switch
.end method
