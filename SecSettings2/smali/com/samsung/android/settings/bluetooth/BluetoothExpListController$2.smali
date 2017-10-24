.class Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$2;
.super Ljava/lang/Object;
.source "BluetoothExpListController.java"

# interfaces
.implements Lcom/samsung/android/animation/SemAddDeleteListAnimator$OnAddDeleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;
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
    .line 142
    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$2;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdd()V
    .locals 5

    .prologue
    .line 145
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$2;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {v4}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-get12(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 146
    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$2;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {v4}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-get12(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    .line 147
    .local v3, "preference":Lcom/android/settings/bluetooth/BluetoothDevicePreference;
    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$2;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {v4}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-get6(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;->getUpdatePosition(I)I

    move-result v1

    .line 148
    .local v1, "index":I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_1

    .line 157
    .end local v1    # "index":I
    .end local v3    # "preference":Lcom/android/settings/bluetooth/BluetoothDevicePreference;
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$2;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {v4}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-get3(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->notifyDataSetChanged()V

    .line 144
    return-void

    .line 150
    .restart local v1    # "index":I
    .restart local v3    # "preference":Lcom/android/settings/bluetooth/BluetoothDevicePreference;
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$2;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {v4}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-get5(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    move-result-object v4

    invoke-virtual {v4, v1, v3}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->addPreference(ILcom/android/settings/bluetooth/BluetoothDevicePreference;)Z

    move-result v2

    .line 151
    .local v2, "isAdded":Z
    if-eqz v2, :cond_2

    .line 152
    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$2;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {v4}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-get8(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$OnListEventListener;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 153
    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$2;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {v4}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-get8(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$OnListEventListener;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$OnListEventListener;->putDevicePreferenceMap(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V

    .line 145
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onAnimationEnd(Z)V
    .locals 5
    .param p1, "arg0"    # Z

    .prologue
    const/4 v4, 0x0

    .line 168
    const-string/jumbo v1, "BluetoothExpListController"

    const-string/jumbo v2, "onAnimationEnd ::"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$2;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {v1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-get6(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;->clear()V

    .line 171
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$2;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {v1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-get1(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;->clear()V

    .line 173
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$2;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {v1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-get12(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 174
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$2;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {v1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-get7(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$2;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {v2}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-get12(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 173
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 176
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$2;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {v1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-get12(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 178
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$2;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {v1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-get11(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 179
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$2;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {v1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-get2(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$2;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {v2}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-get11(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 178
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 181
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$2;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {v1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-get11(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 183
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$2;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {v1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-get4(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 184
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$2;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {v1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-get9(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 185
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$2;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {v1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-get4(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 167
    :goto_2
    return-void

    .line 187
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$2;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {v1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-get4(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2
.end method

.method public onAnimationStart(Z)V
    .locals 2
    .param p1, "arg0"    # Z

    .prologue
    .line 193
    const-string/jumbo v0, "BluetoothExpListController"

    const-string/jumbo v1, "onAnimationStart ::"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    return-void
.end method

.method public onDelete()V
    .locals 3

    .prologue
    .line 162
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$2;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {v1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-get1(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;->getUpdatePosition(I)I

    move-result v0

    .line 163
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$2;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {v1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-get0(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->remove(I)V

    .line 161
    :cond_0
    return-void
.end method
