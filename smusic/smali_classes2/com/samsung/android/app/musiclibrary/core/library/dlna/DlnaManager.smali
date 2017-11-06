.class public final Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;
.super Ljava/lang/Object;
.source "DlnaManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$DmrStatusInfo;,
        Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$OnBindServiceCallback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV-Dlna"

.field private static final TAG:Ljava/lang/String; = "SV-Dlna"

.field private static sDlnaManager:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;


# instance fields
.field private final MEDIA_DELETE_ALL_URI:Landroid/net/Uri;

.field private final MEDIA_RENDERER_URI:Landroid/net/Uri;

.field private final MEDIA_SERVER_CONTENTS_URI:Landroid/net/Uri;

.field private final MEDIA_SERVER_URI:Landroid/net/Uri;

.field private final mContext:Landroid/content/Context;

.field private final mDMRFinderListener:Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;

.field private final mDMSFinderListener:Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;

.field private mDeviceFinder:Lcom/samsung/android/allshare/media/MediaDeviceFinder;

.field private mDlnaDBIndex:I

.field private mDlnaServiceProvider:Lcom/samsung/android/allshare/media/MediaServiceProvider;

.field private mDmsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/allshare/Device;",
            ">;"
        }
    .end annotation
.end field

.field private final mFlatBrowseResponseListener:Lcom/samsung/android/allshare/extension/FlatProvider$IFlatProviderConnection;

.field private mFlatProvider:Lcom/samsung/android/allshare/extension/FlatProvider;

.field private mItemList:Lcom/samsung/android/allshare/extension/UniqueItemArray;

