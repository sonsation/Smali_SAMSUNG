.class Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$3;
.super Ljava/lang/Object;
.source "BluetoothExpListController.java"

# interfaces
.implements Landroid/widget/SemExpandableListView$OnChildClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    .prologue
    .line 213
    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$3;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildClick(Landroid/widget/SemExpandableListView;Landroid/view/View;IIJ)Z
    .locals 3
    .param p1, "parent"    # Landroid/widget/SemExpandableListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "groupPosition"    # I
    .param p4, "childPosition"    # I
    .param p5, "id"    # J

    .prologue
    .line 216
    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$3;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {v2}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-get3(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->getChild(II)Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    move-result-object v1

    .line 217
    .local v1, "preference":Lcom/android/settings/bluetooth/BluetoothDevicePreference;
    if-eqz v1, :cond_0

    .line 218
    move-object v0, v1

    .line 219
    .local v0, "btPreference":Lcom/android/settings/bluetooth/BluetoothDevicePreference;
    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$3;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {v2}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-get8(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$OnListEventListener;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$3;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {v2}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-get8(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$OnListEventListener;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$OnListEventListener;->onItemClick(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V

    .line 223
    .end local v0    # "btPreference":Lcom/android/settings/bluetooth/BluetoothDevicePreference;
    :cond_0
    const/4 v2, 0x1

    return v2
.end method
