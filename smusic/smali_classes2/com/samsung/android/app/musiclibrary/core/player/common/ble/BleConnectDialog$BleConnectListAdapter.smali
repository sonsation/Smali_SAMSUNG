.class Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleConnectDialog$BleConnectListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "BleConnectDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleConnectDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BleConnectListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/samsung/android/library/beaconmanager/Tv;",
        ">;"
    }
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mTvList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/library/beaconmanager/Tv;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;ILjava/util/ArrayList;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "resource"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/library/beaconmanager/Tv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 98
    .local p3, "tvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/library/beaconmanager/Tv;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 99
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleConnectDialog$BleConnectListAdapter;->mActivity:Landroid/app/Activity;

    .line 100
    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleConnectDialog$BleConnectListAdapter;->mTvList:Ljava/util/ArrayList;

    .line 101
    return-void
.end method


# virtual methods
.method public getTvName(I)Ljava/lang/String;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 117
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleConnectDialog$BleConnectListAdapter;->mTvList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/library/beaconmanager/Tv;

    .line 118
    .local v0, "currentTv":Lcom/samsung/android/library/beaconmanager/Tv;
    if-nez v0, :cond_0

    .line 119
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleConnectDialog;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Tv doesn\'t exist"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    const/4 v1, 0x0

    .line 122
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/library/beaconmanager/Tv;->getModelName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 106
    if-nez p2, :cond_0

    .line 107
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleConnectDialog$BleConnectListAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/samsung/android/app/musiclibrary/R$layout;->music_core_dialog_ble_select_tv_list_item_common:I

    const/4 v3, 0x0

    .line 108
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 111
    :cond_0
    sget v1, Lcom/samsung/android/app/musiclibrary/R$id;->text1:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 112
    .local v0, "text1":Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleConnectDialog$BleConnectListAdapter;->getTvName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    return-object p2
.end method