.field private mOnBindServiceCallback:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$OnBindServiceCallback;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "server"    # Landroid/net/Uri;
    .param p3, "serverContent"    # Landroid/net/Uri;
    .param p4, "renderer"    # Landroid/net/Uri;
    .param p5, "deleteAll"    # Landroid/net/Uri;

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 344
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$2;-><init>(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->mDMSFinderListener:Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;

    .line 384
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$3;-><init>(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->mDMRFinderListener:Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;

    .line 418
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$4;-><init>(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->mFlatBrowseResponseListener:Lcom/samsung/android/allshare/extension/FlatProvider$IFlatProviderConnection;

    .line 96
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->mContext:Landroid/content/Context;

    .line 97
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->MEDIA_SERVER_URI:Landroid/net/Uri;

    .line 98
    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->MEDIA_SERVER_CONTENTS_URI:Landroid/net/Uri;

    .line 99
    iput-object p4, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->MEDIA_RENDERER_URI:Landroid/net/Uri;

    .line 100
    iput-object p5, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->MEDIA_DELETE_ALL_URI:Landroid/net/Uri;

    .line 101
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;)Lcom/samsung/android/allshare/media/MediaDeviceFinder;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->mDeviceFinder:Lcom/samsung/android/allshare/media/MediaDeviceFinder;

    return-object v0
.end method

.method static synthetic access$002(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;Lcom/samsung/android/allshare/media/MediaDeviceFinder;)Lcom/samsung/android/allshare/media/MediaDeviceFinder;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;
    .param p1, "x1"    # Lcom/samsung/android/allshare/media/MediaDeviceFinder;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->mDeviceFinder:Lcom/samsung/android/allshare/media/MediaDeviceFinder;

    return-object p1
.end method

.method static synthetic access$100(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;)Lcom/samsung/android/allshare/media/MediaServiceProvider;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->mDlnaServiceProvider:Lcom/samsung/android/allshare/media/MediaServiceProvider;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->MEDIA_SERVER_CONTENTS_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$102(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;Lcom/samsung/android/allshare/media/MediaServiceProvider;)Lcom/samsung/android/allshare/media/MediaServiceProvider;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;
    .param p1, "x1"    # Lcom/samsung/android/allshare/media/MediaServiceProvider;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->mDlnaServiceProvider:Lcom/samsung/android/allshare/media/MediaServiceProvider;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->sendDlnaInfo(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;Lcom/samsung/android/allshare/ERROR;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;
    .param p1, "x1"    # Lcom/samsung/android/allshare/ERROR;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->handleDeviceFinderError(Lcom/samsung/android/allshare/ERROR;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;)Lcom/samsung/android/allshare/extension/FlatProvider;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->mFlatProvider:Lcom/samsung/android/allshare/extension/FlatProvider;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->sendStickyDlnaInfo(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;)Lcom/samsung/android/allshare/extension/UniqueItemArray;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->mItemList:Lcom/samsung/android/allshare/extension/UniqueItemArray;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;Lcom/samsung/android/allshare/extension/UniqueItemArray;)Lcom/samsung/android/allshare/extension/UniqueItemArray;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;
    .param p1, "x1"    # Lcom/samsung/android/allshare/extension/UniqueItemArray;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->mItemList:Lcom/samsung/android/allshare/extension/UniqueItemArray;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    .prologue
    .line 60
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->mDlnaDBIndex:I

    return v0
.end method

.method static synthetic access$1602(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;
    .param p1, "x1"    # I

    .prologue
    .line 60
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->mDlnaDBIndex:I

    return p1
.end method

.method static synthetic access$200(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->updateDmsList()V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;)Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->mDMSFinderListener:Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->updateDmrList()V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;)Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->mDMRFinderListener:Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->sendDlnaInfo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;)Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$OnBindServiceCallback;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->mOnBindServiceCallback:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$OnBindServiceCallback;

    return-object v0
.end method

.method static synthetic access$702(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$OnBindServiceCallback;)Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$OnBindServiceCallback;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;
    .param p1, "x1"    # Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$OnBindServiceCallback;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->mOnBindServiceCallback:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$OnBindServiceCallback;

    return-object p1
.end method

.method static synthetic access$800(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->MEDIA_SERVER_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static createInstance(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "server"    # Landroid/net/Uri;
    .param p2, "serverContent"    # Landroid/net/Uri;
    .param p3, "renderer"    # Landroid/net/Uri;
    .param p4, "deleteAll"    # Landroid/net/Uri;

    .prologue
    .line 117
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->sDlnaManager:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    if-nez v0, :cond_0

    .line 118
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->sDlnaManager:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    .line 120
    :cond_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->sDlnaManager:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    return-object v0
.end method

.method public static getInstance()Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;
    .locals 2

    .prologue
    .line 124
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->sDlnaManager:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    if-nez v0, :cond_0

    .line 125
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Please ensure call createInstance first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->sDlnaManager:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    return-object v0
.end method

.method private handleDeviceFinderError(Lcom/samsung/android/allshare/ERROR;Ljava/lang/String;)V
    .locals 3
    .param p1, "err"    # Lcom/samsung/android/allshare/ERROR;
    .param p2, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 589
    sget-object v1, Lcom/samsung/android/allshare/ERROR;->NETWORK_NOT_AVAILABLE:Lcom/samsung/android/allshare/ERROR;

    invoke-virtual {v1, p1}, Lcom/samsung/android/allshare/ERROR;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 590
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.music.dlna.devicefinder.error"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 591
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.android.app.music.dlna.devicefinder.error.extra"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 593
    const-string v1, "com.sec.android.app.music.dlna.extra.deviceId"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 594
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 596
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private onUpdateDmrDB(Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/allshare/Device;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "dmr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Device;>;"
    const/4 v9, 0x0

    .line 311
    const-string v6, "SV-Dlna"

    const-string v7, "onUpdateDmrDB()"

    invoke-static {v6, v7}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 314
    .local v5, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    const/4 v1, 0x0

    .line 318
    .local v1, "i":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/allshare/Device;

    .line 319
    .local v0, "d":Lcom/samsung/android/allshare/Device;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 320
    .local v4, "value":Landroid/content/ContentValues;
    const-string v6, "_id"

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 321
    const-string v6, "avplayer_id"

    invoke-virtual {v0}, Lcom/samsung/android/allshare/Device;->getID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    const-string v6, "avplayer_name"

    invoke-virtual {v0}, Lcom/samsung/android/allshare/Device;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    invoke-virtual {v0}, Lcom/samsung/android/allshare/Device;->getIcon()Landroid/net/Uri;

    move-result-object v3

    .line 324
    .local v3, "iconUri":Landroid/net/Uri;
    if-eqz v3, :cond_0

    .line 325
    const-string v6, "album_art"

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    :cond_0
    const-string v6, "nic_id"

    invoke-virtual {v0}, Lcom/samsung/android/allshare/Device;->getNIC()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    const-string v8, "is_seekable_on_paused"

    .line 329
    invoke-virtual {v0}, Lcom/samsung/android/allshare/Device;->isSeekableOnPaused()Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    :goto_1
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 328
    invoke-virtual {v4, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 330
    const-string v6, "ip_address"

    invoke-virtual {v0}, Lcom/samsung/android/allshare/Device;->getIPAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v2

    .line 337
    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    .line 329
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    .line 339
    .end local v0    # "d":Lcom/samsung/android/allshare/Device;
    .end local v2    # "i":I
    .end local v3    # "iconUri":Landroid/net/Uri;
    .end local v4    # "value":Landroid/content/ContentValues;
    .restart local v1    # "i":I
    :cond_2
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->MEDIA_RENDERER_URI:Landroid/net/Uri;

    invoke-virtual {v6, v7, v9, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 340
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->MEDIA_RENDERER_URI:Landroid/net/Uri;

    .line 341
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Landroid/content/ContentValues;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/content/ContentValues;

    invoke-virtual {v7, v8, v6}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 342
    return-void
.end method

.method private onUpdateDmsDB(Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/allshare/Device;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "dms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Device;>;"
    const/4 v9, 0x0

    .line 264
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 265
    .local v5, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    const/4 v1, 0x1

    .line 266
    .local v1, "i":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/allshare/Device;

    .line 267
    .local v0, "d":Lcom/samsung/android/allshare/Device;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 268
    .local v4, "value":Landroid/content/ContentValues;
    const-string v7, "_id"

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 269
    const-string v7, "provider_id"

    invoke-virtual {v0}, Lcom/samsung/android/allshare/Device;->getID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    const-string v7, "provider_name"

    invoke-virtual {v0}, Lcom/samsung/android/allshare/Device;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    invoke-virtual {v0}, Lcom/samsung/android/allshare/Device;->getIcon()Landroid/net/Uri;

    move-result-object v3

    .line 273
    .local v3, "iconUri":Landroid/net/Uri;
    if-eqz v3, :cond_0

    .line 274
    const-string v7, "album_art"

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    :cond_0
    const-string v7, "nic_id"

    invoke-virtual {v0}, Lcom/samsung/android/allshare/Device;->getNIC()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v2

    .line 283
    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    .line 289
    .end local v0    # "d":Lcom/samsung/android/allshare/Device;
    .end local v3    # "iconUri":Landroid/net/Uri;
    .end local v4    # "value":Landroid/content/ContentValues;
    :cond_1
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->MEDIA_SERVER_URI:Landroid/net/Uri;

    invoke-virtual {v6, v7, v9, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 290
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->MEDIA_SERVER_URI:Landroid/net/Uri;

    .line 291
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Landroid/content/ContentValues;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/content/ContentValues;

    invoke-virtual {v7, v8, v6}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 292
    return-void
.end method

.method private sendDlnaInfo(Ljava/lang/String;)V
    .locals 2
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 616
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->sendDlnaInfo(Ljava/lang/String;ILjava/lang/String;)V

    .line 617
    return-void
.end method

.method private sendDlnaInfo(Ljava/lang/String;ILjava/lang/String;)V
    .locals 4
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "what"    # I
    .param p3, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 620
    const-string v1, "SV-Dlna"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendDlnaInfo() - action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " extraWhat: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " extraDeviceId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 625
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.android.app.music.dlna.connectivitychanged"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 626
    const-string v1, "com.sec.android.app.music.dlna.connectivitychanged.extra.what"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 627
    const-string v1, "com.sec.android.app.music.dlna.extra.deviceId"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 629
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 630
    return-void
.end method

.method private sendStickyDlnaInfo(Ljava/lang/String;ILjava/lang/String;)V
    .locals 4
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "what"    # I
    .param p3, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 599
    const-string v1, "SV-Dlna"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendStickyDlnaInfo() - action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " extraWhat: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " extraDeviceId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 608
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.android.app.music.dlna.flat.searching.info"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 609
    const-string v1, "com.sec.android.app.music.dlna.flat.searching.extra.what"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 610
    const-string v1, "com.sec.android.app.music.dlna.extra.deviceId"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 612
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 613
    return-void
.end method

.method private updateDmrList()V
    .locals 4

    .prologue
    .line 299
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->mDeviceFinder:Lcom/samsung/android/allshare/media/MediaDeviceFinder;

    sget-object v2, Lcom/samsung/android/allshare/Device$DeviceType;->DEVICE_AVPLAYER:Lcom/samsung/android/allshare/Device$DeviceType;

    .line 300
    invoke-virtual {v1, v2}, Lcom/samsung/android/allshare/media/MediaDeviceFinder;->getDevices(Lcom/samsung/android/allshare/Device$DeviceType;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/samsung/android/allshare/extension/DeviceChecker;->getDeviceCheckedList(Ljava/util/ArrayList;Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 303
    .local v0, "dmrList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Device;>;"
    if-nez v0, :cond_0

    .line 308
    :goto_0
    return-void

    .line 306
    :cond_0
    const-string v1, "SV-Dlna"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateDMRList() mDMRList.size()? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->onUpdateDmrDB(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method private updateDmsList()V
    .locals 4

    .prologue
    .line 245
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->mDeviceFinder:Lcom/samsung/android/allshare/media/MediaDeviceFinder;

    sget-object v2, Lcom/samsung/android/allshare/Device$DeviceType;->DEVICE_PROVIDER:Lcom/samsung/android/allshare/Device$DeviceType;

    .line 246
    invoke-virtual {v1, v2}, Lcom/samsung/android/allshare/media/MediaDeviceFinder;->getDevices(Lcom/samsung/android/allshare/Device$DeviceType;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/samsung/android/allshare/extension/DeviceChecker;->getDeviceCheckedList(Ljava/util/ArrayList;Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 249
    .local v0, "dms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Device;>;"
    if-nez v0, :cond_0

    .line 250
    const-string v1, "SMUSIC-SV-Dlna"

    const-string/jumbo v2, "updateDmsList() dms is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :goto_0
    return-void

    .line 253
    :cond_0
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->onUpdateDmsDB(Ljava/util/ArrayList;)V

    .line 254
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->mDmsList:Ljava/util/ArrayList;

    .line 255
    const-string v1, "SV-Dlna"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateDmsList() mDmsList.size()? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->mDmsList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public bindDlnaService()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 158
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->MEDIA_DELETE_ALL_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 159
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;)V

    const-string v2, "com.samsung.android.allshare.media"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/allshare/ServiceConnector;->createServiceProvider(Landroid/content/Context;Lcom/samsung/android/allshare/ServiceConnector$IServiceConnectEventListener;Ljava/lang/String;)Lcom/samsung/android/allshare/ERROR;

    .line 196
    return-void
.end method

.method public createSecAVPlayer(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayer;
    .locals 6
    .param p1, "dmrId"    # Ljava/lang/String;

    .prologue
    .line 639
    const/4 v2, 0x0

    .line 640
    .local v2, "simpleAVPlayer":Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayer;
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->mDeviceFinder:Lcom/samsung/android/allshare/media/MediaDeviceFinder;

    if-eqz v3, :cond_1

    .line 641
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->mDeviceFinder:Lcom/samsung/android/allshare/media/MediaDeviceFinder;

    sget-object v4, Lcom/samsung/android/allshare/Device$DeviceType;->DEVICE_AVPLAYER:Lcom/samsung/android/allshare/Device$DeviceType;

    .line 642
    invoke-virtual {v3, v4}, Lcom/samsung/android/allshare/media/MediaDeviceFinder;->getDevices(Lcom/samsung/android/allshare/Device$DeviceType;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->mContext:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/samsung/android/allshare/extension/DeviceChecker;->getDeviceCheckedList(Ljava/util/ArrayList;Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    .line 644
    .local v1, "dmrList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Device;>;"
    if-eqz v1, :cond_1

    .line 645
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/allshare/Device;

    .line 646
    .local v0, "d":Lcom/samsung/android/allshare/Device;
    invoke-virtual {v0}, Lcom/samsung/android/allshare/Device;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 647
    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayer;

    .end local v2    # "simpleAVPlayer":Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayer;
    move-object v3, v0

    check-cast v3, Lcom/samsung/android/allshare/media/AVPlayer;

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayer;-><init>(Lcom/samsung/android/allshare/media/AVPlayer;Landroid/content/Context;)V

    .line 648
    .restart local v2    # "simpleAVPlayer":Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayer;
    invoke-virtual {v2, v0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayer;->setDmrStatusInfo(Lcom/samsung/android/allshare/Device;)V

    .line 654
    .end local v0    # "d":Lcom/samsung/android/allshare/Device;
    .end local v1    # "dmrList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Device;>;"
    :cond_1
    const-string v3, "SV-Dlna"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createSecAVPlayer() - simpleAVPlayer: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    return-object v2
.end method

.method public refresh()V
    .locals 2

    .prologue
    .line 202
    const-string v0, "SV-Dlna"

    const-string/jumbo v1, "refresh()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->mDeviceFinder:Lcom/samsung/android/allshare/media/MediaDeviceFinder;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->mDeviceFinder:Lcom/samsung/android/allshare/media/MediaDeviceFinder;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/MediaDeviceFinder;->refresh()V

    .line 206
    :cond_0
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 141
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->mDlnaServiceProvider:Lcom/samsung/android/allshare/media/MediaServiceProvider;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->mDlnaServiceProvider:Lcom/samsung/android/allshare/media/MediaServiceProvider;

    invoke-static {v0}, Lcom/samsung/android/allshare/ServiceConnector;->deleteServiceProvider(Lcom/samsung/android/allshare/ServiceProvider;)V

    .line 143
    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->mDlnaServiceProvider:Lcom/samsung/android/allshare/media/MediaServiceProvider;

    .line 145
    :cond_0
    sput-object v1, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->sDlnaManager:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    .line 146
    const-string v0, "SV-Dlna"

    const-string/jumbo v1, "release() is completed."

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method public searchAudioContents(Ljava/lang/String;)V
    .locals 7
    .param p1, "dmsId"    # Ljava/lang/String;

    .prologue
    .line 214
    const-string v4, "SV-Dlna"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "searchAudioContents() mDMSList.size()? "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->mDmsList:Ljava/util/ArrayList;

    .line 215
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " DMS id : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 214
    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->mFlatProvider:Lcom/samsung/android/allshare/extension/FlatProvider;

    if-eqz v4, :cond_0

    .line 218
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->mFlatProvider:Lcom/samsung/android/allshare/extension/FlatProvider;

    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->mFlatBrowseResponseListener:Lcom/samsung/android/allshare/extension/FlatProvider$IFlatProviderConnection;

    invoke-virtual {v4, v5}, Lcom/samsung/android/allshare/extension/FlatProvider;->cancelFlatBrowse(Lcom/samsung/android/allshare/extension/FlatProvider$IFlatProviderConnection;)V

    .line 221
    :cond_0
    const/4 v1, 0x0

    .line 222
    .local v1, "isValid":Z
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->mDmsList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 223
    .local v2, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 224
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->mDmsList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/allshare/media/Provider;

    .line 225
    .local v3, "provider":Lcom/samsung/android/allshare/media/Provider;
    new-instance v4, Lcom/samsung/android/allshare/extension/FlatProvider;

    invoke-direct {v4, v3}, Lcom/samsung/android/allshare/extension/FlatProvider;-><init>(Lcom/samsung/android/allshare/media/Provider;)V

    iput-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->mFlatProvider:Lcom/samsung/android/allshare/extension/FlatProvider;

    .line 226
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->mFlatProvider:Lcom/samsung/android/allshare/extension/FlatProvider;

    invoke-virtual {v4}, Lcom/samsung/android/allshare/extension/FlatProvider;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 227
    const-string v4, "SV-Dlna"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "searchAudioContents() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->mFlatProvider:Lcom/samsung/android/allshare/extension/FlatProvider;

    invoke-virtual {v6}, Lcom/samsung/android/allshare/extension/FlatProvider;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is a valid provider device and start search audio items"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->mFlatProvider:Lcom/samsung/android/allshare/extension/FlatProvider;

    sget-object v5, Lcom/samsung/android/allshare/Item$MediaType;->ITEM_AUDIO:Lcom/samsung/android/allshare/Item$MediaType;

    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->mFlatBrowseResponseListener:Lcom/samsung/android/allshare/extension/FlatProvider$IFlatProviderConnection;

    .line 231
    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/allshare/extension/FlatProvider;->startFlatBrowse(Lcom/samsung/android/allshare/Item$MediaType;Lcom/samsung/android/allshare/extension/FlatProvider$IFlatProviderConnection;)V

    .line 232
    const/4 v1, 0x1

    .line 236
    .end local v3    # "provider":Lcom/samsung/android/allshare/media/Provider;
    :cond_1
    if-nez v1, :cond_2

    .line 237
    const-string v4, "SV-Dlna"

    const-string/jumbo v5, "searchAudioContents() there is no match provider."

    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    :cond_2
    return-void

    .line 223
    .restart local v3    # "provider":Lcom/samsung/android/allshare/media/Provider;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setOnBindServiceCallback(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$OnBindServiceCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$OnBindServiceCallback;

    .prologue
    .line 659
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->mOnBindServiceCallback:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$OnBindServiceCallback;

    .line 660
    return-void
.end method
