.class public abstract Lcom/samsung/android/app/music/milk/share/ShareItemImpl;
.super Ljava/lang/Object;
.source "ShareItemImpl.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/share/IShareItem;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field protected mActivity:Landroid/app/Activity;

.field protected mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/samsung/android/app/music/milk/share/ShareItemImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/milk/share/ShareItemImpl;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/share/ShareItemImpl;->mActivity:Landroid/app/Activity;

    .line 39
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/share/ShareItemImpl;->mContext:Landroid/content/Context;

    .line 40
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/share/ShareItemImpl;->initialize()V

    .line 41
    return-void
.end method

.method private decodeURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 107
    if-eqz p1, :cond_0

    .line 109
    :try_start_0
    const-string v1, "UTF-8"

    invoke-static {p1, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 114
    .end local p1    # "url":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 110
    .restart local p1    # "url":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method private getDeepLinkCmd(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "encodingDeepLinkURL"    # Ljava/lang/String;

    .prologue
    .line 141
    const/4 v2, 0x0

    .line 143
    .local v2, "ret":Ljava/lang/String;
    :try_start_0
    const-string v4, "deeplink="

    .line 144
    .local v4, "startDeepLinkString":Ljava/lang/String;
    const-string v5, "UTF-8"

    invoke-static {p1, v5}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, "deeplinkCmd":Ljava/lang/String;
    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 146
    .local v3, "startCmdIndex":I
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 151
    .end local v0    # "deeplinkCmd":Ljava/lang/String;
    .end local v3    # "startCmdIndex":I
    .end local v4    # "startDeepLinkString":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 147
    :catch_0
    move-exception v1

    .line 148
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method private getShareTypeText(I)Ljava/lang/String;
    .locals 3
    .param p1, "seedType"    # I

    .prologue
    .line 156
    packed-switch p1, :pswitch_data_0

    .line 173
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/share/ShareItemImpl;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0396

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 176
    .local v0, "result":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 158
    .end local v0    # "result":Ljava/lang/String;
    :pswitch_0
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/share/ShareItemImpl;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0395

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 159
    .restart local v0    # "result":Ljava/lang/String;
    goto :goto_0

    .line 161
    .end local v0    # "result":Ljava/lang/String;
    :pswitch_1
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/share/ShareItemImpl;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0391

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 162
    .restart local v0    # "result":Ljava/lang/String;
    goto :goto_0

    .line 164
    .end local v0    # "result":Ljava/lang/String;
    :pswitch_2
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/share/ShareItemImpl;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0392

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 165
    .restart local v0    # "result":Ljava/lang/String;
    goto :goto_0

    .line 167
    .end local v0    # "result":Ljava/lang/String;
    :pswitch_3
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/share/ShareItemImpl;->mContext:Landroid/content/Context;

    const v2, 0x7f0a03c4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 168
    .restart local v0    # "result":Ljava/lang/String;
    goto :goto_0

    .line 170
    .end local v0    # "result":Ljava/lang/String;
    :pswitch_4
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/share/ShareItemImpl;->mContext:Landroid/content/Context;

    const v2, 0x7f0a02dd

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 171
    .restart local v0    # "result":Ljava/lang/String;
    goto :goto_0

    .line 156
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private parseUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 99
    if-eqz p1, :cond_0

    .line 100
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 103
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private parsingArrayList(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 6
    .param p2, "seedlist"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/DeepLinkSeed;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 118
    .local p1, "deepLinkSeedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/DeepLinkSeed;>;"
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 138
    :cond_0
    return-void

    .line 122
    :cond_1
    const-string v5, "@"

    invoke-virtual {p2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 124
    .local v3, "seedList":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v3

    if-ge v1, v5, :cond_0

    .line 125
    aget-object v4, v3, v1

    .line 126
    .local v4, "seedUnit":Ljava/lang/String;
    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 129
    .local v2, "seed":[Ljava/lang/String;
    :try_start_0
    new-instance v0, Lcom/samsung/android/app/music/common/model/DeepLinkSeed;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/model/DeepLinkSeed;-><init>()V

    .line 130
    .local v0, "deepLinkSeed":Lcom/samsung/android/app/music/common/model/DeepLinkSeed;
    const/4 v5, 0x0

    aget-object v5, v2, v5

    iput-object v5, v0, Lcom/samsung/android/app/music/common/model/DeepLinkSeed;->seedType:Ljava/lang/String;

    .line 131
    const/4 v5, 0x1

    aget-object v5, v2, v5

    iput-object v5, v0, Lcom/samsung/android/app/music/common/model/DeepLinkSeed;->seedID:Ljava/lang/String;

    .line 132
    const/4 v5, 0x2

    aget-object v5, v2, v5

    invoke-direct {p0, v5}, Lcom/samsung/android/app/music/milk/share/ShareItemImpl;->decodeURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/samsung/android/app/music/common/model/DeepLinkSeed;->seedName:Ljava/lang/String;

    .line 133
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    .end local v0    # "deepLinkSeed":Lcom/samsung/android/app/music/common/model/DeepLinkSeed;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 134
    :catch_0
    move-exception v5

    goto :goto_1
.end method


# virtual methods
.method protected getCoverArtImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "imageUrl"    # Ljava/lang/String;

    .prologue
    .line 89
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/share/ShareItemImpl;->mContext:Landroid/content/Context;

    .line 90
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d004d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 91
    .local v2, "size":I
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->getOptions()Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    .line 92
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/share/ShareItemImpl;->mContext:Landroid/content/Context;

    .line 93
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/share/ShareItemImpl;->parseUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v2, v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->loadArtwork(Landroid/content/Context;Landroid/net/Uri;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 95
    .local v0, "image":Landroid/graphics/Bitmap;
    return-object v0
.end method

.method public abstract onSendButtonClicked(Lcom/samsung/android/app/music/common/model/share/ShareData;)V
.end method

.method protected showEditDialog(Lcom/samsung/android/app/music/common/model/share/ShareData;Ljava/lang/String;)V
    .locals 8
    .param p1, "shareData"    # Lcom/samsung/android/app/music/common/model/share/ShareData;
    .param p2, "snsName"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v4

    const-string v5, "832"

    invoke-virtual {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;)V

    .line 46
    new-instance v2, Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog;

    .line 47
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/share/ShareItemImpl;->getSharedType()I

    move-result v4

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/share/ShareData;->getDialogText1()Ljava/lang/String;

    move-result-object v5

    .line 48
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/share/ShareData;->getDialogText2()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/share/ShareData;->getCoverArtUrl()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .local v2, "editDialog":Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog;
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/share/ShareItemImpl;->mContext:Landroid/content/Context;

    const v5, 0x7f0a0452

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 50
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/share/ShareData;->getSeedType()I

    move-result v7

    invoke-direct {p0, v7}, Lcom/samsung/android/app/music/milk/share/ShareItemImpl;->getShareTypeText(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    .line 49
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog;->setTitle(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/share/ShareData;->getExtraText()Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, "defaultMsg":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/share/ShareData;->getExtraText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog;->setMessage(Ljava/lang/String;)V

    .line 53
    new-instance v4, Lcom/samsung/android/app/music/milk/share/ShareItemImpl$1;

    invoke-direct {v4, p0, v2}, Lcom/samsung/android/app/music/milk/share/ShareItemImpl$1;-><init>(Lcom/samsung/android/app/music/milk/share/ShareItemImpl;Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog;)V

    invoke-virtual {v2, v4}, Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog;->setNegativeButtonOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    new-instance v4, Lcom/samsung/android/app/music/milk/share/ShareItemImpl$2;

    invoke-direct {v4, p0, v2, p1}, Lcom/samsung/android/app/music/milk/share/ShareItemImpl$2;-><init>(Lcom/samsung/android/app/music/milk/share/ShareItemImpl;Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog;Lcom/samsung/android/app/music/common/model/share/ShareData;)V

    invoke-virtual {v2, v4}, Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog;->setPositiveButtonOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/share/ShareItemImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    .line 81
    .local v3, "ft":Landroid/app/FragmentTransaction;
    const-string v4, "SHARE_VIA_CHOOSER_DIALOG_FRAGMENT_TAG"

    invoke-virtual {v3, v2, v4}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 82
    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    .end local v3    # "ft":Landroid/app/FragmentTransaction;
    :goto_0
    return-void

    .line 83
    :catch_0
    move-exception v1

    .line 84
    .local v1, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/samsung/android/app/music/milk/share/ShareItemImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "showEditDialog >> Exception occurred : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
