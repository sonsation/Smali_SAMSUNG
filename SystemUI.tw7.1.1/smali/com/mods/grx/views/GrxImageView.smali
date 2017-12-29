.class public Lcom/mods/grx/views/GrxImageView;
.super Landroid/widget/ImageView;
.source "GrxImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mods/grx/views/GrxImageView$ImageLoader;
    }
.end annotation


# instance fields
.field private key_applybg:Ljava/lang/String;

.field private key_bg_color:Ljava/lang/String;

.field private key_blur:Ljava/lang/String;

.field private key_img_uri_string:Ljava/lang/String;

.field private key_opacity:Ljava/lang/String;

.field private key_quality:Ljava/lang/String;

.field private key_tint:Ljava/lang/String;

.field private mBgColor:I

.field private mBlurRadius:F

.field mDebug:Z

.field private mDownScaleFactor:F

.field private mImageUriS:Ljava/lang/String;

.field private mOpacity:I

.field private mTintColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mods/grx/views/GrxImageView;->mDebug:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/mods/grx/views/GrxImageView;->mImageUriS:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$100(Lcom/mods/grx/views/GrxImageView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mods/grx/views/GrxImageView;->mImageUriS:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mods/grx/views/GrxImageView;)F
    .locals 1

    iget v0, p0, Lcom/mods/grx/views/GrxImageView;->mBlurRadius:F

    return v0
.end method

.method static synthetic access$300(Lcom/mods/grx/views/GrxImageView;)F
    .locals 1

    iget v0, p0, Lcom/mods/grx/views/GrxImageView;->mDownScaleFactor:F

    return v0
.end method

.method static synthetic access$400(Lcom/mods/grx/views/GrxImageView;)I
    .locals 1

    iget v0, p0, Lcom/mods/grx/views/GrxImageView;->mOpacity:I

    return v0
.end method

.method static synthetic access$500(Lcom/mods/grx/views/GrxImageView;)I
    .locals 1

    iget v0, p0, Lcom/mods/grx/views/GrxImageView;->mTintColor:I

    return v0
.end method

.method static synthetic access$600(Lcom/mods/grx/views/GrxImageView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mods/grx/views/GrxImageView;->show_toast(Ljava/lang/String;)V

    return-void
.end method

.method private show_toast(Ljava/lang/String;)V
    .locals 2

    return-void

    invoke-virtual {p0}, Lcom/mods/grx/views/GrxImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    return-void
.end method

.method public read_user_preferences()V
    .locals 7

    const/16 v6, 0x64

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/mods/grx/views/GrxImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/mods/grx/views/GrxImageView;->key_applybg:Ljava/lang/String;

    invoke-static {v0, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mods/grx/views/GrxImageView;->key_bg_color:Ljava/lang/String;

    invoke-static {v0, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/mods/grx/views/GrxImageView;->mBgColor:I

    iget v2, p0, Lcom/mods/grx/views/GrxImageView;->mBgColor:I

    invoke-virtual {p0, v2}, Lcom/mods/grx/views/GrxImageView;->setBackgroundColor(I)V

    iget-object v2, p0, Lcom/mods/grx/views/GrxImageView;->key_img_uri_string:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mods/grx/views/GrxImageView;->mImageUriS:Ljava/lang/String;

    iget-object v2, p0, Lcom/mods/grx/views/GrxImageView;->key_blur:Ljava/lang/String;

    invoke-static {v0, v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/mods/grx/views/GrxImageView;->mBlurRadius:F

    iget-object v2, p0, Lcom/mods/grx/views/GrxImageView;->key_quality:Ljava/lang/String;

    invoke-static {v0, v2, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    iput v2, p0, Lcom/mods/grx/views/GrxImageView;->mDownScaleFactor:F

    iget-object v2, p0, Lcom/mods/grx/views/GrxImageView;->key_tint:Ljava/lang/String;

    invoke-static {v0, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/mods/grx/views/GrxImageView;->mTintColor:I

    iget-object v2, p0, Lcom/mods/grx/views/GrxImageView;->key_opacity:Ljava/lang/String;

    invoke-static {v0, v2, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    int-to-float v2, v2

    const v3, 0x40233333    # 2.55f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/mods/grx/views/GrxImageView;->mOpacity:I

    new-instance v1, Lcom/mods/grx/views/GrxImageView$ImageLoader;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/mods/grx/views/GrxImageView$ImageLoader;-><init>(Lcom/mods/grx/views/GrxImageView;Lcom/mods/grx/views/GrxImageView$1;)V

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mods/grx/views/GrxImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lcom/mods/grx/views/GrxImageView$ImageLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void

    :cond_0
    const v2, 0x0

    invoke-virtual {p0, v2}, Lcom/mods/grx/views/GrxImageView;->setBackgroundColor(I)V

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/mods/grx/views/GrxImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public set_up_view(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mods/grx/views/GrxImageView;->key_bg_color:Ljava/lang/String;

    iput-object p2, p0, Lcom/mods/grx/views/GrxImageView;->key_img_uri_string:Ljava/lang/String;

    iput-object p3, p0, Lcom/mods/grx/views/GrxImageView;->key_blur:Ljava/lang/String;

    iput-object p4, p0, Lcom/mods/grx/views/GrxImageView;->key_quality:Ljava/lang/String;

    iput-object p5, p0, Lcom/mods/grx/views/GrxImageView;->key_tint:Ljava/lang/String;

    iput-object p6, p0, Lcom/mods/grx/views/GrxImageView;->key_opacity:Ljava/lang/String;

    iput-object p7, p0, Lcom/mods/grx/views/GrxImageView;->key_applybg:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/mods/grx/views/GrxImageView;->read_user_preferences()V

    return-void
.end method
