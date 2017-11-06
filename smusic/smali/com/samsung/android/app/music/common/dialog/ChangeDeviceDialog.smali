.class public Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;
.super Landroid/app/DialogFragment;
.source "ChangeDeviceDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog$ChangeDeviceArrayAdapter;
    }
.end annotation


# static fields
.field private static final DEVICE_IMAGE_TYPE_RES:[I

.field public static final DIALOG_TAG:Ljava/lang/String; = "device_dialog"

.field private static final PLAYER_TYPE:Ljava/lang/String; = "player_type"

.field private static final PREFIX:Ljava/lang/String; = "Dialog       |"

.field private static final SAVED_INSTANCE_STATE_DEVICE_LIST:Ljava/lang/String; = "saved_instance_state_device_list"

.field private static final TAG:Ljava/lang/String; = "ChangeDevice"


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mChangeDeviceController:Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;

.field private mContext:Landroid/content/Context;

.field private mDeviceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mEmptyView:Landroid/widget/TextView;

.field private mIsWfdSupported:Z

.field private mListView:Landroid/widget/ListView;

.field private final mOnChangeDeviceListener:Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$OnChangeDeviceListener;

.field private mPlayerType:I

.field private mRefreshProgressView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;->DEVICE_IMAGE_TYPE_RES:[I

    return-void

    :array_0
    .array-data 4
        0x7f02012b
        0x7f02012e
        0x7f020131
        0x7f02012a
        0x7f020132
        0x7f020130
        0x7f02012c
        0x7f02012f
        0x7f02012d
        0x7f020133
        0x7f020129
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;->mDeviceList:Ljava/util/ArrayList;

    .line 257
    new-instance v0, Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog$2;-><init>(Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;->mOnChangeDeviceListener:Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$OnChangeDeviceListener;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;->selectDevice(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;->updateListView(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;->mIsWfdSupported:Z

    return v0
.end method

.method static synthetic access$1300()[I
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;->DEVICE_IMAGE_TYPE_RES:[I

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;->showRefreshProgressView()V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;->updateDisconnectButtonVisibility()V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;->hideRefreshProgressView()V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;->mDeviceList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$502(Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;->mDeviceList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$600(Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;->setAdapter(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;->mRefreshProgressView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;->mEmptyView:Landroid/widget/TextView;

    return-object v0
.end method

.method private hideRefreshProgressView()V
    .locals 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;->mRefreshProgressView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;->mRefreshProgressView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 246
    :cond_0
    return-void
.end method

.method private isConnectedDevice()Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 249
    iget-object v4, p0, Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/app/musiclibrary/core/utils/ConnectivityUtils;->isWfdSupported(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;->mContext:Landroid/content/Context;

    .line 250
    invoke-static {v4}, Lcom/samsung/android/app/musiclibrary/core/utils/ConnectivityUtils;->isWfdConnected(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v1, v2

    .line 251
    .local v1, "isWfdConnected":Z
    :goto_0
    iget v4, p0, Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;->mPlayerType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    move v0, v2

    .line 252
    .local v0, "isDmrPlaying":Z
    :goto_1
    const-string v4, "ChangeDevice"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Dialog       | isConnectedDevice() isWfdConnected: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " isDmrPlaying: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    move v3, v2

    :cond_1
    return v3

    .end local v0    # "isDmrPlaying":Z
    .end local v1    # "isWfdConnected":Z
    :cond_2
    move v1, v3

    .line 250
    goto :goto_0

    .restart local v1    # "isWfdConnected":Z
    :cond_3
    move v0, v3

    .line 251
    goto :goto_1
.end method

.method public static newInstance(I)Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;
    .locals 3
    .param p0, "playerType"    # I

    .prologue
    .line 95
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 96
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "player_type"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 98
    new-instance v1, Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;

    invoke-direct {v1}, Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;-><init>()V

    .line 99
    .local v1, "dialog":Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;
    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;->setArguments(Landroid/os/Bundle;)V

    .line 100
    return-object v1
.end method

.method private selectDevice(ILjava/lang/String;)V
    .locals 1
    .param p1, "deviceType"    # I
    .param p2, "selectedDeviceId"    # Ljava/lang/String;

    .prologue
    .line 199
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;->mChangeDeviceController:Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->selectDevice(ILjava/lang/String;)V

    .line 200
    return-void
.end method

.method private setAdapter(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 203
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceInfo;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 204
    :cond_0
    const-string v1, "ChangeDevice"

    const-string v2, "Dialog       | setAdapter() No devices."

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    :goto_0
    return-void

    .line 207
    :cond_1
    new-instance v0, Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog$ChangeDeviceArrayAdapter;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;->mContext:Landroid/content/Context;

    const v2, 0x7f0400aa

    iget-object v3, p0, Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;->mChangeDeviceController:Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;

    .line 209
    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->getSelectedDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog$ChangeDeviceArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;Ljava/lang/String;)V

    .line 210
    .local v0, "adapter":Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog$ChangeDeviceArrayAdapter;
    iget-object v1, p0, Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method private showRefreshProgressView()V
    .locals 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;->mRefreshProgressView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;->mRefreshProgressView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 240
    :cond_0
    return-void
.end method

.method private updateDisconnectButtonVisibility()V
    .locals 3

    .prologue
    .line 229
    iget-object v1, p0, Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;->mAlertDialog:Landroid/app/AlertDialog;

    if-nez v1, :cond_0

    .line 234
    :goto_0
    return-void

    .line 232
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;->mAlertDialog:Landroid/app/AlertDialog;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 233
    .local v0, "disconnect":Landroid/widget/Button;
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;->isConnectedDevice()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    goto :goto_1
.end method

.method private updateListView(Z)V
    .locals 3
    .param p1, "isScanning"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 214
    if-eqz p1, :cond_0

    .line 215
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 216
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 226
    :goto_0
    return-void

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;->mDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 219
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 220
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 222
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 223
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 105
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 106
    if-eqz p1, :cond_0

    .line 107
    const-string/jumbo v0, "saved_instance_state_device_list"

    .line 108
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;->mDeviceList:Ljava/util/ArrayList;

    .line 110
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "player_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;->mPlayerType:I

    .line 111
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;

    .line 112
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;->mPlayerType:I

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;->mChangeDeviceController:Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;

    .line 113
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;->mChangeDeviceController:Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;->mOnChangeDeviceListener:Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$OnChangeDeviceListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->setChangeDeviceListener(Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$OnChangeDeviceListener;)V

    .line 114
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;->mChangeDeviceController:Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->onCreateCalled(Landroid/os/Bundle;)V

    .line 115
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    .line 126
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 127
    .local v0, "activity":Landroid/app/Activity;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 130
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;->mContext:Landroid/content/Context;

    .line 131
    iget-object v5, p0, Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/app/musiclibrary/core/utils/ConnectivityUtils;->isWfdSupported(Landroid/content/Context;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;->mIsWfdSupported:Z

    .line 133
    iget-object v5, p0, Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;->mContext:Landroid/content/Context;

    const-string v6, "layout_inflater"

    .line 134
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 136
    .local v3, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x7f040055

    invoke-virtual {v3, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 137
    .local v4, "v":Landroid/view/View;
    const v5, 0x102000a

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ListView;

    iput-object v5, p0, Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;->mListView:Landroid/widget/ListView;

    .line 138
    iget-object v5, p0, Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 139
    const v5, 0x7f12013e

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;->mEmptyView:Landroid/widget/TextView;

    .line 140
    iget-object v5, p0, Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;->mEmptyView:Landroid/widget/TextView;

    const v6, 0x7f0a008e

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 141
    iget-object v5, p0, Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;->mDeviceList:Ljava/util/ArrayList;

    invoke-direct {p0, v5}, Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;->setAdapter(Ljava/util/ArrayList;)V

    .line 142
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;->updateListView(Z)V

    .line 144
    const v5, 0x7f040058

    invoke-virtual {v3, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 145
    .local v2, "customTitleLayout":Landroid/view/View;
    const v5, 0x7f12017c

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;->mRefreshProgressView:Landroid/view/View;

    .line 146
    iget-object v5, p0, Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;->mRefreshProgressView:Landroid/view/View;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 148
    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0a008a

    .line 149
    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0a011d

    new-instance v7, Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog$1;

    invoke-direct {v7, p0}, Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog$1;-><init>(Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;)V

    .line 150
    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 156
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;->mAlertDialog:Landroid/app/AlertDialog;

    .line 158
    iget-object v5, p0, Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v5
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;->mChangeDeviceController:Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->onDestroyCalled()V

    .line 183
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroy()V

    .line 184
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    .line 188
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const-string v1, "ChangeDevice"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dialog       | onItemClick() position: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceInfo;

    .line 191
    .local v0, "info":Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceInfo;
    if-nez v0, :cond_0

    .line 196
    :goto_0
    return-void

    .line 194
    :cond_0
    iget v1, v0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceInfo;->deviceType:I

    iget-object v2, v0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceInfo;->deviceId:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;->selectDevice(ILjava/lang/String;)V

    .line 195
    iget-object v1, p0, Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;->mChangeDeviceController:Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->onPauseCalled()V

    .line 171
    invoke-super {p0}, Landroid/app/DialogFragment;->onPause()V

    .line 172
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 163
    invoke-super {p0}, Landroid/app/DialogFragment;->onResume()V

    .line 164
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;->mChangeDeviceController:Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->onResumeCalled()V

    .line 165
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;->updateDisconnectButtonVisibility()V

    .line 166
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 119
    const-string/jumbo v0, "saved_instance_state_device_list"

    iget-object v1, p0, Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;->mDeviceList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 120
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;->mChangeDeviceController:Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 121
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 122
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;->mChangeDeviceController:Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->onPauseCalled()V

    .line 177
    invoke-super {p0}, Landroid/app/DialogFragment;->onStop()V

    .line 178
    return-void
.end method
