.class Lcom/samsung/android/app/musiclibrary/core/service/utility/BtControlHandler$1;
.super Ljava/lang/Object;
.source "BtControlHandler.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/service/utility/BtControlHandler;->bindAdapterInternal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/service/utility/BtControlHandler;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/utility/BtControlHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/musiclibrary/core/service/utility/BtControlHandler;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/utility/BtControlHandler$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/utility/BtControlHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 1
    .param p1, "profile"    # I
    .param p2, "proxy"    # Landroid/bluetooth/BluetoothProfile;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/utility/BtControlHandler$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/utility/BtControlHandler;

    check-cast p2, Landroid/bluetooth/BluetoothA2dp;

    .end local p2    # "proxy":Landroid/bluetooth/BluetoothProfile;
    invoke-static {v0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/utility/BtControlHandler;->access$002(Lcom/samsung/android/app/musiclibrary/core/service/utility/BtControlHandler;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;

    .line 55
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 2
    .param p1, "profile"    # I

    .prologue
    .line 59
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/utility/BtControlHandler$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/utility/BtControlHandler;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/utility/BtControlHandler;->access$002(Lcom/samsung/android/app/musiclibrary/core/service/utility/BtControlHandler;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;

    .line 60
    return-void
.end method
