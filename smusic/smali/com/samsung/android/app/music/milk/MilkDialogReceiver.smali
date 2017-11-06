.class public Lcom/samsung/android/app/music/milk/MilkDialogReceiver;
.super Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacksAdapter;
.source "MilkDialogReceiver.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;
.implements Lcom/samsung/android/app/music/milk/MilkDialogUri;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/MilkDialogReceiver$DialogMessage;,
        Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;
    }
.end annotation


# static fields
.field public static final LOG_TAG:Ljava/lang/String;

.field private static final URI_MATCHER:Landroid/content/UriMatcher;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mFragmentManager:Landroid/app/FragmentManager;

.field private mIsPaused:Z

.field private mPendingMessage:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/milk/MilkDialogReceiver$DialogMessage;",
            ">;"
        }
    .end annotation
.end field

.field mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 42
    const-class v0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->LOG_TAG:Ljava/lang/String;

    .line 48
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->URI_MATCHER:Landroid/content/UriMatcher;

    .line 67
    sget-object v0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music.main-page"

    const-string v2, "login-failed"

    sget-object v3, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;->ACCOUNT_LOGIN_FAILED:Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;->ordinal()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 68
    sget-object v0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music.main-page"

    const-string/jumbo v2, "online-playlist-sync"

    sget-object v3, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;->ONLINE_PLAYLIST_SYNC:Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;->ordinal()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 69
    sget-object v0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music.main-page"

    const-string v2, "explicit-invalid/*"

    sget-object v3, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;->EXPLICIT_INVALID:Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;->ordinal()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 70
    sget-object v0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music.main-page"

    const-string/jumbo v2, "show-upsell"

    sget-object v3, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;->SHOW_UPSELL:Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;->ordinal()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 71
    sget-object v0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music.main-page"

    const-string v2, "drm-expired"

    sget-object v3, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;->DRM_EXPIRED:Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;->ordinal()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 72
    sget-object v0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music.main-page"

    const-string v2, "network_transport_init_failed"

    sget-object v3, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;->NETWORK_TRANSPORT_INIT_FAILED:Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;->ordinal()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 73
    sget-object v0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music.main-page"

    const-string v2, "downloading_device_overflow"

    sget-object v3, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;->DOWNLOAD_DEVICE_OVERFLOW:Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;->ordinal()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 74
    sget-object v0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music.main-page"

    const-string v2, "drm_license_acquire_again"

    sget-object v3, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;->DRM_LICENSE_ACQUIRE_AGAIN:Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;->ordinal()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacksAdapter;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->mIsPaused:Z

    .line 201
    new-instance v0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$4;-><init>(Lcom/samsung/android/app/music/milk/MilkDialogReceiver;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 79
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->mActivity:Landroid/app/Activity;

    .line 80
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->mFragmentManager:Landroid/app/FragmentManager;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->mPendingMessage:Ljava/util/ArrayList;

    .line 82
    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/WindowFocusObservable;

    .end local p1    # "activity":Landroid/app/Activity;
    invoke-interface {p1, p0}, Lcom/samsung/android/app/musiclibrary/ui/WindowFocusObservable;->addOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V

    .line 83
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/milk/MilkDialogReceiver;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/MilkDialogReceiver;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->launchProducActivity()V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/milk/MilkDialogReceiver;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/MilkDialogReceiver;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$200()Landroid/content/UriMatcher;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->URI_MATCHER:Landroid/content/UriMatcher;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/milk/MilkDialogReceiver;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/MilkDialogReceiver;

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->mIsPaused:Z

    return v0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/music/milk/MilkDialogReceiver;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/MilkDialogReceiver;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->mPendingMessage:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/app/music/milk/MilkDialogReceiver;Lcom/samsung/android/app/music/milk/MilkDialogReceiver$DialogMessage;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/MilkDialogReceiver;
    .param p1, "x1"    # Lcom/samsung/android/app/music/milk/MilkDialogReceiver$DialogMessage;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->handleMessage(Lcom/samsung/android/app/music/milk/MilkDialogReceiver$DialogMessage;)V

    return-void
.end method

.method private handleMessage(Lcom/samsung/android/app/music/milk/MilkDialogReceiver$DialogMessage;)V
    .locals 12
    .param p1, "message"    # Lcom/samsung/android/app/music/milk/MilkDialogReceiver$DialogMessage;

    .prologue
    const v11, 0x7f0a02c6

    const v10, 0x7f0a008a

    const v9, 0x80002

    const/4 v8, 0x1

    .line 95
    sget-object v5, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleMessage action : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 96
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$DialogMessage;->getAction()Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 95
    invoke-static {v5, v6}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const/4 v0, 0x0

    .line 98
    .local v0, "bundle":Landroid/os/Bundle;
    sget-object v5, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$5;->$SwitchMap$com$samsung$android$app$music$milk$MilkDialogReceiver$Action:[I

    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$DialogMessage;->getAction()Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 179
    :goto_0
    :pswitch_0
    return-void

    .line 102
    :pswitch_1
    new-instance v5, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;

    iget-object v6, p0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->mActivity:Landroid/app/Activity;

    invoke-direct {v5, v6}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0a0315

    .line 103
    invoke-virtual {v5, v6}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->setTitle(I)Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0a0314

    .line 104
    invoke-virtual {v5, v6}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->setMessage(I)Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->create()Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->mFragmentManager:Landroid/app/FragmentManager;

    const-string/jumbo v7, "playlistSync"

    .line 105
    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 109
    :pswitch_2
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$DialogMessage;->getPathSegment()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit16 v2, v5, 0x2710

    .line 110
    .local v2, "explicitType":I
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    iget-object v6, p0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->mActivity:Landroid/app/Activity;

    .line 111
    invoke-static {v6, v2}, Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayingUri;->getMessage(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    .line 110
    invoke-static {v5, v2, v6}, Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayerMessageFactory;->createMessage(Landroid/os/Bundle;ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 112
    const-string v5, "explicit_popup"

    invoke-virtual {v0, v5, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 113
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->mActivity:Landroid/app/Activity;

    invoke-static {v5, v0, v9}, Lcom/samsung/android/app/music/common/activity/StreamingServerMessageReceiver;->showMessage(Landroid/app/Activity;Landroid/os/Bundle;I)V

    goto :goto_0

    .line 116
    .end local v2    # "explicitType":I
    :pswitch_3
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const/16 v6, 0x2ee0

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayerMessageFactory;->createMessage(Landroid/os/Bundle;ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 117
    const-string/jumbo v5, "upsell_popup"

    invoke-virtual {v0, v5, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 118
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->mActivity:Landroid/app/Activity;

    invoke-static {v5, v0, v9}, Lcom/samsung/android/app/music/common/activity/StreamingServerMessageReceiver;->showMessage(Landroid/app/Activity;Landroid/os/Bundle;I)V

    goto :goto_0

    .line 121
    :pswitch_4
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->mFragmentManager:Landroid/app/FragmentManager;

    const-string v6, "DRM_EXPIRED_DIALOG_FRAGMENT_TAG"

    invoke-virtual {v5, v6}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v4

    check-cast v4, Landroid/app/DialogFragment;

    .line 123
    .local v4, "showingDialog":Landroid/app/DialogFragment;
    if-nez v4, :cond_0

    .line 124
    new-instance v5, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;

    iget-object v6, p0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->mActivity:Landroid/app/Activity;

    invoke-direct {v5, v6}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v6, "932"

    .line 125
    invoke-virtual {v5, v6}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->setScreenId(Ljava/lang/String;)Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0a02c8

    .line 126
    invoke-virtual {v5, v6}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->setTitle(I)Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0a02c7

    .line 127
    invoke-virtual {v5, v6}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->setMessage(I)Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0a027a

    const-string v7, "9336"

    new-instance v8, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$2;

    invoke-direct {v8, p0}, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$2;-><init>(Lcom/samsung/android/app/music/milk/MilkDialogReceiver;)V

    .line 128
    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->setPositiveButton(ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v5

    const-string v6, "9335"

    new-instance v7, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$1;

    invoke-direct {v7, p0}, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$1;-><init>(Lcom/samsung/android/app/music/milk/MilkDialogReceiver;)V

    .line 134
    invoke-virtual {v5, v10, v6, v7}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->setNegativeButton(ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v5

    .line 140
    invoke-virtual {v5}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->create()Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog;

    move-result-object v1

    .line 141
    .local v1, "dialog":Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog;
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v5}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    .line 142
    .local v3, "ft":Landroid/app/FragmentTransaction;
    const-string v5, "DRM_EXPIRED_DIALOG_FRAGMENT_TAG"

    invoke-virtual {v3, v1, v5}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 143
    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto/16 :goto_0

    .line 145
    .end local v1    # "dialog":Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog;
    .end local v3    # "ft":Landroid/app/FragmentTransaction;
    :cond_0
    sget-object v5, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->LOG_TAG:Ljava/lang/String;

    const-string v6, "DrmExpired dialog is showing"

    invoke-static {v5, v6}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 149
    .end local v4    # "showingDialog":Landroid/app/DialogFragment;
    :pswitch_5
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->mActivity:Landroid/app/Activity;

    const v6, 0x7f0a02db

    invoke-static {v5, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    .line 150
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 153
    :pswitch_6
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->mActivity:Landroid/app/Activity;

    invoke-static {v5}, Lcom/samsung/android/app/music/milk/util/MilkUtils;->isActivityOnTop(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 154
    new-instance v5, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;

    iget-object v6, p0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->mActivity:Landroid/app/Activity;

    invoke-direct {v5, v6}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0a02bc

    .line 155
    invoke-virtual {v5, v6}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->setTitle(I)Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v5

    .line 156
    invoke-virtual {v5, v11}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->setMessage(I)Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0a0293

    new-instance v7, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$3;

    invoke-direct {v7, p0}, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$3;-><init>(Lcom/samsung/android/app/music/milk/MilkDialogReceiver;)V

    .line 157
    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v5

    .line 167
    invoke-virtual {v5, v10}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->setNegativeButton(I)Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->create()Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->mActivity:Landroid/app/Activity;

    .line 168
    invoke-virtual {v6}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    const-string v7, "DOWNLOAD_DEVICE_OVERFLOW_TAG"

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 171
    :cond_1
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->mActivity:Landroid/app/Activity;

    invoke-static {v5, v11, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    .line 172
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 176
    :pswitch_7
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->mActivity:Landroid/app/Activity;

    const v6, 0x7f0a00a7

    invoke-static {v5, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 98
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private invokePendingMessage()V
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->mIsPaused:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->mPendingMessage:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 195
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->mPendingMessage:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->mPendingMessage:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$DialogMessage;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->handleMessage(Lcom/samsung/android/app/music/milk/MilkDialogReceiver$DialogMessage;)V

    goto :goto_0

    .line 199
    :cond_0
    return-void
.end method

.method private launchProducActivity()V
    .locals 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->mActivity:Landroid/app/Activity;

    sget-object v1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->PRODUCT_TAB:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    .line 183
    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->getString()Ljava/lang/String;

    move-result-object v1

    .line 182
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionActivity;->launchMySubscriptionActivity(Landroid/app/Activity;Ljava/lang/String;)V

    .line 184
    return-void
.end method


# virtual methods
.method public getIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 229
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 230
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ATTACH_DATA"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 231
    const-string v1, "UI_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 232
    const-string v1, "milk"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 233
    return-object v0
.end method

.method public getReceiver()Landroid/content/BroadcastReceiver;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasFocus"    # Z

    .prologue
    .line 188
    if-eqz p1, :cond_0

    .line 189
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->invokePendingMessage()V

    .line 191
    :cond_0
    return-void
.end method

.method public setPause()V
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->mIsPaused:Z

    .line 87
    return-void
.end method

.method public setResume()V
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->mIsPaused:Z

    .line 91
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->invokePendingMessage()V

    .line 92
    return-void
.end method
