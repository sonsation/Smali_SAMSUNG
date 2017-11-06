.class public Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleConnectDialog;
.super Landroid/app/DialogFragment;
.source "BleConnectDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleConnectDialog$BleConnectListAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleConnectDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleConnectDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleConnectDialog;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static getNewInstance(Ljava/util/ArrayList;)Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleConnectDialog;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/library/beaconmanager/Tv;",
            ">;)",
            "Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleConnectDialog;"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, "tvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/library/beaconmanager/Tv;>;"
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleConnectDialog;

    invoke-direct {v1}, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleConnectDialog;-><init>()V

    .line 43
    .local v1, "dialog":Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleConnectDialog;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 44
    .local v0, "data":Landroid/os/Bundle;
    const-string v2, "args_tv_list"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 45
    invoke-virtual {v1, v0}, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleConnectDialog;->setArguments(Landroid/os/Bundle;)V

    .line 46
    return-object v1
.end method

.method static showDialog(Landroid/app/FragmentManager;Ljava/util/ArrayList;)V
    .locals 2
    .param p0, "manager"    # Landroid/app/FragmentManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/FragmentManager;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/library/beaconmanager/Tv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p1, "tvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/library/beaconmanager/Tv;>;"
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleConnectDialog;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_0

    .line 36
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleConnectDialog;->getNewInstance(Ljava/util/ArrayList;)Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleConnectDialog;

    move-result-object v0

    .line 37
    .local v0, "dialog":Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleConnectDialog;
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleConnectDialog;->TAG:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleConnectDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 39
    .end local v0    # "dialog":Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleConnectDialog;
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleConnectDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 52
    .local v0, "args":Landroid/os/Bundle;
    const-string v6, "args_tv_list"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 54
    .local v4, "tvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/library/beaconmanager/Tv;>;"
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleConnectDialog;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v1, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 55
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleConnectDialog;->mContext:Landroid/content/Context;

    .line 57
    sget v6, Lcom/samsung/android/app/musiclibrary/R$string;->music_core_ble_select_tv:I

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 59
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleConnectDialog;->mContext:Landroid/content/Context;

    const-string v7, "layout_inflater"

    .line 60
    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 61
    .local v2, "inflater":Landroid/view/LayoutInflater;
    sget v6, Lcom/samsung/android/app/musiclibrary/R$layout;->music_core_dialog_ble_select_tv_common:I

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 62
    .local v5, "v":Landroid/view/View;
    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 64
    const v6, 0x102000a

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    .line 65
    .local v3, "list":Landroid/widget/ListView;
    new-instance v6, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleConnectDialog$BleConnectListAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleConnectDialog;->getActivity()Landroid/app/Activity;

    move-result-object v7

    sget v8, Lcom/samsung/android/app/musiclibrary/R$layout;->music_core_dialog_ble_select_tv_list_item_common:I

    invoke-direct {v6, v7, v8, v4}, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleConnectDialog$BleConnectListAdapter;-><init>(Landroid/app/Activity;ILjava/util/ArrayList;)V

    invoke-virtual {v3, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 67
    invoke-virtual {v3, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 69
    sget v6, Lcom/samsung/android/app/musiclibrary/R$string;->cancel:I

    new-instance v7, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleConnectDialog$1;

    invoke-direct {v7, p0}, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleConnectDialog$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleConnectDialog;)V

    invoke-virtual {v1, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 76
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    return-object v6
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 81
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleConnectDialog$BleConnectListAdapter;

    invoke-virtual {v1, p3}, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleConnectDialog$BleConnectListAdapter;->getTvName(I)Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "name":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 83
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleConnectDialog;->TAG:Ljava/lang/String;

    const-string v2, "TV name doesn\'t exist."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleConnectDialog;->dismiss()V

    .line 89
    :goto_0
    return-void

    .line 87
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleConnectDialog;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager;->requestConnection(Landroid/content/Context;Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleConnectDialog;->dismiss()V

    goto :goto_0
.end method
