.class Lcom/android/systemui/volume/SecVolumeDialog$7;
.super Ljava/lang/Object;
.source "SecVolumeDialog.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/SecVolumeDialog;-><init>(Landroid/content/Context;ILcom/android/systemui/volume/VolumeDialogController;Lcom/android/systemui/statusbar/policy/ZenModeController;Lcom/android/systemui/volume/SecVolumeDialog$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/SecVolumeDialog;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/SecVolumeDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialog$7;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$7;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    check-cast p2, Landroid/bluetooth/BluetoothA2dp;

    invoke-static {v0, p2}, Lcom/android/systemui/volume/SecVolumeDialog;->-set0(Lcom/android/systemui/volume/SecVolumeDialog;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$7;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    check-cast p2, Landroid/bluetooth/BluetoothHeadset;

    invoke-static {v0, p2}, Lcom/android/systemui/volume/SecVolumeDialog;->-set10(Lcom/android/systemui/volume/SecVolumeDialog;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onServiceDisconnected(I)V
    .locals 2

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$7;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialog;->-set0(Lcom/android/systemui/volume/SecVolumeDialog;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$7;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialog;->-set2(Lcom/android/systemui/volume/SecVolumeDialog;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$7;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialog;->-set10(Lcom/android/systemui/volume/SecVolumeDialog;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$7;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialog;->-set3(Lcom/android/systemui/volume/SecVolumeDialog;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
