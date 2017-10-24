.class Lcom/android/systemui/volume/SecVolumeDialog$5;
.super Ljava/lang/Object;
.source "SecVolumeDialog.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/SecVolumeDialog;
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
    .param p1, "this$0"    # Lcom/android/systemui/volume/SecVolumeDialog;

    .prologue
    .line 3633
    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialog$5;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 1
    .param p1, "profile"    # I
    .param p2, "proxy"    # Landroid/bluetooth/BluetoothProfile;

    .prologue
    .line 3635
    packed-switch p1, :pswitch_data_0

    .line 3634
    .end local p2    # "proxy":Landroid/bluetooth/BluetoothProfile;
    :goto_0
    return-void

    .line 3637
    .restart local p2    # "proxy":Landroid/bluetooth/BluetoothProfile;
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$5;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    check-cast p2, Landroid/bluetooth/BluetoothA2dp;

    .end local p2    # "proxy":Landroid/bluetooth/BluetoothProfile;
    invoke-static {v0, p2}, Lcom/android/systemui/volume/SecVolumeDialog;->-set0(Lcom/android/systemui/volume/SecVolumeDialog;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;

    goto :goto_0

    .line 3640
    .restart local p2    # "proxy":Landroid/bluetooth/BluetoothProfile;
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$5;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    check-cast p2, Landroid/bluetooth/BluetoothHeadset;

    .end local p2    # "proxy":Landroid/bluetooth/BluetoothProfile;
    invoke-static {v0, p2}, Lcom/android/systemui/volume/SecVolumeDialog;->-set11(Lcom/android/systemui/volume/SecVolumeDialog;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    goto :goto_0

    .line 3635
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onServiceDisconnected(I)V
    .locals 2
    .param p1, "profile"    # I

    .prologue
    const/4 v1, 0x0

    .line 3649
    packed-switch p1, :pswitch_data_0

    .line 3648
    :goto_0
    return-void

    .line 3651
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$5;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialog;->-set0(Lcom/android/systemui/volume/SecVolumeDialog;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;

    .line 3652
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$5;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialog;->-set3(Lcom/android/systemui/volume/SecVolumeDialog;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 3655
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$5;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialog;->-set11(Lcom/android/systemui/volume/SecVolumeDialog;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    .line 3656
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$5;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialog;->-set4(Lcom/android/systemui/volume/SecVolumeDialog;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 3649
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
