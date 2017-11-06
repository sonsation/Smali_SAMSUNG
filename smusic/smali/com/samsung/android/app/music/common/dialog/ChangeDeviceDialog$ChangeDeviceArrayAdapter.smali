.class Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog$ChangeDeviceArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ChangeDeviceDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ChangeDeviceArrayAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mAlbumSize:I

.field private final mContext:Landroid/content/Context;

.field private final mScannedDeviceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mSelectedDeviceId:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;ILjava/util/ArrayList;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "textViewResourceId"    # I
    .param p4, "selectedDeviceId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 323
    .local p3, "objects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceInfo;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 324
    iput-object p1, p0, Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog$ChangeDeviceArrayAdapter;->mContext:Landroid/content/Context;

    .line 325
    iput-object p3, p0, Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog$ChangeDeviceArrayAdapter;->mScannedDeviceList:Ljava/util/ArrayList;

    .line 326
    iput-object p4, p0, Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog$ChangeDeviceArrayAdapter;->mSelectedDeviceId:Ljava/lang/String;

    .line 327
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0064

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog$ChangeDeviceArrayAdapter;->mAlbumSize:I

    .line 328
    return-void
.end method

.method private isSelectedDevice(Ljava/lang/String;)Z
    .locals 1
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 401
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog$ChangeDeviceArrayAdapter;->mSelectedDeviceId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog$ChangeDeviceArrayAdapter;->mSelectedDeviceId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setDescription(Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceInfo;Landroid/view/View;)V
    .locals 5
    .param p1, "info"    # Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceInfo;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 384
    const v3, 0x7f120231

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 385
    .local v1, "name":Landroid/widget/TextView;
    iget-object v3, p1, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceInfo;->deviceName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 387
    const v3, 0x7f120232

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 388
    .local v0, "description":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog$ChangeDeviceArrayAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 389
    .local v2, "res":Landroid/content/res/Resources;
    iget-object v3, p1, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceInfo;->deviceId:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog$ChangeDeviceArrayAdapter;->isSelectedDevice(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 390
    const v3, 0x7f110055

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 391
    const v3, 0x7f0a008b

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 398
    :goto_0
    return-void

    .line 393
    :cond_0
    const v3, 0x7f110099

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 394
    iget v3, p1, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceInfo;->deviceType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    const v3, 0x7f0a008c

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_1
    const v3, 0x7f0a008d

    goto :goto_1
.end method

.method private setDmrIcon(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 2
    .param p1, "iv"    # Landroid/widget/ImageView;
    .param p2, "uri"    # Ljava/lang/String;

    .prologue
    .line 373
    const v0, 0x7f0d0064

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader;->withDimension(I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;->withFullUri(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;

    move-result-object v0

    const v1, 0x7f0200ea

    .line 374
    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;->loadToImageView(Landroid/widget/ImageView;I)V

    .line 375
    return-void
.end method

.method private setIcon(Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceInfo;Landroid/view/View;)V
    .locals 3
    .param p1, "info"    # Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceInfo;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 347
    const v1, 0x7f120230

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 349
    .local v0, "icon":Landroid/widget/ImageView;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 351
    iget v1, p1, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceInfo;->deviceType:I

    packed-switch v1, :pswitch_data_0

    .line 370
    :goto_0
    return-void

    .line 353
    :pswitch_0
    iget-object v1, p1, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceInfo;->albumArtUriStr:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 355
    const v1, 0x7f0200ea

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 356
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog$ChangeDeviceArrayAdapter;->setIconColorFilter(Landroid/widget/ImageView;)V

    goto :goto_0

    .line 359
    :cond_0
    iget-object v1, p1, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceInfo;->albumArtUriStr:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog$ChangeDeviceArrayAdapter;->setDmrIcon(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_0

    .line 364
    :pswitch_1
    invoke-static {}, Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog;->access$1300()[I

    move-result-object v1

    iget v2, p1, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceInfo;->wfdDeviceType:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 365
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog$ChangeDeviceArrayAdapter;->setIconColorFilter(Landroid/widget/ImageView;)V

    goto :goto_0

    .line 351
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setIconColorFilter(Landroid/widget/ImageView;)V
    .locals 3
    .param p1, "icon"    # Landroid/widget/ImageView;

    .prologue
    .line 380
    new-instance v0, Landroid/graphics/LightingColorFilter;

    const/4 v1, 0x0

    const v2, 0x919799

    invoke-direct {v0, v1, v2}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 381
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 332
    if-nez p2, :cond_0

    .line 333
    iget-object v1, p0, Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog$ChangeDeviceArrayAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0400aa

    const/4 v3, 0x0

    .line 334
    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 336
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog$ChangeDeviceArrayAdapter;->mScannedDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceInfo;

    .line 337
    .local v0, "info":Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceInfo;
    const-string v1, "ChangeDevice"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dialog       | getView() position: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " deviceId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceInfo;->deviceId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    invoke-direct {p0, v0, p2}, Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog$ChangeDeviceArrayAdapter;->setIcon(Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceInfo;Landroid/view/View;)V

    .line 341
    invoke-direct {p0, v0, p2}, Lcom/samsung/android/app/music/common/dialog/ChangeDeviceDialog$ChangeDeviceArrayAdapter;->setDescription(Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceInfo;Landroid/view/View;)V

    .line 342
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 343
    return-object p2
.end method
