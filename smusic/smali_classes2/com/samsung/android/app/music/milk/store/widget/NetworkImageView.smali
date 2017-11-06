.class public Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;
.super Landroid/support/v7/widget/AppCompatImageView;
.source "NetworkImageView.java"


# static fields
.field private static final FADE_IN_DURATION:I = 0x1f4

.field protected static final INVALID_RES:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String;

.field private static scaleFactor:F


# instance fields
.field protected listener:Lcom/samsung/android/app/music/milk/store/widget/ImageLoadingListener;

.field private final mCallback:Landroid/os/Handler$Callback;

.field private final mImageHandler:Landroid/os/Handler;

.field protected mShowImageOnError:I

.field protected mShowImageOnLoading:I

.field private mTargetHeight:I

.field private mTargetWidth:I

.field private ratioWH:F

.field protected requestedUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->LOG_TAG:Ljava/lang/String;

    .line 28
    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->scaleFactor:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v0, -0x1

    .line 85
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    iput v0, p0, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->mShowImageOnError:I

    .line 32
    iput v0, p0, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->mShowImageOnLoading:I

    .line 38
    new-instance v0, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView$1;-><init>(Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->mCallback:Landroid/os/Handler$Callback;

    .line 68
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->mCallback:Landroid/os/Handler$Callback;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->mImageHandler:Landroid/os/Handler;

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->ratioWH:F

    .line 72
    iput v2, p0, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->mTargetWidth:I

    .line 74
    iput v2, p0, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->mTargetHeight:I

    .line 86
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 87
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method private encodeUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p1, "orgUrl"    # Ljava/lang/String;

    .prologue
    .line 235
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 236
    .local v4, "ori_uri":Landroid/net/Uri;
    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 237
    .local v5, "path":Ljava/lang/String;
    invoke-virtual {v4}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v7

    .line 238
    .local v7, "query":Ljava/lang/String;
    invoke-virtual {v4}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 239
    .local v1, "host":Ljava/lang/String;
    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    .line 241
    .local v8, "scheme":Ljava/lang/String;
    const-string v10, "/"

    invoke-virtual {v5, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 242
    const-string v10, "/"

    invoke-virtual {v5, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 243
    .local v3, "lastIndex":I
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    if-le v10, v3, :cond_0

    .line 244
    const/4 v10, 0x0

    add-int/lit8 v11, v3, 0x1

    invoke-virtual {v5, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 245
    .local v6, "prefix":Ljava/lang/String;
    add-int/lit8 v10, v3, 0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v5, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 247
    .local v2, "last":Ljava/lang/String;
    :try_start_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "UTF-8"

    invoke-static {v2, v11}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 254
    .end local v2    # "last":Ljava/lang/String;
    .end local v3    # "lastIndex":I
    .end local v6    # "prefix":Ljava/lang/String;
    :cond_0
    :goto_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "://"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 255
    .local v9, "url":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 256
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "?"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 259
    :cond_1
    sget-object v10, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "encodeUri : Encoding URI : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    return-object v9

    .line 248
    .end local v9    # "url":Ljava/lang/String;
    .restart local v2    # "last":Ljava/lang/String;
    .restart local v3    # "lastIndex":I
    .restart local v6    # "prefix":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 249
    .local v0, "e1":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method private initialize(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 99
    if-eqz p2, :cond_5

    .line 100
    sget-object v4, Lcom/samsung/android/app/music/R$styleable;->MilkNetworkImageView:[I

    .line 101
    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 102
    .local v0, "array":Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    .line 103
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_0
    if-ge v3, v2, :cond_4

    .line 104
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    .line 105
    .local v1, "attr":I
    if-nez v1, :cond_1

    .line 106
    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->setShowImageOnError(I)V

    .line 103
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 107
    :cond_1
    const/4 v4, 0x1

    if-ne v1, v4, :cond_2

    .line 108
    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->setShowImageOnLoading(I)V

    goto :goto_1

    .line 109
    :cond_2
    const/4 v4, 0x2

    if-ne v1, v4, :cond_3

    .line 110
    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->mTargetWidth:I

    goto :goto_1

    .line 111
    :cond_3
    const/4 v4, 0x3

    if-ne v1, v4, :cond_0

    .line 112
    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->mTargetHeight:I

    goto :goto_1

    .line 115
    .end local v1    # "attr":I
    :cond_4
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 117
    .end local v0    # "array":Landroid/content/res/TypedArray;
    .end local v2    # "count":I
    .end local v3    # "index":I
    :cond_5
    return-void
.end method


# virtual methods
.method protected dispatchLoadingCompleted(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "imageUri"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 168
    return-void
.end method

.method protected dispatchLoadingFailed(Ljava/lang/String;)V
    .locals 2
    .param p1, "imageUri"    # Ljava/lang/String;

    .prologue
    .line 171
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->mShowImageOnError:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 172
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 173
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->mShowImageOnError:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->setImageResource(I)V

    .line 175
    :cond_0
    return-void
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getTargetHeight()I
    .locals 1

    .prologue
    .line 204
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->mTargetHeight:I

    return v0
.end method

.method protected getTargetWidth()I
    .locals 1

    .prologue
    .line 191
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->mTargetWidth:I

    return v0
.end method

.method protected getViewHeight()I
    .locals 1

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->getHeight()I

    move-result v0

    return v0
.end method

.method protected getViewWidth()I
    .locals 1

    .prologue
    .line 208
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->getWidth()I

    move-result v0

    return v0
.end method

.method public loadImage(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 133
    const v0, 0x7f0200db

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->loadImage(Ljava/lang/String;I)V

    .line 134
    return-void
.end method

.method public loadImage(Ljava/lang/String;I)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "defResId"    # I

    .prologue
    .line 137
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->loadImage(Ljava/lang/String;Lcom/samsung/android/app/music/milk/store/widget/ImageLoadingListener;I)V

    .line 138
    return-void
.end method

.method public loadImage(Ljava/lang/String;Lcom/samsung/android/app/music/milk/store/widget/ImageLoadingListener;I)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/samsung/android/app/music/milk/store/widget/ImageLoadingListener;
    .param p3, "defResId"    # I

    .prologue
    .line 178
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->loadImage(Ljava/lang/String;ZLcom/samsung/android/app/music/milk/store/widget/ImageLoadingListener;I)V

    .line 179
    return-void
.end method

.method public loadImage(Ljava/lang/String;ZLcom/samsung/android/app/music/milk/store/widget/ImageLoadingListener;I)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "initDrawable"    # Z
    .param p3, "listener"    # Lcom/samsung/android/app/music/milk/store/widget/ImageLoadingListener;
    .param p4, "defResId"    # I

    .prologue
    const v3, 0x7f0d0061

    .line 142
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 143
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 144
    sget-object v0, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->LOG_TAG:Ljava/lang/String;

    const-string v1, "loadImage : url is null!!"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->mShowImageOnError:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 146
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->mShowImageOnError:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->setImageResource(I)V

    .line 164
    :cond_1
    :goto_0
    return-void

    .line 151
    :cond_2
    sget-object v0, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadImage :  url : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->encodeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 155
    if-eqz p3, :cond_3

    .line 156
    iput-object p3, p0, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->listener:Lcom/samsung/android/app/music/milk/store/widget/ImageLoadingListener;

    .line 157
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->requestedUrl:Ljava/lang/String;

    .line 158
    invoke-static {v3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader;->withDimension(I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;->withFullUri(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->mImageHandler:Landroid/os/Handler;

    .line 159
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;->loadToHandler(Landroid/os/Handler;)V

    goto :goto_0

    .line 161
    :cond_3
    invoke-static {v3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader;->withDimension(I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;->withFullUri(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;

    move-result-object v0

    .line 162
    invoke-virtual {v0, p0, p4}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;->loadToImageView(Landroid/widget/ImageView;I)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 222
    iget v2, p0, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->ratioWH:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1

    .line 223
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 224
    .local v1, "width":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 225
    .local v0, "height":I
    if-lez v1, :cond_0

    .line 226
    int-to-float v2, v1

    iget v3, p0, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->ratioWH:F

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    .line 228
    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->setMeasuredDimension(II)V

    .line 232
    .end local v0    # "height":I
    .end local v1    # "width":I
    :goto_0
    return-void

    .line 230
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/AppCompatImageView;->onMeasure(II)V

    goto :goto_0
.end method

.method public setDimensRatio(F)V
    .locals 0
    .param p1, "ratioWH"    # F

    .prologue
    .line 216
    iput p1, p0, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->ratioWH:F

    .line 217
    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 0
    .param p1, "scaleType"    # Landroid/widget/ImageView$ScaleType;

    .prologue
    .line 95
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 96
    return-void
.end method

.method public setShowImageOnError(I)V
    .locals 0
    .param p1, "resource"    # I

    .prologue
    .line 125
    iput p1, p0, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->mShowImageOnError:I

    .line 126
    return-void
.end method

.method public setShowImageOnLoading(I)V
    .locals 0
    .param p1, "resource"    # I

    .prologue
    .line 129
    iput p1, p0, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->mShowImageOnLoading:I

    .line 130
    return-void
.end method
