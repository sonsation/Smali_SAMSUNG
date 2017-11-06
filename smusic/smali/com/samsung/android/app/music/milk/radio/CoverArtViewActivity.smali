.class public Lcom/samsung/android/app/music/milk/radio/CoverArtViewActivity;
.super Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;
.source "CoverArtViewActivity.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CoverArtViewActivity"


# instance fields
.field private buttonCancel:Landroid/widget/ImageView;

.field private cancelArea:Landroid/widget/RelativeLayout;

.field cancelListener:Landroid/view/View$OnClickListener;

.field private defaultImage:Landroid/graphics/Bitmap;

.field private imageUrl:Ljava/lang/String;

.field private final mCallback:Landroid/os/Handler$Callback;

.field private final mImageHandler:Landroid/os/Handler;

.field private thumbnail:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;-><init>()V

    .line 27
    new-instance v0, Lcom/samsung/android/app/music/milk/radio/CoverArtViewActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/radio/CoverArtViewActivity$1;-><init>(Lcom/samsung/android/app/music/milk/radio/CoverArtViewActivity;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/CoverArtViewActivity;->cancelListener:Landroid/view/View$OnClickListener;

    .line 47
    new-instance v0, Lcom/samsung/android/app/music/milk/radio/CoverArtViewActivity$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/radio/CoverArtViewActivity$2;-><init>(Lcom/samsung/android/app/music/milk/radio/CoverArtViewActivity;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/CoverArtViewActivity;->mCallback:Landroid/os/Handler$Callback;

    .line 83
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/CoverArtViewActivity;->mCallback:Landroid/os/Handler$Callback;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/CoverArtViewActivity;->mImageHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/milk/radio/CoverArtViewActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/CoverArtViewActivity;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/CoverArtViewActivity;->thumbnail:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/milk/radio/CoverArtViewActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/CoverArtViewActivity;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/CoverArtViewActivity;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/milk/radio/CoverArtViewActivity;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/CoverArtViewActivity;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/CoverArtViewActivity;->defaultImage:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$202(Lcom/samsung/android/app/music/milk/radio/CoverArtViewActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/CoverArtViewActivity;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/CoverArtViewActivity;->defaultImage:Landroid/graphics/Bitmap;

    return-object p1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 87
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 89
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v5

    const-string v6, "902"

    invoke-virtual {v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;)V

    .line 91
    const v5, 0x7f040106

    invoke-virtual {p0, v5}, Lcom/samsung/android/app/music/milk/radio/CoverArtViewActivity;->setContentView(I)V

    .line 93
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/CoverArtViewActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 94
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    .line 98
    :cond_0
    const v5, 0x7f1202fe

    invoke-virtual {p0, v5}, Lcom/samsung/android/app/music/milk/radio/CoverArtViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/samsung/android/app/music/milk/radio/CoverArtViewActivity;->buttonCancel:Landroid/widget/ImageView;

    .line 99
    const v5, 0x7f1202fd

    invoke-virtual {p0, v5}, Lcom/samsung/android/app/music/milk/radio/CoverArtViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, p0, Lcom/samsung/android/app/music/milk/radio/CoverArtViewActivity;->cancelArea:Landroid/widget/RelativeLayout;

    .line 100
    const v5, 0x7f1202fc

    invoke-virtual {p0, v5}, Lcom/samsung/android/app/music/milk/radio/CoverArtViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/samsung/android/app/music/milk/radio/CoverArtViewActivity;->thumbnail:Landroid/widget/ImageView;

    .line 102
    const v5, 0x7f1202fb

    invoke-virtual {p0, v5}, Lcom/samsung/android/app/music/milk/radio/CoverArtViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 105
    .local v2, "container":Landroid/widget/RelativeLayout;
    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 106
    .local v4, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 107
    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/radio/CoverArtViewActivity;->buttonCancel:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/samsung/android/app/music/milk/radio/CoverArtViewActivity;->cancelListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/radio/CoverArtViewActivity;->cancelArea:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/samsung/android/app/music/milk/radio/CoverArtViewActivity;->cancelListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/radio/CoverArtViewActivity;->thumbnail:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/samsung/android/app/music/milk/radio/CoverArtViewActivity;->cancelListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/CoverArtViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 115
    .local v3, "i":Landroid/content/Intent;
    const-string v5, ""

    iput-object v5, p0, Lcom/samsung/android/app/music/milk/radio/CoverArtViewActivity;->imageUrl:Ljava/lang/String;

    .line 117
    if-eqz v3, :cond_1

    .line 118
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 119
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.samsung.radio.ACTION_VIEW_COVER_ART"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 120
    const-string v5, "image_url"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/app/music/milk/radio/CoverArtViewActivity;->imageUrl:Ljava/lang/String;

    .line 125
    :cond_1
    const-string v5, "CoverArtViewActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onCreate : image Url : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/app/music/milk/radio/CoverArtViewActivity;->imageUrl:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/radio/CoverArtViewActivity;->imageUrl:Ljava/lang/String;

    if-eqz v5, :cond_2

    const-string v5, "none"

    iget-object v6, p0, Lcom/samsung/android/app/music/milk/radio/CoverArtViewActivity;->imageUrl:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "null"

    iget-object v6, p0, Lcom/samsung/android/app/music/milk/radio/CoverArtViewActivity;->imageUrl:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 128
    const v5, 0x7f0d0062

    invoke-static {v5}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader;->withDimension(I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/app/music/milk/radio/CoverArtViewActivity;->imageUrl:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;->withFullUri(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/app/music/milk/radio/CoverArtViewActivity;->mImageHandler:Landroid/os/Handler;

    .line 129
    invoke-virtual {v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;->loadToHandler(Landroid/os/Handler;)V

    .line 136
    :goto_0
    return-void

    .line 131
    :cond_2
    const-string v5, "CoverArtViewActivity"

    const-string/jumbo v6, "onCreate : image Url is null or none"

    invoke-static {v5, v6}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/CoverArtViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020249

    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 134
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/radio/CoverArtViewActivity;->thumbnail:Landroid/widget/ImageView;

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
